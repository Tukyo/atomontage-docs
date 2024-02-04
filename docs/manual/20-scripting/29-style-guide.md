---
id: style-guide
---

# Style Guide
* Use `Title Case` for script file names i.e. `Player Controller.lua`
* All Atomontage API functions use `PascalCase` 
* Use `lowerCamelCase` for functions: `myFunction()`, `self:serverRemovePlayer()`
* Use `lowerCamelCase` for variables and member variables: `local plr`, `self.isTaken`
* In methods, use name `self` as object reference: `self:destroy()`
* Prefix methods that should *only* be run on server or client as such. I.e `self:serverRemovePlayer()`
* Do not define globals

```lua
--remove the player object
function self:serverRemovePlayer(id)
    assert(self.onServer)
    local plr = self.players[id]
    local ob = plr.ob
    --this is an Atomontage API function as indicated by PascalCase
    Scene:DestroyObject(ob)
    self.players[id] = nil
end
```
