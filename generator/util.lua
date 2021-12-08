local util = {}

--find all componets in _Bindings (by checking if they have type and object props)
function util:getAllComponents(_Bindings)
    local components = {}
    for name, class in pairs(_Bindings.Classes) do
        if name ~= "Component" then 
            local hasType = false
            local hasObject = false
            for i, prop in ipairs(class.Properties or {}) do
                hasType = hasType or prop:find(" type")
                hasObject = hasObject or prop:find(" object")
            end
            if hasType and hasObject then
                table.insert(components, name)          
            end
        end
    end
    return components
end

--check if a table with lines is more then just a header
function util:hasDocumentation(lines)
    --actually should also check if lines are just empty here
    local hasDocumentation = #lines > 2 or (lines[2] and lines[2] ~= "")
    return hasDocumentation
end

function util:file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

--only works on windows!
function util:getFiles(path)
    local files = {}
    for dir in io.popen([[dir "]]..path..[[" /b]]):lines() do 
        table.insert(files, dir)
    end
    return files
end

function util:getLines(filename)
    local lines = {}
    -- read the lines in table 'lines'
    for line in io.lines(filename) do
        table.insert(lines, line)
        lines[line] = true
    end
    return lines
end

function util:firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function util:firstToLower(str)
    return (str:gsub("^%a", string.lower))
end

function util:stringStartsWith(str, start)
   return str:sub(1, #start) == start
end

function table.clone(tab, seen)
  if type(tab) ~= 'table' then return tab end
  if seen and seen[tab] then return seen[tab] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(tab))
  s[tab] = res
  for k, v in pairs(tab) do res[table.clone(k, s)] = table.clone(v, s) end
  return res
end

return util