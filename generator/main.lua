require("os")

local util = require("generator.util")
local genEmmy = require("generator.genEmmy")
local genDocs = require("generator.genDocs")
local serpent = require("generator.serpent")

print("start")
genDocs:gen()

--only works on windows
local function copyFile(fromFolder, toFolder)
    local ok = os.execute('xcopy /E /S /y /q "' .. fromFolder .. '" "' .. toFolder .. '"')
    assert(ok)
end

--change on other computer, api files are copied here
local apiFrom = "C:\\Users\\maxkr\\Documents\\Code\\Atomontage\\atomontage-docs\\generator\\emmyApi"
local apiTo = "D:\\atomontage\\Resources\\Studio\\LuaApi\\Atomontage\\library"
copyFile(apiFrom, apiTo)

local systemFrom = "D:\\atomontage\\Build\\win64_vs2022\\Studio\\RelWithDebInfo\\Data\\Studio\\Script\\ae"
local systemTo = "D:\\atomontage\\Resources\\Studio\\LuaApi\\Atomontage\\library\\systemScripts\\ae"
copyFile(systemFrom, systemTo)

print("done")