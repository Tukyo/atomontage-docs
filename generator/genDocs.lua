
--[[
TODO
* write some intro/getting started thing
* Perhaps some standard format things i.e return table contents, argument cotnent
* make types links? or color if not link? or color everything else
* some copy button?
* server client seperation
* add new methods/props/enums in correct position (after previous)
* categorize stuff into subfolders? (and make gen work wiht it) /internal /editor
]]



local util = require("generator.util")
local genEmmy = require("generator.genEmmy")
local serpent = require("generator.serpent")
local genDocs = {}

local docsLocation = "docs\\90-api\\"
local enumsLocation = "docs\\90-api\\enums\\"

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

local testBindings = {
    ["Classes"] = {
        ["Vec3"] = {
            ["Methods"] = {
                "vec3 ()",
                "vec3 (float, float, float)",
                "vec3 (uint32_t, int32_t, uint32_t)", --test
                "vec3 (float)",
                "vec4 __mul (Mat4, vec3)",
                "vec3 __mul (vec3, float)",
                "vec3 __mul (float, vec3)",
                "vec3 __mul (vec3, vec3)",
                "vec3 __div (vec3, float)",
                "float Dot (vec3, vec3)",
                "vec3 Lerp (vec3, vec3, float)",
                "vec3 Mix (vec3, vec3, float)",
                "void Normalize (vec3)",
                "vec3 GetNormalized (vec3)",
                "void Clamp (vec3, float, float)",
                "float Length (vec3)"
            },
            ["Properties"] = {
                "float x",
                "float y",
                "float z",
                "vec3 zero",
                "vec3 up",
                "vec3 right",
                "vec3 forward",
                "float length",
                "vec3 normalized",
            }
        },
        ["Client"] = {
            ["Methods"] = {
                "void SendMessage (basic_table_core<0,classsol::basic_reference<0> >)",
                "void SendMessages (basic_table_core<0,classsol::basic_reference<0> >)",
                "basic_table_core<0,classsol::basic_reference<0> > ReceiveMessages (this_state)",
                "string UIItemUpdate (uint32_t, UIItem, basic_object<classsol::basic_reference<0> >)",
                "void OpenKeyboardShortcutInput (string key)",
                "void ToggleUICreatorWindow ()",
                "Camera GetCamera ()",
                "bool IsClient ()",
                "bool IsServer ()",
            }
        },
        ["Camera"] = {
            ["Methods"] = {
                "Camera (string)",
                "Transformation GetTransformation (Object3D)",
                "void SetTransformation (Transformation)",
            },
            ["Properties"] = {
                "Transformation transformation",
                "Transformation transform"
            }
        }
    },
    ["Enums"] = {
        ["AttachmentFlags"] ={
            [2] = "Depth",
            [4] = "DepthAndStencil",
            [8] = "Color0",
        },
        ["BlendFactor"] = {
            "Zero",
            "SrcColor",
            "DstColor",
            "OneMinusDstColor",
            "SrcAlpha",
            "OneMinusSrcAlpha",
            "DstAlpha",
            "OneMinusDstAlpha",
        }
    }
}

--_BindingsServer = testBindings



local fileEmmyLua = genEmmy:createFile()

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
    local show = {
        ["Quat"] = true,
        ["quat"] = true,
        ["V2i"] = true,
        ["V3i"] = true,
        ["V2f"] = true,
        ["V3f"] = true,
        ["V4f"] = true,
        ["vec2"] = true,
        ["vec3"] = true,
        ["vec4"] = true,
        ["Camera"] = true,
        ["Config"] = true,
        ["ConfigMap"] = true,
        ["Component"] = true,
        ["Client"] = true,
        ["Input"] = true,
        ["Material"] = true,
        ["MeshData"] = true,
        ["MeshDataBuilder"] = true,
        ["MeshRender"] = true,
        ["Object"] = true,
        ["Scene"] = true,
        ["ScriptComponent"] = true,
        ["Studio"] = true,
        ["Transform"] = true,
        ["Transformation"] = true,
        ["VoxelDB"] = true,
        ["VoxelData"] = true,
        ["VoxelRender"] = true,
        ["Angle"] = true,
        ["Mat4"] = true,
        ["Frustum"] = true,
        ["Object3D"] = true,
        ["LightingUpdate"] = true,
        ["RealtimeLightingInfo"] = true,
        ["UIItem"] = true,
        ["VoxelInspectData"] = true,
        ["Rotation"] = true,
        ["CommandLine"] = true,
        ["ResourceReference"] = true,
        ["Matrix4f"] = true,
        ["AssetManager"] = true,
        ["Server"] = true,
        ["FilePath"] = true,
        ["Matrix3f"] = true,
        ["ResResource"] = true,
        ["ConnectionInfo"] = true,
        ["NetworkStat"] = true,
        ["AmStreamingStats"] = true,
        --[[
        ["AmStreamingStatsTotal"] = true,
        ["AmStreamingStatsStatPerFrame"] = true,
        ["AmStreamingStatsStatPerInterval"] = true,
        ["AmStreamingStatsStatPerMessage"] = true,
        ["AmStreamingStatsSlot"] = true,
        ]]
        ["ClientConnectionInfo"] = true,
        ["ServerConnectionInfo"] = true,
    }

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
                name = genEmmy:cleanUpClassName(name)
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
        if value then
            os.remove(docsLocation..key..".mdx")
            print("Old class file:", key..".mdx, deleted")
        end
    end
    for key, value in pairs(fileNamesEnums) do
        if value then
            os.remove(enumsLocation..key..".mdx")
            print("Old class file:", key..".mdx, deleted")
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
            if not wroteMethods then
                local isMetamethod = lines[1]:find("__")
                local isConstructor = lines[1]:find(constructorStrPart, 1, true)
                if not wroteConstructors and isConstructor then
                    file:write("## List of Constructors", "\n\n")
                    wroteConstructors = true
                end
                if not wroteMetamethods and isMetamethod then
                    file:write("## List of Metamethods", "\n\n")
                    wroteMetamethods = true
                end
                if not wroteMethods and not (isConstructor or isMetamethod) then
                    file:write("## List of Methods", "\n\n")
                    wroteMethods = true
                end
            end
            for i, line in ipairs(lines) do
                file:write(line, "\n")
            end
        end
    end
    if (class.Properties) then
        file:write("## List of Properties", "\n\n")
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
        "---"
    }
    local str = table.concat(frontMatter, "\n") .. "\n\n"
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
        if util:stringStartsWith(line, "### ") then
            addEntry(line)
        end
        --group by sections
        if util:stringStartsWith(line, "## ") then
            addEntry(line)
            if util:stringStartsWith(line, "## List of Constructors") 
                or util:stringStartsWith(line, "## List of Metamethods") 
                or util:stringStartsWith(line, "## List of Methods") 
            then
                currentGroup = methods
            elseif (util:stringStartsWith(line, "## List of Properties")) then
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

function genDocs:generateHeading(name)
    local name = genDocs:cleanUpName(name)
    local id = genDocs:getHeadingID(name)

    --add link if this is a class
    --[[
    name = name:gsub("%(?(%S+)", function(word) 
        print(word, _Bindings.Classes[word])
        if _Bindings.Classes[word] then
            word = "["..word.."](.\\"..word..".mdx)" 
            print(word)
        end
        return word
    end)
    ]]

    return "### "..name.." {#"..id.."}"
end

function genEmmy:cleanUpClassName(name)
    name = name:gsub("v2i", "vec2i")
    name = name:gsub("v3i", "vec3i")
    name = name:gsub("v4i", "vec4i")
    name = name:gsub("v2f", "vec2")
    name = name:gsub("v3f", "vec3")
    name = name:gsub("v4f", "vec4")
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
        {"uint8_t", "int"},
        {"uint16_t", "int"},
        {"uint32_t", "int"},
        {"uint64_t", "int"},
        {"int16_t", "int"},
        {"int32_t", "int"},
        {"int64_t", "int"},
        {"basic_table_core<0,classsol::basic_reference<0> >", "table"},
        {"basic_object<classsol::basic_reference<0> >", "userdata"}, --??this could be many things
        {"shared_ptr<classae::scene::Object>", "Object"},
        {tableObjects, "table"},--table of Objects
        {tableObjects2, "table"},
        {"shared_ptr<structae::scene::LuaVoxelDB>", "VoxelDB"},
        {"shared_ptr<classae::lighting::LightingUpdate>", "LightingUpdate"},
        {"shared_ptr<classae::scene::SystemTransform>", "userdata"}, --??? no idea what this is
        {"shared_ptr<classae::scene::SystemMeshRender>", "MeshRender"},
        {"shared_ptr<classae::scene::SystemMeshData>", "MeshData"},
        
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
        {"quat", "Quat"},
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
    }

    --name = name:gsub("(%S+),?", replacments)
    for i, repl in ipairs(replacements) do
        name = name:gsub(repl[1], repl[2])
    end
    
    name = name:gsub(" %(", "(") --remove space beofre bracket opening
    name = name:gsub(", this_state%)", ")") --remove this_state
    name = name:gsub("%(this_state%)", "()") --remove this_state
    
    return name
end

return genDocs