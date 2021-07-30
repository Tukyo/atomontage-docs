---
id: style-guide
---

# Style Guide
* Use `PascalCase` for all Atomontage APIs functions 
* Use `lowerCamelCase` for  ( myFunction(), isValid(), ... )
* Variables and member variables - `lowerCamelCase` (i, count, isTaken, ...)
* In methods, use name `self` as object reference (first argument of method)
* Do not define globals
* Use `lowerCamelCase` for script file names i.e. playerController.lua

```lua
function spawnStaticObject(i)
	local obj = Scene:CreateObject()
	obj.name = "static"..i
	local tr = obj.transform
	tr.pos = Vec3(i / 1000, 0, i % 1000)
	tr.rot = Quat.AngleAxis(i * 0.01, vec3.up)
	print("rotation is "..tostring(tr.rot))
	tr.scale = 1 + (i % 100) * 0.01
end
```
