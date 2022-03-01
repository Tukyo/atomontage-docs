local genEmmy = {}

local util = require("generator.util")

--[[
mnaully fix all vector names and ConfigMap -> Config

can support generics like this but name param must match class name

--- @generic T: Component
--- @param name `T`|componentType
--- @return T
function Object:GetComponentByType(name) end

--- @generic T: Component
--- @param name `T`|componentType
--- @return T[]
function Object:GetComponentsByType(name) end
]]

--default lines to add at file start
local emmyDefaultLines = [[
--- @meta

--- @generic T: Component
--- @param name `T`|componentType
--- @return T
function Object:GetComponentByType(name) end

--- @generic T: Component
--- @param name `T`|componentType
--- @return T[]
function Object:GetComponentsByType(name) end
]]

function genEmmy:createFile(bindingsServer, bindingsClient)
    local file = io.open("generator\\emmyApi\\apiEmmyLua.lua", "w")
    
    --add component alias
    local comps = util:getAllComponents(bindingsServer)
    table.sort(comps) --sort ABC
    file:write("--- @alias componentType", "\n")
    for i, comp in ipairs(comps) do
        file:write([[---| "']], comp, [['"]], "\n")
    end
    file:write("\n")

    --default lines
    file:write(emmyDefaultLines, "\n")
    
    return file
end

function genEmmy:addEnum(file, name, intro, finalRows)
    local docsPath = "enums/"
    local className = util:firstToUpper(name)
    self:writeClassHeader(file, className, intro, docsPath)
    
    --class table
    file:write(className, " = {", "\n")
    for i,info in ipairs(finalRows) do
        local name = info[1]
        local desc = info[2]
        if desc and desc ~= "" then
            file:write("\t-- ", desc, "\n")
        end 
        file:write("\t", name, " = ", i-1, ",", "\n")
    end
    file:write("}", "\n\n")
end

--generate emmy annotation for one class
function genEmmy:generateEmmyLua(file, name, intro, finalMethods, finalProperties)
    local className = util:firstToUpper(name)
    local docsPath = ""
    self:writeClassHeader(file, className, intro, docsPath)
    
    --props
    for i, prop in ipairs(finalProperties) do
        local header = prop.entry[1]
        --### Vec3 position {#Vec3-position}
        header = header:gsub("const ", "") --for now just remove that
        local  _, _, returnType, name = string.find(header, "### (%S+)%s(%S+)%s*")
        assert(returnType, "err")
        returnType = self:convertToEmmyLuaType(returnType)
        file:write("--- @field ",name," ",returnType, "\n")
    end
    file:write(className," = {}", "\n\n")

    --methods
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header = lines[1]
        header = header:gsub("const ", "") --for now just remove that
        local  _, _, returnType, name, paramsStr = string.find(header, "### (%w*)%s?(%S*)%((.*)%).+")
        local params = {}
        assert(paramsStr, "header contains illegal characters: "..header)
        for word in string.gmatch(paramsStr, '%s?([^,]+)') do
            local  _, _, ptype, name = string.find(word, "(%S*)%s?(%S*)")
            if name == "" then name = nil end
            table.insert(params, {ptype, name})
        end
        
        --write function documentation 
        if (util:hasDocumentation(lines)) then
            file:write("--[[", "\n")
            for i = 2, #lines do
                local line = lines[i]
                --title= not supported, strip out
                local  hasTitle = string.find(line, "```lua title=")
                if (hasTitle) then line = "```lua" end
                line = line:gsub("bool", "boolean")
                file:write(line, "\n")
            end
            local  _, _, headingId = string.find(header, "{(%S*)}")
            local uri = "https://docs.atomontage.com/api/"..className..headingId
            file:write("[View Documentation](",uri,")", "\n")
            file:write("]]", "\n")
        end
        
        --is constructor
        local isConstructor = name == ""
        if isConstructor then
            name = returnType
            returnType = className
        end
        
        --write function
        local paramNames = {}
        for i, info in ipairs(params) do
            local paramType = info[1]
            local paramName = info[2] or ("p"..i) 
            paramType = self:convertToEmmyLuaType(paramType)
            -- @param name type info
            if paramType == "..." then
                --TODO for now just 'any' but might need to support specific type or something like @alias primitives
                paramName = "..."
                file:write("--- @vararg any", "\n")
            else
                file:write("--- @param ",paramName," ",paramType, "\n")
            end
            table.insert(paramNames, paramName)
        end
        local paramNamesStr = table.concat(paramNames, ", ") 
        returnType = self:convertToEmmyLuaType(returnType)
        file:write("--- @return ",returnType, "\n")
        if (isConstructor) then
            file:write("function ",name,"(",paramNamesStr,") end", "\n\n")
        else
            file:write("function ",className,":",name,"(",paramNamesStr,") end", "\n\n")
        end
    end
    
end


function genEmmy:writeClassHeader(file, className, documentation, docsPath)
    --write class documentation
    local hasClassDocumentation = #documentation > 5 
    if (hasClassDocumentation) then
        file:write("--[[", "\n")
        for i = 5, #documentation do
            local line = documentation[i]
            --title= not supported, strip out
            local  hasTitle = string.find(line, "```lua title=")
            if (hasTitle) then line = "```lua" end
            line = line:gsub("bool", "boolean")
            file:write(line, "\n")
        end
        --not correct if using /internal classes
        local url = "https://docs.atomontage.com/api/"..className
        file:write("[View Documentation](",url,")", "\n")
        file:write("]]", "\n")
    end

    file:write("--- @class ",className, "\n")
end

function genEmmy:convertToEmmyLuaType(strType)
    strType = strType:gsub("bool", "boolean")
    strType = strType:gsub("int", "integer")
    strType = strType:gsub("float", "number")
    strType = strType:gsub("double", "number")
    strType = strType:gsub("char", "string")
    strType = strType:gsub("void", "nil")
    return strType
end


return genEmmy
