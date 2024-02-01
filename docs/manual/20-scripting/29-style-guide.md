---
id: style-guide
---

# Style Guide
* All Atomontage API functions use `PascalCase` 
* Use `lowerCamelCase` for  ( myFunction(), self:isValid(), ... )
* Variables and member variables - `lowerCamelCase` (i, count, isTaken, ...)
* In methods, use name `self` as object reference (i.e. self:destroy())
* Do not define globals
* Use `Title Case` for script file names i.e. Player Controller.lua

```lua
function self:serverOnPressNext()
    self.editedData[self.net.iAvatarChoice] = self.vd.data
    local choice = self.net.iAvatarChoice + 1
    if choice > #self.originalData then choice = 1 end
    self.net.iAvatarChoice = choice
end
```
