local genEmmy = {}

local util = require("generator.util")

--default lines to add at file start
local emmyDefaultLines = [[
--- @meta

--- @class Quat
Quat = {}

--- @class ControllerButtons
ControllerButtons = {}
]]

--add to sever file after default lines
local emmyDefaultLinesServer = [[
--- @class Script
--- @field component Component
script = {}

-- Called on script instance initialization. Usually after changing `.instance` or `.file` property
function script:Attach() end

-- Called on script release. Usually on object destruction or to release old script instance during change of `.instance` or `.file` property
function script:Detach() end

-- Called once before the first Update
function script:Start() end

-- Called if updates are enabled (they are enabled automatically if attached script has this method). dt is frame time delta in seconds and t is application time in seconds.
--- @param dt number delta time since last update
--- @param t number total time passed
function script:Update(dt, t) end


--- @class Server
Server = {}

-- Returns a table of connected client IDs i.e. `{0,1,2,5}`
--- @return table
function Server:GetClients() end

-- Send message to client 
--- @param clientID integer client id i.e from `Server:GetClients()`
--- @param messages table data to send table may contain primitive math classes such as `Quat`, `Vec3` etc  
--- @return nil
function Server:SendMessages(clientID, messages) end

--- @return table
function Server:ReceiveMessages() end
]]

function genEmmy:createFile()
    local file = io.open("generator\\emmyApi\\apiEmmyLua.lua", "w")
    file:write(emmyDefaultLines, "\n")
    return file
end

--generate emmy annotation for one class
function genEmmy:generateEmmyLua(file, name, intro, finalMethods, finalProperties)
    local className = util:firstToUpper(name)

    --write class documentation
    local hasClassDocumentation = #intro > 5 
    if (hasClassDocumentation) then
        file:write("--[[", "\n")
        for i = 5, #intro do
            local line = intro[i]
            --title= not supported, strip out
            local  hasTitle = string.find(line, "```lua title=")
            if (hasTitle) then line = "```lua" end
            line = line:gsub("bool", "boolean")
            file:write(line, "\n")
        end
        --not correct if using /internal classes
        local url = "http://docs.atomontage.com/api/"..className
        file:write("[View Documentation]("..url..")", "\n")
        file:write("]]", "\n")
    end

    file:write("--- @class "..className, "\n")
    
    --props
    for i, prop in ipairs(finalProperties) do
        local header = prop.entry[1]
        --### Vec3 position {#Vec3-position}
        local  _, _, returnType, name = string.find(header, "### (%w+)%s(%S+)%s*")
        returnType = self:convertToEmmyLuaType(returnType)
        file:write("--- @field "..name.." "..returnType, "\n")
    end
    file:write(className.." = {}", "\n\n")

    --methods
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header = lines[1]
        local  _, _, returnType, name, paramsStr = string.find(header, "### (%w*)%s?(%S*)%((.*)%).+")
        local params = {}
        for word in string.gmatch(paramsStr, '([^,%s]+)') do
            table.insert(params, word)
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
            local uri = "http://docs.atomontage.com/api/"..className..headingId
            file:write("[View Documentation]("..uri..")", "\n")
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
        for i, paramType in ipairs(params) do
            local paramName = "p"..i --names are missing
            table.insert(paramNames, paramName)
            paramType = self:convertToEmmyLuaType(paramType)
            -- @param name type info
            file:write("--- @param "..paramName.." "..paramType, "\n")
        end
        local paramNamesStr = table.concat(paramNames, ", ") 
        returnType = self:convertToEmmyLuaType(returnType)
        file:write("--- @return "..returnType, "\n")
        if (isConstructor) then
            file:write("function "..name.."("..paramNamesStr..") end", "\n\n")
        else
            file:write("function "..className..":"..name.."("..paramNamesStr..") end", "\n\n")
        end
    end
    
end

function genEmmy:convertToEmmyLuaType(strType)
    strType = strType:gsub("bool", "boolean")
    strType = strType:gsub("int", "integer")
    strType = strType:gsub("float", "number")
    strType = strType:gsub("double", "number")
    strType = strType:gsub("void", "nil")
    return strType
end


return genEmmy
