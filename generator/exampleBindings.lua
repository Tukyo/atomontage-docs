

--[[
https://favro.com/organization/0818a14683cf95e2d283d70d/905522e64a1abe4d71a59421?card=Ato-2591
parent class or how to do Shape, maybe bind differently

seperate methods from functions? or remove all functions

seperate classes from instances 
i.e Vec2() return Vec2
and this is possible: Vec2.zero, Vec2(0,1).zero
]]

--see types: https://github.com/LuaLS/lua-language-server/wiki/Annotations#documenting-types

--in classes
Classes = {
    {
        name = "SomeClass",
        --a class may only exist on server or cient but if it exists on both it must always be the same on both sides
        onServer = true,
        onClient = true,
        props = {
            --this order is used in documentation
            {name = "clientID", type = "string", readonly = true},
            {name = "mode", type = "ClientMode"},
            {name = "anything", type = "any"}, --can be any
            {name = "objects", type = "Object[]"}, --i table
            {name = "onlyTwo", type = '"Yes"|"No"'}, --this can only be "Yes" or "No"
            {name = "keyCode", type = "keyCode"}, --we can define aliases such as keyCode which is a list of possible key strings, but we should probably use enums in most cases
            {name = "onProgress", type = "fun(progress:number)"}, --function with param or fun() without
        },
        constructors = {
            {
                name = "SomeClass", --redundant but for consistency
                params = {
                    {name = "mode", type = "ClientMode"},
                    {name = "clientID", type = "string"},
                },
                returns = {
                    --redundant but for consistency
                    {name = "someClass", type = "SomeClass"},
                },
                isDeprecated = true
            },
        },
        --do not include metamethods here anymore
        functions = {
            {
                name = "ConnectToMontage",
                params = {
                    {name = "mode", type = "ClientMode"},
                    {name = "clientID", type = "string"},
                },
                returns = {
                    {name = "mode", type = "ClientMode"},
                    {name = "canBeNil", type = "?string"},
                },
                isDeprecated = true
            },
            {
                --func with vararg: self:RPC(1, "Bla", 1, {})
                name = "RPC",
                params = {
                    {name = "toClient", type = "integer"},
                    --vararg
                    {name = "params", type = "any", isVarArg = true},
                }

            },
        },
        metamethods = {
            {...}
        }
    }
}

Enums = {}