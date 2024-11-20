
--[[
TODO
* write some intro/getting started thing
* Perhaps some standard format things i.e return table contents, argument cotnent
* make types links? or color if not link? or color everything else
* some copy button?
* categorize stuff into subfolders? (and make gen work wiht it) /internal /editor
]]



local util = require("generator.util")
local genEmmy = require("generator.genEmmy")
local serpent = require("generator.serpent")
local genDocs = {}

local docsLocation = "docs\\api\\"
local enumsLocation = "docs\\api\\enums\\"

local f = io.open("generator/bindingDumpServer.txt", "r")
local bindingsSerialized = f:read("*all")
f:close()

local fun, err = load(bindingsSerialized)
if err then error(err) end
local _BindingsServer = fun()

local f = io.open("generator/bindingDumpClient.txt", "r")
local bindingsSerialized = f:read("*all")
f:close()

local fun, err = load(bindingsSerialized)
if err then error(err) end
local _BindingsClient = fun()


local fileEmmyLua = genEmmy:createFile(_BindingsServer, _BindingsClient)

function genDocs:gen()
    --make directory
    os.execute( "mkdir "..docsLocation )
    os.execute( "mkdir "..enumsLocation )

    --make category_.json
    local filename = docsLocation.."_category_.json"
    local file = io.open(filename, "w")
    file:write('{ "label": "API", "collapsed": false }')
    file:close()

    local filename = enumsLocation.."_category_.json"
    local file = io.open(filename, "w")
    file:write('{ "label": "Enums", "position": 1 }')
    file:close()

    --get all files
    local filesClasses = util:getFiles(docsLocation)
    local filesEnums = util:getFiles(enumsLocation)
    local fileNamesClasses = {}
    local fileNamesEnums = {}
    for i, k in ipairs(filesClasses) do
        local  _, _, className = string.find(k, "(.+).mdx")
        if className  then
            fileNamesClasses[className] = true
        end
    end
    for i, k in ipairs(filesEnums) do
        local  _, _, className = string.find(k, "(.+).mdx")
        if className  then
            fileNamesEnums[className] = true
        end
    end

    --filter out all the other weird stuff
    local classNames = {
        "Quat",
        "quat",
        "Quatf",
        "V2i",
        "V3i",
        "V2f",
        "V3f",
        "V4f",
        "vec2",
        "vec3",
        "vec4",
        "Vec2i",
        "Vec3i",
        "Vec4i",
        "Vec2f",
        "Vec3f",
        "Vec4f",
        "Camera",
        "Config",
        "ConfigMap",
        "Component",
        "Client",
        "Input",
        "Material",
        "MeshData",
        "MeshDataBuilder",
        "MeshRenderer",
        "Object",
        "Scene",
        "Script",
        "ScriptInstance",
        "Studio",
        "Transform",
        "Transformation",
        "VoxelDB",
        "VoxelData",
        "VoxelRenderer",
        "Angle",
        "Frustum",
        "Object3D",
        "LightingUpdate",
        "RealtimeLightingInfo",
        "UIItem",
        "VoxelInspectData",
        "Rotation",
        "CommandLine",
        "ResourceReference",
        "Matrix3f", --do we really need those in lua?
        "Matrix4f",
        "Mat3f",
        "Mat4f",
        "Mat3", 
        "Mat4",
        "AssetManager",
        "Server",
        "FilePath",
        "ResResource",
        "ConnectionInfo",
        "NetworkStat",
        "VoxelInspectComponent",
        "MontageComponent",
        "StaticVoxelData",
        "Sky",
        "NativeComponent",
        "VoxelDataResource",
        "VoxelEdit", 
        "Filter", 
        "Shape",
        "Box", 
        "Sphere", 
        "Capsule", 
        "Cylinder",
        "Polygon",
        "Collision", 
        "Hit", 
        "HitType",
        "Overlap",
        "File",
        "Gamepad",
        "Image",
        "VVCollision",
        "AudioSource",
        "AudioMusic",
        "Polyhedron",
        "Effect",
        "Sound",
        "Asset",
        "FilePath",
    }

    local show = {}
    for index, name in ipairs(classNames) do
        show[name] = true
    end

    --find out whats on client and server
    local classLocations = {}
    for k in pairs(_BindingsServer.Classes) do 
        classLocations[k] = {client=false, server=true}
    end
    for k in pairs(_BindingsClient.Classes) do 
        if (classLocations[k]) then 
            classLocations[k] = {client=true, server=true}
        else
            classLocations[k] = {client=true, server=false}
        end
    end

    --itterate sorted by ABC for emmy order
    local tkeys = {}
    for k in pairs(classLocations) do table.insert(tkeys, k) end
    table.sort(tkeys)
    for _, nameOrig in ipairs(tkeys) do
        local serverClass = _BindingsServer.Classes[nameOrig]
        local clientClass = _BindingsClient.Classes[nameOrig]
        local class = serverClass or clientClass
        if serverClass and clientClass then
            --TODO doesnt pass in both classes so if they are different something is missing, so warning here for now
            local sm = serverClass.Methods and #serverClass.Methods or 0
            local cm = clientClass.Methods and #clientClass.Methods or 0
            local sp = serverClass.Properties and #serverClass.Properties or 0
            local cp = clientClass.Properties and #clientClass.Properties or 0
            assert(sm == cm and sp == cp, nameOrig..": Server/Client is different")
        end
        if (show[nameOrig]) then
            local name = util:firstToLower(nameOrig)
            --name = name:gsub("::", " ") --remove this?
            if not string.find(name, "::") then --just skip these weird internal things for now
                local location = classLocations[nameOrig]
                name = genDocs:cleanUpClassName(name)
                fileNamesClasses[name] = nil
                genDocs:generateClassFile(name, class, location.client, location.server)
            end
        end
    end

    --itterate sorted by ABC
    local tkeys = {}
    for k in pairs(_BindingsServer.Enums) do table.insert(tkeys, k) end
    table.sort(tkeys)
    for _, name in ipairs(tkeys) do
        local values = _BindingsServer.Enums[name]
        local name = util:firstToLower(name)
        --name = name:gsub("::", " ") --remove this?
        if not string.find(name, "::") then --just skip these weird internal things for now
            fileNamesEnums[name] = nil
            genDocs:generateEnumFile(name, values)
        end
    end

    for key, value in pairs(fileNamesClasses) do
        --skip files starting with number(s) and dash i.e 1-intro
        if value and not key:find("%d+%-") then
            --os.remove(docsLocation..key..".mdx") --dont del, there is doc in there 
            print("Old class file:", key..".mdx")
        end
    end
    for key, value in pairs(fileNamesEnums) do
        if value then
            os.remove(enumsLocation..key..".mdx")
            print("Old enum file:", key..".mdx, deleted")
        end
    end

    fileEmmyLua:close()
end

function genDocs:generateClassFile(name, class, onClient, onServer)
    local filename = docsLocation..name..".mdx"
    if (not util:file_exists(filename)) then
        local fileW = io.open(filename, "w") --add the file if it was missing
        genDocs:addFrontMatter(name, fileW)
        fileW:close()
    end

    --get current sections
    local intro, currentMethods, currentProperties = self:getSections(filename)
    local finalMethods = self:getFinalEntries(currentMethods, class.Methods, name)
    local finalProperties = self:getFinalEntries(currentProperties, class.Properties, name)

    --TODO if adding new class auto generated info is not there yet and not included in emmy file
    --use final entries for emmy generator
    genEmmy:generateEmmyLua(fileEmmyLua, name, intro, finalMethods, finalProperties)
    
    --write to file
    local file = io.open(filename, "w")
    
    --write intro
    for i, line in ipairs(intro) do
        --add client/server info on line 5
        if i==5 then
            if (onClient) then
                file:write("`Client`", "\n")
            end
            if (onServer) then
                file:write("`Server`", "\n")
            end
        end
        
        --dont write client/server again
        if not (string.find(line, "`Client`") or string.find(line, "`Server`")) then
            file:write(line, "\n")
        end
    end
    
    local constructorStrPart = "## "..util:firstToUpper(name).."("
    local wroteMetamethods = false
    local wroteConstructors = false
    local wroteMethods = false
    if (class.Methods) then
        for i, v in ipairs(finalMethods) do
            local lines = v.entry
            --make all kinds of function type headers
            local isMetamethod = lines[1]:find("__")
            local isConstructor = lines[1]:find(constructorStrPart, 1, true)
            --TODO to order of bindings determines the order of headings, maybe sort
            if not wroteConstructors and isConstructor then
                file:write("## Constructors", "\n\n")
                wroteConstructors = true
            elseif not wroteMetamethods and isMetamethod then
                file:write("## Metamethods", "\n\n")
                wroteMetamethods = true
            elseif not wroteMethods and not (isConstructor or isMetamethod) then
                file:write("## Methods", "\n\n")
                wroteMethods = true
            end
            for i, line in ipairs(lines) do
                file:write(line, "\n")
            end
        end
    end
    if (class.Properties) then
        file:write("## Properties", "\n\n")
        for i, v in ipairs(finalProperties) do
            local lines = v.entry
            for i, line in ipairs(lines) do
                file:write(line, "\n")
            end
        end
    end

    file:close()
end


--return final entries from current entires and new entries 
function genDocs:getFinalEntries(currentEntries, newEntries, name)
    local finalEntries = {}
    newEntries = newEntries or {}

    local currentEntiesKeys = {}
    
    --get values, conert to this table
    local updatedMethods = {}
    for i, val in ipairs(newEntries) do
        local name = genDocs:generateHeading(val)
        updatedMethods[name] = true
    end

    --readd current rows in same order if still existing 
    local i=1
    while i <= #currentEntries do
        local methodInfo = currentEntries[i]
        local name = methodInfo.entry[1] 
        if updatedMethods[name] ~= nil then
            local info = methodInfo
            local hasDocumentation = util:hasDocumentation(info.entry)
            --ignore without docs cause that would set incorrect info in currentEntiesKeys for duplicate bindings 
            if hasDocumentation then
                updatedMethods[name] = false --not nil cause there can be duplicates
                table.remove(currentEntries, i)
                currentEntiesKeys[name] = info
            else
                i = i + 1
            end
        else
            i = i + 1
        end
    end

    --highlight remaining tableElements as deleted or jsut delete if no info
    for i, methodInfo in ipairs(currentEntries) do
        local lines = methodInfo.entry
        local header = lines[1]
        local hasDocumentation = util:hasDocumentation(lines)
        if (not hasDocumentation) then
            --print(name, header.." is old, deleted")
        else
            print(name, header.." is old but has documentation, delete manually")
            table.insert(finalEntries, methodInfo)
        end
    end

    --add remaing (new) updatedRows in correct order (sorted by keys order)
    local tkeys = {}
    for k in ipairs(newEntries) do table.insert(tkeys, k) end
    table.sort(tkeys)
    for _, k in ipairs(tkeys) do
        local v = newEntries[k]
        local header = genDocs:generateHeading(v)
        if (updatedMethods[header]) then
            local entry = {header , ""}
            table.insert(finalEntries, {entry = entry})
        else
            local info = currentEntiesKeys[header]
            table.insert(finalEntries, info)
        end
    end

    return finalEntries
end

function genDocs:generateEnumFile(name, values)
    local filename = enumsLocation..name..".mdx"
    if (not util:file_exists(filename)) then
        local fileW = io.open(filename, "w") --add the file if it was missing
        genDocs:addFrontMatter(name, fileW)
        fileW:close()
    end
    --get current written values
    local intro, currentRows = genDocs:getMDTable(filename)
    local finalRows = {}

    --get values, conert to this table
    local updatedRowsKeys = {}
    for i, val in pairs(values) do
        updatedRowsKeys[val] = true
    end

    --readd current rows in same order if still existing 
    local i=1
    while i <= #currentRows do
        local row = currentRows[i]
        local rowEnum = row[1] 
        if updatedRowsKeys[rowEnum] then
            updatedRowsKeys[rowEnum] = nil
            table.remove(currentRows, i)
            local info = row
            table.insert(finalRows, info)
        else
            i = i + 1
        end
    end

    --highlight remaining tableElements as deleted or jsut delete if no info
    for i, row in ipairs(currentRows) do
        local rowTitle = row[1]
        local rowDesc = row[2]
        if (rowDesc == "") then
            print(name, rowTitle.." is old, deleted")
        else
            print(name, rowTitle.." is old but has documentation, delete manually")
            table.insert(finalRows, row)
        end
    end

    --add remaing (new) updatedRows in correct order (sorted by keys)
    local tkeys = {}
    for k in pairs(values) do table.insert(tkeys, k) end
    table.sort(tkeys)
    for _, k in ipairs(tkeys) do
        local v = values[k]
        if (updatedRowsKeys[v]) then
            local info = {v, ""}
            table.insert(finalRows, info)
        end
    end

    --use final entries for emmy generator
    genEmmy:addEnum(fileEmmyLua, name, intro, finalRows)

    --write all lines
    local file = io.open(filename, "w")
    for i, line in ipairs(intro) do
        file:write(line, "\n")
    end

    file:write("## Properties\n\n")

    file:write("| Name | Description |", "\n")
    file:write("| - | - |", "\n")
    for i,info in ipairs(finalRows) do
        file:write("| ",info[1]," | ",info[2]," |", "\n")
    end

    file:close()
end


--https://docusaurus.io/docs/api/plugins/@docusaurus/plugin-content-docs#markdown-frontmatter
function genDocs:addFrontMatter(filename, fileWrite)
    local title = util:firstToUpper(filename)
    local id = util:firstToUpper(filename)
    local frontMatter = {
        "---",
        "title: "..title,
        "id: "..id,
        "---",
        "\n"
    }
    local str = table.concat(frontMatter, "\n")
    fileWrite:write(str)
end

--get markdown table and other stuff in document
function genDocs:getMDTable(filename)
    local intro = {}
    local mdTable = {}

    local addingIntro = true
    local addingTable = false

    local lines = util:getLines(filename)
    for i,line in ipairs(lines) do
        --group by headers
        if util:stringStartsWith(line, "## ") then
            addingIntro = false
        elseif util:stringStartsWith(line, "| - | - |") then
            addingTable = true
        else
            if addingIntro then
                table.insert(intro, line)                
            elseif addingTable then
                --| Name | Desc |
                --two words between these brackets with optional spaces
                local  _, _, key, desc = string.find(line, "|%s*(%S-)%s*|%s*(.-)%s*|")
                assert(key, "key on line: '"..line.."' not found. Does the table rows match this format? | NameNoSpace | Desc about name |")
                local info = {key, desc}
                table.insert(mdTable, info)                
            end
        end
    end

    return intro, mdTable
end

--class file sections with header body pairs
function genDocs:getSections(filename)
    local intro = {}
    local methods = {}
    local properties = {}
    local currentGroup = intro

    local entryName
    local entry = currentGroup --first is just one entry
    local lines = util:getLines(filename)

    local function addEntry(line)
        if entryName then
            table.insert(currentGroup, {entry = entry})
        end
        entryName = line
        entry = {}
    end

    for i,line in ipairs(lines) do
        --group by headers
        if currentGroup ~= entry and util:stringStartsWith(line, "### ") then
            addEntry(line)
        end
        --group by sections
        if util:stringStartsWith(line, "## ") then
            addEntry(line)
            if util:stringStartsWith(line, "## Constructors") 
                or util:stringStartsWith(line, "## Metamethods") 
                or util:stringStartsWith(line, "## Methods") 
            then
                currentGroup = methods
            elseif (util:stringStartsWith(line, "## Properties")) then
                currentGroup = properties
            end
            
            --dont add entry for this header line
            entryName = nil
            entry = {}
        else
            table.insert(entry, line)
        end
    end
    --add last entry
    addEntry(nil)
    return intro, methods, properties
end

function genDocs:generateHeading(header)
    local header = genDocs:cleanUpName(header)
    local id = genDocs:getHeadingID(header)

    --add link if this is a class
    --[[
    headers = header:gsub("%(?(%S+)", function(word) 
        print(word, _Bindings.Classes[word])
        if _Bindings.Classes[word] then
            word = "["..word.."](.\\"..word..".mdx)" 
            print(word)
        end
        return word
    end)
    ]]

    return "### "..header.." {#"..id.."}"
end

function genDocs:cleanUpClassName(name)
    name = name:gsub("v2i", "vec2i")
    name = name:gsub("v3i", "vec3i")
    name = name:gsub("v4i", "vec4i")
    name = name:gsub("v2f", "vec2")
    name = name:gsub("v3f", "vec3")
    name = name:gsub("v4f", "vec4")
    name = name:gsub("vec2f", "vec2")
    name = name:gsub("vec3f", "vec3")
    name = name:gsub("vec4f", "vec4")
    name = name:gsub("mat3f", "mat3")
    name = name:gsub("mat4f", "mat4")
    name = name:gsub("quatf", "quat")

    name = name:gsub("configMap", "config")
    return name
end

-- i.e. Angle(float, float) -> {#Angle-float-float}
function genDocs:getHeadingID(heading)
    heading = heading:gsub("[(]", " ") --space instead of opening braket
    heading = heading:gsub("[%c%p]", "") --remove control chasrs
    heading = heading:gsub("^%s*(.-)%s*$", "%1") --trim
    heading = heading:gsub("%s+", "-") --replace spaces with lines
    return heading
end

function genDocs:cleanUpName(name)
    local table = "basic_table_core<0,classsol::basic_reference<0> >"
    local object = "basic_object<classsol::basic_reference<0> >"
    local unordered_map = "unordered_map<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>,classrttr::type,structstd::hash<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,structstd::equal_to<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,classstd::allocator<structstd::pair<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>const,classrttr::type>> >"
    local unordered_set = "unordered_set<classrttr::type,structstd::hash<classrttr::type>,structstd::equal_to<classrttr::type>,classstd::allocator<classrttr::type> >"
    local reference_wrapper = "reference_wrapper<classstd::unordered_map<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>,classrttr::type,structstd::hash<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,structstd::equal_to<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,classstd::allocator<structstd::pair<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>const,classrttr::type>>> >"
    local tableObjects = "vector<classstd::shared_ptr<classae::scene::Object>,classstd::allocator<classstd::shared_ptr<classae::scene::Object>> >"
    local tableObjects2 = "vector<classstd::Object,classstd::allocator<classstd::Object> >"
    local unknown = "unordered_map<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>,classrttr::variant,structstd::hash<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,structstd::equal_to<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,classstd::allocator<structstd::pair<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>const,classrttr::variant>> >"
    local unknown2 = "map<enumae::graphics::IShader::Type,classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>,structstd::less<enumae::graphics::IShader::Type>,classstd::allocator<structstd::pair<enumae::graphics::IShader::Typeconst,classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>> >"
    local u3 = "unordered_map<unsigned__int64,classae::studio::ConnectionInfo,structstd::hash<unsigned__int64>,structstd::equal_to<unsigned__int64>,classstd::allocator<structstd::pair<unsigned__int64const,classae::studio::ConnectionInfo>> >"
    local u4 = "unordered_map<unsigned__int64,classae::studio::NetworkStat,structstd::hash<unsigned__int64>,structstd::equal_to<unsigned__int64>,classstd::allocator<structstd::pair<unsigned__int64const,classae::studio::NetworkStat>> >"
    local u5 = "vector<classae::core::UIItem%*,classstd::allocator<classae::core::UIItem%*> >"
    local u6 = "unordered_map<unsigned__int64,classae::network::ConnectionInfo,structstd::hash<unsigned__int64>,structstd::equal_to<unsigned__int64>,classstd::allocator<structstd::pair<unsigned__int64const,classae::network::ConnectionInfo>> >"
    local u7 = "unordered_map<unsigned__int64,classae::network::NetworkStat,structstd::hash<unsigned__int64>,structstd::equal_to<unsigned__int64>,classstd::allocator<structstd::pair<unsigned__int64const,classae::network::NetworkStat>> >"
    local u8 = "vector<classae::core::EntityPath::Waypoint,classstd::allocator<classae::core::EntityPath::Waypoint> >"
    local u9 = "unordered_map<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>,structae::graphics::Options,structstd::hash<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,structstd::equal_to<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>>,classstd::allocator<structstd::pair<classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>>const,structae::graphics::Options>> >"

    --this works inccorectly finding a match that is too short when there is a longer match
    --TODO sort by key length
    local replacements = {
        {"pair<classae::core::TQuaternion<float>,classTVector3<float> >", "Quat, Vec3"},
        {"tuple<classTVector3<float>,classTVector3<float>,classTVector3<float> >", "Vec3, Vec3, Vec3"},
        {"tuple<classTVector3<float>,classae::core::TQuaternion<float>,classTVector3<float> >", "Vec3, Quat, Vec3"},
        {"tuple<classTVector3<float>,classTVector3<float> >", "Vec3, Vec3"},
        {"tuple<classTVector3<float>,classae::core::TQuaternion<float> >", "Vec3, Quat" },
        {"tuple<bool,classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>> >", "bool, string" },
        {"tuple<classTVector3<float>,classTVector3<float> >", "Vec3, Vec3"}, --this is two
        {"tuple<classsol::basic_table_core<0,classsol::basic_reference<0>>,classsol::basic_table_core<0,classsol::basic_reference<0>> >", "table, table"}, --this is two
        {"tuple<classTVector3<float>,classae::core::TQuaternion<float> >", "Vec3, Quat" }, --this is two
        {"tuple<bool,classstd::basic_string<char,structstd::char_traits<char>,classstd::allocator<char>> >", "bool, string" }, --this is two
        --{"pair<classae::core::TQuaternion<number>,classTVector3<number>", "Quat, Vec3"},
        {"uint64_t", "integer"},
        {"uint32_t", "integer"},
        {"uint16_t", "integer"},
        {"uint8_t", "integer"},
        {"int64_t", "integer"},
        {"int32_t", "integer"},
        {"int16_t", "integer"},
        {"uint64", "integer"},
        {"uint32", "integer"},
        {"uint16", "integer"},
        {"int64", "integer"},
        {"int32", "integer"},
        {"int16", "integer"},
        {"basic_table_core<0,classsol::basic_reference<0> >", "table"},
        {"basic_object<classsol::basic_reference<0> >", "userdata"}, --??this could be many things
        {"shared_ptr<classae::scene::Object>", "Object"},
        {tableObjects, "Object[]"},--table of Objects
        {tableObjects2, "Object[]"},
        {"shared_ptr<structae::scene::LuaVoxelDB>", "VoxelDB"},
        {"shared_ptr<classae::lighting::LightingUpdate>", "LightingUpdate"},
        {"shared_ptr<classae::scene::SystemTransform>", "userdata"}, --??? no idea what this is
        {"shared_ptr<classae::scene::SystemMeshRender>", "MeshRender"},
        {"shared_ptr<classae::scene::SystemMeshData>", "MeshData"},
        {"shared_ptr<classae::scene::MeshData>", "MeshData"},
        {"shared_ptr<classae::scene::VoxelData>", "VoxelData"},
        {"shared_ptr<classae::scene::StaticVoxelData>", "StaticVoxelData"},
        {"shared_ptr<classae::scene::VoxelRenderer>", "VoxelRenderer"},
        {"shared_ptr<classae::scene::MeshRenderer>", "MeshRenderer"},
        {"shared_ptr<classae::scene::Camera>", "Camera"},
        {"shared_ptr<classae::scene::Sky>", "Sky"},
        {"shared_ptr<classae::scene::VoxelDB>", "VoxelDB"},
        {"shared_ptr<classae::scene::VoxelDataResource>", "VoxelDataResource"},
        {"shared_ptr<classae::scene::Transform>", "Transform"},
        {"shared_ptr<classae::audio::AudioSource>", "AudioSource"},
        {"shared_ptr<classae::audio::AudioMusic>", "AudioMusic"},
        
        ---idk what these are??? need better names relevant for lua 
        {unordered_map, "userdata"},
        {unordered_set, "userdata"},
        {reference_wrapper, "userdata"},
        {unknown, "userdata"},
        {unknown2, "userdata"},
        {u3, "userdata"},
        {u4, "userdata"},
        {u5, "userdata"}, --list of UIItems?
        {u6, "userdata"}, 
        {u7, "userdata"}, 
        {u8, "userdata"}, 
        {u9, "userdata"}, 
        {"Res<classae::renderer::Material2>", "userdata"}, ---?? is this material
        {"vector<classae::core::UIItem,classstd::allocator<classae::core::UIItem> >", "userdata"},
        {"vec2", "Vec2"},
        {"vec3", "Vec3"},
        {"vec4", "Vec4"},
        {"V2i", "Vec2i"},
        {"V3i", "Vec3i"},
        {"V4i", "Vec4i"},
        {"V2f", "Vec2"},
        {"V3f", "Vec3"},
        {"V4f", "Vec4"},
        {"Vec2f", "Vec2"},
        {"Vec3f", "Vec3"},
        {"Vec4f", "Vec4"},
        {"Mat3f", "Mat3"},
        {"Mat4f", "Mat4"},
        {"quat", "Quat"},
        {"Quatf", "Quat"},
        {"ConfigMap", "Config"}, --the whole class has wrong name, not fixed by this
        {"Vector_int", "userdata"},
        {"Vector_float", "userdata"},
        {"vec<3,bool,0>", "userdata"},
        {"vector<structae::core::Image::MipMapImage,classstd::allocator<structae::core::Image::MipMapImage> >", "userdata"},
        {"shared_ptr<classae::scene::SystemVoxelData>", "userdata"},
        {"shared_ptr<classae::scene::SystemVoxelRender>", "userdata"},
        {"Vector_Vec3", "userdata"},
        {"shared_ptr<classae::scene::LuaVoxelDB>", "VoxelDB"},
        {"shared_ptr<classae::scene::ScriptComponent>", "ScriptComponent"},
        {"variadic_args", "..."},
        {"shared_ptr<classae::scene::Component>", "Component"},
        {"shared_ptr<classae::scene::LuaShape>", "Shape" }, --various shapes, is Shape ok?
        {"shared_ptr<classae::scene::Filter>", "Filter"},
        {"Res<classae::renderer::Material>", "Material" }, --correct?
        {"shared_ptr<structae::scene::VoxelDataResource>", "VoxelDataResource" },
        {"shared_ptr<classae::scene::CameraComponent>", "CameraComponent"},
        {"shared_ptr<classae::scene::Script>", "Script"},
        {"shared_ptr<classae::studio::FileLua>", "File"},
        {"shared_ptr<classae::core::Image>", "Image" },
        {"classTMatrix4<int>", "Mat4"},
        { "Res<classae::renderer::Effect>", "Effect" },
        {"const char", "string"}, --correct?
        
        --make sure they are last
        {"bool", "boolean"},
        {"%,int%)", ",integer)"},
        {"%(int%)", "(integer)"},
        {"int%,", "integer,"},
        {"float", "number"},
        {"double", "number"},
        {"char", "string"},
        {"void", "nil"},
    }

    --auto find tuple
    --[[
    if string.find(name, "tuple<") then
        local _, _, a, b = string.find(name, "tuple<(%S+)%,(%S+)%s>")
        for i, repl in ipairs(replacements) do
            a = a:gsub(repl[1], repl[2])
        end
        for i, repl in ipairs(replacements) do
            b = b:gsub(repl[1], repl[2])
        end
        print(name,a,b)
    end
    ]]

    --name = name:gsub("(%S+),?", replacments)
    for i, repl in ipairs(replacements) do
        name = name:gsub(repl[1], repl[2])
    end
    
    name = name:gsub(" %(", "(") --remove space beofre bracket opening
    name = name:gsub(", this_state%)", ")") --remove this_state
    name = name:gsub("%(this_state%)", "()") --remove this_state
    name = name:gsub("%(this_state,%s", "(") --remove this_state
    return name
end

return genDocs