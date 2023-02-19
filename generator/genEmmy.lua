local genEmmy = {}

local util = require("generator.util")

--[[
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

--- @alias serializableType
---| nil
---| boolean
---| number
---| string
---| Vec2
---| Vec2i
---| Vec3
---| Vec3i
---| Mat4
---| Quat

--- @alias mouseButton
---| 1 # left button
---| 2 # middle button
---| 3 # right button

--https://wiki.libsdl.org/SDL_Keycode
--- @alias keyCode
---| '"0"'
---| '"1"'
---| '"2"'
---| '"3"'
---| '"4"'
---| '"5"'
---| '"6"'
---| '"7"'
---| '"8"'
---| '"9"'
---| '"A"'
---| '"AC Back"' # (the Back key (application control keypad))
---| '"AC Bookmarks"' # (the Bookmarks key (application control keypad))
---| '"AC Forward"' # (the Forward key (application control keypad))
---| '"AC Home"' # (the Home key (application control keypad))
---| '"AC Refresh"' # (the Refresh key (application control keypad))
---| '"AC Search"' # (the Search key (application control keypad))
---| '"AC Stop"' # (the Stop key (application control keypad))
---| '"Again"' # (the Again key (Redo))
---| '"AltErase"' # (Erase-Eaze)
---| '"'"'
---| '"Application"' # (the Application / Compose / Context Menu (Windows) key)
---| '"AudioMute"' # (the Mute volume key)
---| '"AudioNext"' # (the Next Track media key)
---| '"AudioPlay"' # (the Play media key)
---| '"AudioPrev"' # (the Previous Track media key)
---| '"AudioStop"' # (the Stop media key)
---| '"B"'
---| '"\""' # (Located at the lower left of the return key on ISO keyboards and at the right end of the QWERTY row on ANSI keyboards. Produces REVERSE SOLIDUS (backslash) and VERTICAL LINE in a US layout, REVERSE SOLIDUS and VERTICAL LINE in a UK Mac layout, NUMBER SIGN and TILDE in a UK Windows layout, DOLLAR SIGN and POUND SIGN in a Swiss German layout, NUMBER SIGN and APOSTROPHE in a German layout, GRAVE ACCENT and POUND SIGN in a French Mac layout, and ASTERISK and MICRO SIGN in a French Windows layout.)
---| '"Backspace"'
---| '"BrightnessDown"' # (the Brightness Down key)
---| '"BrightnessUp"' # (the Brightness Up key)
---| '"C"'
---| '"Calculator"' # (the Calculator key)
---| '"Cancel"'
---| '"CapsLock"'
---| '"Clear"'
---| '"Clear / Again"'
---| '","'
---| '"Computer"' # (the My Computer key)
---| '"Copy"'
---| '"CrSel"'
---| '"CurrencySubUnit"' # (the Currency Subunit key)
---| '"CurrencyUnit"' # (the Currency Unit key)
---| '"Cut"'
---| '"D"'
---| '"DecimalSeparator"' # (the Decimal Separator key)
---| '"Delete"'
---| '"DisplaySwitch"' # (display mirroring/dual display switch, video mode switch)
---| '"Down"' # (the Down arrow key (navigation keypad))
---| '"E"'
---| '"Eject"' # (the Eject key)
---| '"End"'
---| '"="'
---| '"Escape"' # (the Esc key)
---| '"Execute"'
---| '"ExSel"'
---| '"F"'
---| '"F1"'
---| '"F10"'
---| '"F11"'
---| '"F12"'
---| '"F13"'
---| '"F14"'
---| '"F15"'
---| '"F16"'
---| '"F17"'
---| '"F18"'
---| '"F19"'
---| '"F2"'
---| '"F20"'
---| '"F21"'
---| '"F22"'
---| '"F23"'
---| '"F24"'
---| '"F3"'
---| '"F4"'
---| '"F5"'
---| '"F6"'
---| '"F7"'
---| '"F8"'
---| '"F9"'
---| '"Find"'
---| '"G"'
---| '"`"' # (Located in the top left corner (on both ANSI and ISO keyboards). Produces GRAVE ACCENT and TILDE in a US Windows layout and in US and UK Mac layouts on ANSI keyboards, GRAVE ACCENT and NOT SIGN in a UK Windows layout, SECTION SIGN and PLUS-MINUS SIGN in US and UK Mac layouts on ISO keyboards, SECTION SIGN and DEGREE SIGN in a Swiss German layout (Mac: only on ISO keyboards), CIRCUMFLEX ACCENT and DEGREE SIGN in a German layout (Mac: only on ISO keyboards), SUPERSCRIPT TWO and TILDE in a French Windows layout, COMMERCIAL AT and NUMBER SIGN in a French Mac layout on ISO keyboards, and LESS-THAN SIGN and GREATER-THAN SIGN in a Swiss German, German, or French Mac layout on ANSI keyboards.)
---| '"H"'
---| '"Help"'
---| '"Home"'
---| '"I"'
---| '"Insert"' # (insert on PC, help on some Mac keyboards (but does send code 73, not 117))
---| '"J"'
---| '"K"'
---| '"KBDIllumDown"' # (the Keyboard Illumination Down key)
---| '"KBDIllumToggle"' # (the Keyboard Illumination Toggle key)
---| '"KBDIllumUp"' # (the Keyboard Illumination Up key)
---| '"Keypad 0"' # (the 0 key (numeric keypad))
---| '"Keypad 00"' # (the 00 key (numeric keypad))
---| '"Keypad 000"' # (the 000 key (numeric keypad))
---| '"Keypad 1"' # (the 1 key (numeric keypad))
---| '"Keypad 2"' # (the 2 key (numeric keypad))
---| '"Keypad 3"' # (the 3 key (numeric keypad))
---| '"Keypad 4"' # (the 4 key (numeric keypad))
---| '"Keypad 5"' # (the 5 key (numeric keypad))
---| '"Keypad 6"' # (the 6 key (numeric keypad))
---| '"Keypad 7"' # (the 7 key (numeric keypad))
---| '"Keypad 8"' # (the 8 key (numeric keypad))
---| '"Keypad 9"' # (the 9 key (numeric keypad))
---| '"Keypad A"' # (the A key (numeric keypad))
---| '"Keypad &"' # (the & key (numeric keypad))
---| '"Keypad @"' # (the @ key (numeric keypad))
---| '"Keypad B"' # (the B key (numeric keypad))
---| '"Keypad Backspace"' # (the Backspace key (numeric keypad))
---| '"Keypad Binary"' # (the Binary key (numeric keypad))
---| '"Keypad C"' # (the C key (numeric keypad))
---| '"Keypad Clear"' # (the Clear key (numeric keypad))
---| '"Keypad ClearEntry"' # (the Clear Entry key (numeric keypad))
---| '"Keypad :"' # (the : key (numeric keypad))
---| '"Keypad ,"' # (the Comma key (numeric keypad))
---| '"Keypad D"' # (the D key (numeric keypad))
---| '"Keypad &&"' # (the && key (numeric keypad))
---| '"'''Keypad
---| '"Keypad Decimal"' # (the Decimal key (numeric keypad))
---| '"Keypad /"' # (the / key (numeric keypad))
---| '"Keypad E"' # (the E key (numeric keypad))
---| '"Keypad Enter"' # (the Enter key (numeric keypad))
---| '"Keypad ="' # (the = key (numeric keypad))
---| '"Keypad = (AS400)"' # (the Equals AS400 key (numeric keypad))
---| '"Keypad !"' # (the ! key (numeric keypad))
---| '"Keypad F"' # (the F key (numeric keypad))
---| '"Keypad >"' # (the Greater key (numeric keypad))
---| '"Keypad #"' # (the # key (numeric keypad))
---| '"Keypad Hexadecimal"' # (the Hexadecimal key (numeric keypad))
---| '"Keypad {"' # (the Left Brace key (numeric keypad))
---| '"Keypad ("' # (the Left Parenthesis key (numeric keypad))
---| '"Keypad <"' # (the Less key (numeric keypad))
---| '"Keypad MemAdd"' # (the Mem Add key (numeric keypad))
---| '"Keypad MemClear"' # (the Mem Clear key (numeric keypad))
---| '"Keypad MemDivide"' # (the Mem Divide key (numeric keypad))
---| '"Keypad MemMultiply"' # (the Mem Multiply key (numeric keypad))
---| '"Keypad MemRecall"' # (the Mem Recall key (numeric keypad))
---| '"Keypad MemStore"' # (the Mem Store key (numeric keypad))
---| '"Keypad MemSubtract"' # (the MemSubtract key (numeric keypad))
---| '"Keypad -"' # (the 0-key (numeric keypad))
---| '"Keypad *"' # (the * key (numeric keypad))
---| '"Keypad Octal"' # (the Octal key (numeric keypad))
---| '"Keypad %"' # (the Percent key (numeric keypad))
---| '"Keypad ."' # (the . key (numeric keypad))
---| '"Keypad +"' # (the + key (numeric keypad))
---| '"Keypad +/-"' # (the +/- key (numeric keypad))
---| '"Keypad ^"' # (the Power key (numeric keypad))
---| '"Keypad }"' # (the Right Brace key (numeric keypad))
---| '"Keypad )"' # (the Right Parenthesis key (numeric keypad))
---| '"Keypad Space"' # (the Space key (numeric keypad))
---| '"Keypad Tab"' # (the Tab key (numeric keypad))
---| '"Keypad |"' # (the | key (numeric keypad))
---| '"Keypad XOR"' # (the XOR key (numeric keypad))
---| '"L"'
---| '"Left Alt"'
---| '"Left Ctrl"'
---| '"Left"' # (the Left arrow key (navigation keypad))
---| '"["'
---| '"Left GUI"' # (windows, command (apple), meta)
---| '"Left Shift"'
---| '"M"'
---| '"Mail"' # (the Mail/eMail key)
---| '"MediaSelect"' # (the Media Select key)
---| '"Menu"'
---| '"-"'
---| '"ModeSwitch"'
---| '"Mute"'
---| '"N"'
---| '"Numlock"' # (the Num Lock key (PC) / the Clear key (Mac))
---| '"O"'
---| '"Oper"'
---| '"Out"'
---| '"P"'
---| '"PageDown"'
---| '"PageUp"'
---| '"Paste"'
---| '"Pause"' # (the Pause / Break key)
---| '"."'
---| '"Power"' # (The USB document says this is a status flag, not a physical key - but some Mac keyboards do have a power key.)
---| '"PrintScreen"'
---| '"Prior"'
---| '"Q"'
---| '"R"'
---| '"Right Alt"' # (alt gr, option)
---| '"Right Ctrl"'
---| '"Return"' # (the Enter key (main keyboard))
---| '"Return"'
---| '"Right GUI"' # (windows, command (apple), meta)
---| '"Right"' # (the Right arrow key (navigation keypad))
---| '"]"'
---| '"Right Shift"'
---| '"S"'
---| '"ScrollLock"'
---| '"Select"'
---| '";"'
---| '"Separator"'
---| '"/"'
---| '"Sleep"' # (the Sleep key)
---| '"Space"' # (the Space Bar key(s))
---| '"Stop"'
---| '"SysReq"' # (the SysReq key)
---| '"T"'
---| '"Tab"' # (the Tab key)
---| '"ThousandsSeparator"' # (the Thousands Separator key)
---| '"U"'
---| '"Undo"'
---| '""' # (no name, empty string)
---| '"Up"' # (the Up arrow key (navigation keypad))
---| '"V"'
---| '"VolumeDown"'
---| '"VolumeUp"'
---| '"W"'
---| '"WWW"' # (the WWW/World Wide Web key)
---| '"X"'
---| '"Y"'
---| '"Z"'

--- @class TraceRayParams:table
--- @field Origin Vec3 
--- @field Dir Vec3
--- @field TraceAtlas boolean
--- @field TraceCommon boolean
--- @field ForceComponents VoxelRenderer[]
--- @field IgnoreComponents VoxelRenderer[]

--- @param p1 TraceRayParams
--- @return Hit[]
function Scene:TraceRay(p1) end

--- @return Filter
function Filter.new() end

--- @return Collision
function Collision.new() end

--- @return VoxelEdit
function VoxelEdit.new() end


--- @return Hit[]
function Collision:Raycast() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Hit[]
function Collision:Raycast(p1, p2) end


--- @generic T:Component
--- @param type `T`|componentType
--- @return T
function Object:AddComponent(type) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType
function Object:GetComponentByType(name) end

--- @generic ComponentType: Component
--- @param name `ComponentType`|componentType
--- @return ComponentType[]
function Object:GetComponentsByType(name) end


--- @param p1 string
--- @return Object[]
function Scene:GetObjectsByName(p1) end

--- @return Object[]
function Scene:GetAllObjects() end

--- @return Object[]
function Scene:GetRootObjects() end

--- @param p1 string
--- @return Object[]
function Scene:GetObjectsByTag(p1) end


--- @return number[]
function Server:GetClients() end


--- @param p1 integer
--- @return Transform
function Transform:GetChild(p1) end

--- @param p1 string
--- @return Transform
function Transform:GetChild(p1) end


--- @param p1 keyCode
--- @return boolean
function Input:KeyDown(p1) end

--- @param p1 keyCode
--- @return boolean
function Input:Key(p1) end

--- @param p1 keyCode
--- @return boolean
function Input:KeyUp(p1) end

--- @return keyCode[]
function Input:KeyCombosDown() end

--- @param mouseButton mouseButton
--- @return boolean
function Input:MouseButtonDown(mouseButton) end

--- @param p1 mouseButton
--- @return boolean
function Input:MouseButton(p1) end

--- @param p1 mouseButton
--- @return boolean
function Input:MouseButtonUp(p1) end


--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Lerp(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat.Slerp(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Quat
function Quat.Euler(p1, p2, p3) end

--- @param p1 Vec3
--- @return Quat
function Quat.Euler(p1) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat.AngleAxis(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3.Lerp(p1, p2, p3) end


--- @return Vec3
function Quat:GetEuler() end


--- @param p2 number
--- @param p3 number
--- @return nil
function Vec2:Clamp(p2, p3) end

--- @param p2 Vec2
--- @param p3 Vec2
--- @return nil
function Vec2:Clamp(p2, p3) end

--- @param p2 number
--- @param p3 number
--- @return Vec2
function Vec2:GetClamped(p2, p3) end

--- @param p2 Vec2
--- @param p3 Vec2
--- @return Vec2
function Vec2:GetClamped(p2, p3) end


--- @param p2 number
--- @param p3 number
--- @return nil
function Vec3:Clamp(p2, p3) end

--- @param p2 Vec3
--- @param p3 Vec3
--- @return nil
function Vec3:Clamp(p2, p3) end

--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3:GetClamped(p2, p3) end

--- @param p2 Vec3
--- @param p3 Vec3
--- @return Vec3
function Vec3:GetClamped(p2, p3) end


--- @param p1 string
--- @return Material
function Scene:CreateMaterial(p1) end

]]

function genEmmy:createFile(bindingsServer, bindingsClient)
    local file = io.open("generator\\emmyApi\\apiEmmyLua.lua", "w")
    
    --default lines
    file:write(emmyDefaultLines, "\n")

    --add component alias
    local comps = util:getAllComponents(bindingsServer)
    table.sort(comps) --sort ABC
    file:write("--- @alias componentType", "\n")
    for i, comp in ipairs(comps) do
        file:write([[---| "']], comp, [['"]], "\n")
    end
    file:write("\n")

    return file
end

function genEmmy:addEnum(file, name, intro, finalRows)
    local docsPath = "enums/"
    local className = util:firstToUpper(name)
    self:writeClassHeader(file, className, intro, docsPath)
    file:write("--- @enum ",className, "\n")
    
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
    file:write("--- @class ",className, "\n")
    self:writeOperators(file, className, finalMethods)
    self:writeProps(file, className, finalProperties)
    self:writeMethods(file, className, finalMethods)
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
end

local operators = {
    ["__unm"] = true,
    ["__add"] = true,
    ["__sub"] = true,
    ["__mul"] = true,
    ["__div"] = true,
    ["__idiv"] = true,
    ["__mod"] = true,
    ["__pow"] = true,
    ["__concat"] = true,
    ["__band"] = true,
    ["__bor"] = true,
    ["__bxor"] = true,
    ["__bnot"] = true,
    ["__shl"] = true,
    ["__shr"] = true,
    --["__eq"] = true,
    ["__lt"] = true,
    ["__le"] = true,
}

function genEmmy:writeOperators(file, className, finalMethods)
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header, returnType, name, params = genEmmy:dissectMethodEntry(lines)

        if operators[name] then
            local _, _, operation = string.find(name, "^__(%S+)")

            --write function
            local paramNames = {}
            local paramTypes = {}
            for i, info in ipairs(params) do
                local paramType = info[1]
                local paramName = info[2] or ("p" .. i)
                assert(paramType ~= "...", "vararg unhandeled")
                table.insert(paramTypes, paramType)
                table.insert(paramNames, paramName)
            end

            --extension doesnt support other cases yet i.e. `number * Vec3` only `Vec3 * number`
            local left = paramTypes[1]
            local right = paramTypes[2]
            assert(paramTypes[3] == nil)
            local leftIsClass = left == className
            if leftIsClass then
                --Vec3f __div (Vec3f, Vec3f)
                --@operator div(Vec3): Vec3
                local param = right or left --in case of i.e. unm with only one param
                file:write("--- @operator ", operation, "(", param, "):", returnType, "\n")
            end
        end
    end
end

function genEmmy:writeProps(file, className, finalProperties)
    --props
    for i, prop in ipairs(finalProperties) do
        local header = prop.entry[1]
        --### Vec3 position {#Vec3-position}
        header = header:gsub("const ", "") --for now just remove that
        local _, _, returnType, name = string.find(header, "### (%S+)%s(%S+)%s*")
        assert(returnType, "err")
        returnType = self:convertToEmmyLuaType(returnType)
        file:write("--- @field ", name, " ", returnType, "\n")
    end
    --file:write(className," = {}", "\n\n")

    --TEMP write table with contents (workaround because comments dont work behind @field)
    local lines = {}
    for i, prop in ipairs(finalProperties) do
        local hasComment = util:hasDocumentation(prop.entry)
        if hasComment then
            local comment = util:getDocumentation(prop.entry)
            local header = prop.entry[1]
            header = header:gsub("const ", "") --for now just remove that
            local _, _, returnType, name = string.find(header, "### (%S+)%s(%S+)%s*")
            local line = table.concat({"\t", name, " = nil, ", "---", comment, "\n"})
            table.insert(lines, line)
        end
    end
    if next(lines) then
        file:write(className, " = {", "\n")
        for i, line in ipairs(lines) do
            file:write(line)
        end
        file:write("}", "\n\n")
    else
        file:write(className, " = {}", "\n\n")
    end
end

function genEmmy:writeMethods(file, className, finalMethods)
    --methods
    for i, prop in ipairs(finalMethods) do
        local lines = prop.entry
        local header, returnType, name, params = genEmmy:dissectMethodEntry(lines)
        
        --write function documentation
        if (util:hasDocumentation(lines)) then
            file:write("--[[", "\n")
            for i = 2, #lines do
                local line = lines[i]
                --title= not supported, strip out
                local hasTitle = string.find(line, "```lua title=")
                if (hasTitle) then line = "```lua" end
                line = line:gsub("bool", "boolean")
                file:write(line, "\n")
            end
            local _, _, headingId = string.find(header, "{(%S*)}")
            local uri = "https://docs.atomontage.com/api/" .. className .. headingId
            file:write("[View Documentation](", uri, ")", "\n")
            file:write("]]", "\n")
        end

        --is constructor
        local isConstructor = returnType == ""
        if isConstructor then
            returnType = className
        end

        --write function
        local paramNames = {}
        for i, info in ipairs(params) do
            local paramType = info[1]
            local paramName = info[2] or ("p" .. i)
            -- @param name type info
            if paramType == "..." then
                --TODO for now just 'any' but might need to support specific type or something like @alias primitives
                paramName = "..."
                file:write("--- @vararg any", "\n")
            else
                file:write("--- @param ", paramName, " ", paramType, "\n")
            end
            table.insert(paramNames, paramName)
        end

        local paramNamesStr = table.concat(paramNames, ", ")
        file:write("--- @return ", returnType, "\n")
        if (isConstructor) then
            file:write("function ", name, "(", paramNamesStr, ") end", "\n\n")
        else
            if name == "new" then
                file:write("function ", className, ".", name, "(", paramNamesStr, ") end", "\n\n")
            else
                file:write("function ", className, ":", name, "(", paramNamesStr, ") end", "\n\n")
            end
        end
    end
end

--split lines into info
function genEmmy:dissectMethodEntry(lines)
    local header = lines[1]
    header = header:gsub("const ", "") --for now just remove that
    local _, _, returnType, name, paramsStr = string.find(header, "### ([%w%s%,]-)%s?(%S*)%((.*)%).+")
    local params = {}
    assert(paramsStr, "header contains illegal characters: " .. header)
    for word in string.gmatch(paramsStr, '%s?([^,]+)') do
        local _, _, ptype, name = string.find(word, "(%S*)%s?(%S*)")
        if name == "" then name = nil end
        ptype = self:convertToEmmyLuaType(ptype)
        table.insert(params, { ptype, name })
    end

    returnType = self:convertToEmmyLuaType(returnType)
    return header, returnType, name, params
end

--TODO maybe docs should use samd names?
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
