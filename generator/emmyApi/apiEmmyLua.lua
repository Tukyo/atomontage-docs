--- @meta

--- @class Quat
Quat = {}

--- @class ControllerButtons
ControllerButtons = {}

--- @class Studio
--- @field renderer RendererContext
--- @field rendererViewportScale Vec2
--- @field commandLine string
--- @field inDevMod boolean
--- @field platform string
--- @field sysInfo string
Studio = {}

--- @return nil
function Studio:Close() end

--- @param p1 Studio
--- @return number
function Studio:GetFPS(p1) end

--- @return number
function Studio:GetDeltaTime() end

--- @return number
function Studio:GetTotalTime() end

--- @return Camera
function Studio:GetMainCamera() end

--- @return integer
function Studio:GetCameraControlStyle() end

--- @param p1 integer
--- @return nil
function Studio:SetCameraControlStyle(p1) end

--- @return boolean
function Studio:GetCameraInvert() end

--- @param p1 boolean
--- @return nil
function Studio:SetCameraInvert(p1) end

--- @return integer
function Studio:GetViewFrame() end

--- @param p1 integer
--- @return nil
function Studio:SetViewFrame(p1) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Studio:Log(p1, p2) end

--- @param p1 Studio
--- @return string
function Studio:GetEULA(p1) end

--- @param p1 Studio
--- @return Vec2
function Studio:GetViewportSize(p1) end

--- @param p1 Studio
--- @return nil
function Studio:ReloadLua(p1) end

--- @return boolean
function Studio:GetSkyBox() end

--- @param p1 boolean
--- @return nil
function Studio:SetSkyBox(p1) end

--- @param p1 Studio
--- @return Vec4
function Studio:GetBGColor(p1) end

--- @param p1 Studio
--- @param p2 Vec4
--- @return nil
function Studio:SetBGColor(p1, p2) end

--- @return nil
function Studio:SaveEntityPath() end

--- @return nil
function Studio:ToggleChannelRendering() end

--- @return AssetManager
function Studio:GetResourceManScene() end

--- @return AssetManager
function Studio:GetResourceManUI() end

--- @return AssetManager
function Studio:GetResourceManSettings() end

--- @param p1 Studio
--- @return boolean
function Studio:GetVREnabled(p1) end

--- @param p1 Studio
--- @param p2 boolean
--- @param p3 string
--- @return nil
function Studio:SetVREnabled(p1, p2, p3) end

--- @param p1 Studio
--- @param p2 string
--- @return nil
function Studio:ToggleVREnabled(p1, p2) end

--- @class RealtimeLightingInfo
--- @field diffuseSamples integer
--- @field ambient Vec3
--- @field diffuse Vec3
--- @field lightDir Vec3
--- @field ambientSamples integer
--- @field diffuseRayLength number
--- @field ambientRayLength number
--- @field taskBoxScale integer
RealtimeLightingInfo = {}

--- @return RealtimeLightingInfo
function RealtimeLightingInfo() end

--[[

See also: [ScriptComponent](ScriptComponent)

[View Documentation](http://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field type string
--- @field object Object
Component = {}

--- @return Component
function Component() end

--- @class VoxelRender
--- @field type string
--- @field object Object
VoxelRender = {}

--- @class Object
--- @field s_id integer
--- @field name string
--- @field tag string
--- @field flags integer
--- @field transform2 integer
--- @field meshData integer
--- @field meshRender integer
--- @field voxelData integer
--- @field voxelRender integer
--- @field rigidBody integer
--- @field id integer
--- @field isDestroyed boolean
--- @field componentsCount integer
--- @field update boolean
--- @field active boolean
--- @field transform Transform
Object = {}

--- @return Object
function Object() end

--- @param p1 Object
--- @return nil
function Object:RemoveAllComponents(p1) end

--- @param p1 string
--- @return userdata
function Object:AddComponent(p1) end

--- @param p1 integer
--- @return userdata
function Object:GetComponent(p1) end

--- @param p1 string
--- @return userdata
function Object:RemoveComponent(p1) end

--- @param p1 string
--- @return userdata
function Object:GetComponentByType(p1) end

--- @class ConfigMap
ConfigMap = {}

--- @return ConfigMap
function Config() end

--- @param p1 string
--- @param p2 integer
--- @return nil
function ConfigMap:SetInt(p1, p2) end

--- @param p1 string
--- @param p2 number
--- @return nil
function ConfigMap:SetFloat(p1, p2) end

--- @param p1 string
--- @param p2 boolean
--- @return nil
function ConfigMap:SetBool(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return nil
function ConfigMap:SetString(p1, p2) end

--- @param p1 string
--- @param p2 Vec2
--- @return nil
function ConfigMap:SetVec2(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return nil
function ConfigMap:SetVec3(p1, p2) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function ConfigMap:SetVec4(p1, p2) end

--- @param p1 string
--- @return nil
function ConfigMap:Del(p1) end

--- @param p1 string
--- @return boolean
function ConfigMap:Exists(p1) end

--- @param p1 string
--- @param p2 integer
--- @return integer
function ConfigMap:GetInt(p1, p2) end

--- @param p1 string
--- @return integer
function ConfigMap:GetInt(p1) end

--- @param p1 string
--- @param p2 number
--- @return number
function ConfigMap:GetFloat(p1, p2) end

--- @param p1 string
--- @return number
function ConfigMap:GetFloat(p1) end

--- @param p1 string
--- @param p2 boolean
--- @return boolean
function ConfigMap:GetBool(p1, p2) end

--- @param p1 string
--- @return boolean
function ConfigMap:GetBool(p1) end

--- @param p1 string
--- @param p2 string
--- @return string
function ConfigMap:GetString(p1, p2) end

--- @param p1 string
--- @return string
function ConfigMap:GetString(p1) end

--- @param p1 string
--- @param p2 Vec2
--- @return Vec2
function ConfigMap:GetVec2(p1, p2) end

--- @param p1 string
--- @return Vec2
function ConfigMap:GetVec2(p1) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function ConfigMap:GetVec3(p1, p2) end

--- @param p1 string
--- @return Vec3
function ConfigMap:GetVec3(p1) end

--- @param p1 string
--- @param p2 Vec4
--- @return Vec4
function ConfigMap:GetVec4(p1, p2) end

--- @param p1 string
--- @return Vec4
function ConfigMap:GetVec4(p1) end

--- @param p1 Config
--- @return table
function ConfigMap:GetAllValuesStringified(p1) end

--- @class Vec4
--- @field x number
--- @field y number
--- @field z number
--- @field w number
Vec4 = {}

--- @return Vec4
function Vec4() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @return Vec4
function Vec4(p1) end

--- @return Vec4
function Vec4() end

--- @return Vec4
function Vec4() end

--- @param p1 Mat4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__unm(p1, p2) end

--[[

Representation of 3D vectors and points.

This structure is used throughout Atomontage to pass 3D positions and directions around. It also contains functions for doing common vector operations.

:::tip My tip

Wwo!!

:::

:::danger Take care

This action is dangerous

:::

[View Documentation](http://docs.atomontage.com/api/Vec3)
]]
--- @class Vec3
--- @field x number
--- @field y number
--- @field z number
--- @field length number
--- @field zero Vec3
--- @field up Vec3
--- @field right Vec3
--- @field forward Vec3
--- @field normalized Vec3
Vec3 = {}

--[[
Returns Vec3(0, 0, 0).

```lua
local vec = Vec3()
```

[View Documentation](http://docs.atomontage.com/api/Vec3#Vec3)
]]
--- @return Vec3
function Vec3() end

--[[
```lua
local vec = Vec3(0.5, 10, 33.33)
```

[View Documentation](http://docs.atomontage.com/api/Vec3#Vec3-float-float-float)
]]
--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 number
--- @return Vec3
function Vec3(p1) end

--- @return Vec3
function Vec3() end

--- @return Vec3
function Vec3() end

--[[
Metamethod overload to multiply vec3 with float number 
```lua
local vec = Vec3(0, 10, 0)
local res = vec * 3 --res is Vec3(0, 30, 0)
```

[View Documentation](http://docs.atomontage.com/api/Vec3#Vec3-mul-Vec3-float)
]]
--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__unm(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:Dot(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3:Lerp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3:Mix(p1, p2, p3) end

--- @param p1 Vec3
--- @return nil
function Vec3:Normalize(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetNormalized(p1) end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec3:Clamp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3:GetClamped(p1, p2, p3) end

--- @param p1 Vec3
--- @return nil
function Vec3:Ceil(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetCeiled(p1) end

--- @param p1 Vec3
--- @return nil
function Vec3:Floor(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetFloored(p1) end

--- @param p1 Vec3
--- @return nil
function Vec3:Round(p1) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:GetRounded(p1) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function Vec3:SetLength(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:Length(p1, p2) end

--- @param p1 Vec3
--- @return number
function Vec3:Length(p1) end

--- @param p1 Mat4
--- @param p2 Vec3
--- @return Vec4
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @return userdata
function Vec3:IsNaN(p1) end

--- @class Vec2
--- @field x number
--- @field y number
Vec2 = {}

--- @return Vec2
function Vec2() end

--- @param p1 number
--- @param p2 number
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 number
--- @return Vec2
function Vec2(p1) end

--- @return Vec2
function Vec2() end

--- @param p1 structAsObject
--- @return Vec2
function Vec2(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2
function Vec2(p1) end

--- @return Vec2
function Vec2() end

--- @param p1 structAsObject
--- @return Vec2
function Vec2(p1) end

--- @param p1 structAsRawPointegerer
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__unm(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return number
function Vec2:Dot(p1, p2) end

--- @param p1 Vec2
--- @return boolean
function Vec2:IsZero(p1) end

--- @return number
function Vec2:Length() end

--- @return number
function Vec2:SqrLength() end

--- @return Angle
function Vec2:GetAngle() end

--- @return number
function Vec2:GetAngleRad() end

--- @return nil
function Vec2:Normalize() end

--- @param p1 number
--- @return nil
function Vec2:NormalizeTo(p1) end

--- @return Vec2
function Vec2:GetNormalized() end

--- @param p1 number
--- @return Vec2
function Vec2:GetNormalizedTo(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return nil
function Vec2:MorphTo(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:GetMorphedTo(p1, p2) end

--- @return nil
function Vec2:RotateRight90() end

--- @param p1 Angle
--- @return nil
function Vec2:RotateRight(p1) end

--- @param p1 number
--- @return nil
function Vec2:RotateRight(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotatedRight(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotatedRight(p1) end

--- @return Vec2
function Vec2:GetRotatedRight90() end

--- @return nil
function Vec2:RotateLeft90() end

--- @param p1 Angle
--- @return nil
function Vec2:RotateLeft(p1) end

--- @param p1 number
--- @return nil
function Vec2:RotateLeft(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotatedLeft(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotatedLeft(p1) end

--- @return Vec2
function Vec2:GetRotatedLeft90() end

--- @return nil
function Vec2:Rotate90() end

--- @param p1 Angle
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 number
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotated(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotated(p1) end

--- @return Vec2
function Vec2:GetRotated90() end

--- @class Material
--- @field shaderFiles ResourceReference
--- @field polygonMode PolygonMode
--- @field depthStencil ResourceReference
--- @field blend ResourceReference
--- @field defines string
--- @field uniforms userdata
Material = {}

--- @param p1 string
--- @param p2 FilePath
--- @return Material
function Material(p1, p2) end

--- @return boolean
function Material:IsValid() end

--- @return boolean
function Material:IsManaged() end

--- @param p1 string
--- @return boolean
function Material:HasProperty(p1) end

--- @param p1 string
--- @return Vec3
function Material:GetPropertyVec3(p1) end

--- @param p1 string
--- @return Vec4
function Material:GetPropertyVec4(p1) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function Material:SetProperty(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return nil
function Material:SetProperty(p1, p2) end

--- @class V3i
--- @field x integer
--- @field y integer
--- @field z integer
V3i = {}

--- @return V3i
function Vec3i() end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return V3i
function Vec3i(p1, p2, p3) end

--- @param p1 Vec3
--- @return V3i
function Vec3i(p1) end

--- @param p1 integer
--- @return V3i
function Vec3i(p1) end

--- @return V3i
function Vec3i() end

--- @param p1 structAsObject
--- @return V3i
function Vec3i(p1) end

--- @param p1 structAsRawPointegerer
--- @return V3i
function Vec3i(p1) end

--- @return V3i
function Vec3i() end

--- @param p1 structAsObject
--- @return V3i
function Vec3i(p1) end

--- @param p1 structAsRawPointegerer
--- @return V3i
function Vec3i(p1) end

--- @return V3i
function Vec3i() end

--- @param p1 structAsObject
--- @return V3i
function Vec3i(p1) end

--- @param p1 structAsRawPointegerer
--- @return V3i
function Vec3i(p1) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function V3i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function V3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function V3i:__unm(p1, p2) end

--- @class Transform
--- @field childCount integer
--- @field pos Vec3
--- @field rot Quat
--- @field localPos Vec3
--- @field localScale number
--- @field localRot Quat
--- @field parent Transform
--- @field invalid Transform
--- @field right Vec3
--- @field up Vec3
--- @field forward Vec3
--- @field type string
--- @field object Object
Transform = {}

--- @param p1 string
--- @return Transform
function Transform:Get(p1) end

--- @param p1 integer
--- @return Transform
function Transform:GetChild(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:LocalToWorld(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:WorldToLocal(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:LocalToWorldVec(p1) end

--- @param p1 Vec3
--- @return Vec3
function Transform:WorldToLocalVec(p1) end

--- @class VoxelData
--- @field resource string
--- @field type string
--- @field object Object
VoxelData = {}

--[[


blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

[View Documentation](http://docs.atomontage.com/api/Client)
]]
--- @class Client
Client = {}

--[[
Send a message to server scripts. The message is a table

```lua
-- send message examples
Client:SendMessage({act = 'erase', pos = Vec3(0,0,0), rad = 1})
-- send message example with no string use
Client:SendMessage({[1] = 1, [2] = 100, [3] = false, [4] = Vec2(0)})
-- send message with no keys, it's the same message as the line above
Client:SendMessage({1, 100, false, Vec2(0)})

-- send more messages in one call
Client:SendMessages({	
    {act = 1}, -- message 1
    {act = 5}, -- message 2
    {1, 100, false}, -- message 3 (with no keys)
    {act = 2, brush = 'paint'}}) -- message 4



local my_msgs = {}
table.insert(my_msgs, {act = 'erase'})
table.insert(my_msgs, {act = 'erase'})
table.insert(my_msgs, {act = 'erase'})
Client:SendMessages(my_msgs)
```

[View Documentation](http://docs.atomontage.com/api/Client#void-SendMessage-table)
]]
--- @param p1 table
--- @return nil
function Client:SendMessage(p1) end

--- @param p1 table
--- @return nil
function Client:SendMessages(p1) end

--[[
Recieve messages send by server scripts

```lua
-- define your actions for network messages (good example, but user can wrok this out freely)
net_actions = {}
net_actions['Del'] = function(msg) Scene:ClearSphere(msg.pos, msg.rad) end
net_actions[1] = function(msg) Scene:ClearSphere(msg[2], msg[3]) end

-- receive all messages in one call and process them
for i,msg in ipairs(Client:ReceiveMessages()) do
    -- process message example:
    local f = msg.act and net_actions[msg.act]
    if type(f) == 'function' then
        f(msg)
    end
end
```

[View Documentation](http://docs.atomontage.com/api/Client#table-ReceiveMessages)
]]
--- @return table
function Client:ReceiveMessages() end

--- @param p1 integer
--- @param p2 UIItem
--- @param p3 userdata
--- @return string
function Client:UIItemUpdate(p1, p2, p3) end

--- @param p1 string
--- @return nil
function Client:OpenKeyboardShortcutInput(p1) end

--- @return nil
function Client:ToggleUICreatorWindow() end

--- @return nil
function Client:ToggleUIStudioSDK() end

--- @return nil
function Client:ToggleUIVisibility() end

--- @return nil
function Client:ToggleMainMenuVisibility() end

--- @return nil
function Client:SetToClientUI() end

--- @return boolean
function Client:GetUICapturesMouseOrKeyboard() end

--- @return boolean
function Client:GetUICapturesMouse() end

--- @return boolean
function Client:GetUICapturesKeyboard() end

--- @return boolean
function Client:GetUICapturesTextInput() end

--- @return boolean
function Client:GetUIIsInEditMode() end

--- @return nil
function Client:LoadDefaultLayout() end

--- @param p1 string
--- @return nil
function Client:OpenUIWindow(p1) end

--- @param p1 string
--- @return nil
function Client:CloseUIWindow(p1) end

--- @param p1 string
--- @return nil
function Client:ToggleUIWindow(p1) end

--- @param p1 string
--- @return boolean
function Client:IsWindowOpen(p1) end

--- @param p1 string
--- @param p2 integer
--- @return nil
function Client:OpenScriptFile(p1, p2) end

--- @param p1 string
--- @param p2 integer
--- @return nil
function Client:OpenServerScriptFile(p1, p2) end

--- @param p1 string
--- @return nil
function Client:OpenZeroBraneStudio(p1) end

--- @return nil
function Client:OpenZeroBraneStudioActions() end

--- @param p1 number
--- @return nil
function Client:SetUIScale(p1) end

--- @return number
function Client:GetUIScale() end

--- @return boolean
function Client:GetUIScaleAuto() end

--- @param p1 boolean
--- @return nil
function Client:SetUIScaleAuto(p1) end

--- @return string
function Client:GetMontageURL() end

--- @param p1 string
--- @return nil
function Client:SetMontageURL(p1) end

--- @return nil
function Client:LoadMontageByURL() end

--- @return nil
function Client:CancelLoadMontageByURL() end

--- @return string
function Client:GetConnectionStatus() end

--- @return nil
function Client:DisconnectFromMontageServer() end

--- @param p1 string
--- @return number
function Client:GetLogValue(p1) end

--- @param p1 string
--- @param p2 number
--- @return nil
function Client:SetLogValue(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Client:SetStrLogValue(p1, p2) end

--- @param p1 integer
--- @return number
function Client:GetLogIValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogIValueName(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogIValueOutputName(p1) end

--- @param p1 integer
--- @return boolean
function Client:GetLogIsValue(p1) end

--- @return integer
function Client:GetLogValuesCount() end

--- @param p1 string
--- @return string
function Client:GetLogStrValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValue(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValueName(p1) end

--- @param p1 integer
--- @return string
function Client:GetLogStrIValueOutputName(p1) end

--- @param p1 integer
--- @return boolean
function Client:GetLogStrIsValue(p1) end

--- @return integer
function Client:GetLogStrValuesCount() end

--- @return number
function Client:GetTime() end

--- @param p1 string
--- @return number
function Client:GetLogTime(p1) end

--- @return number
function Client:GetFPS() end

--- @param p1 Client
--- @return nil
function Client:ConnectToServer(p1) end

--- @param p1 string
--- @return nil
function Client:SetConnectAddr(p1) end

--- @return string
function Client:GetConnectAddr() end

--- @param p1 string
--- @return boolean
function Client:OpenFolder(p1) end

--- @return integer
function Client:GetScriptsVersion() end

--- @return integer
function Client:GetClientScriptsVersion() end

--- @return nil
function Client:ResendServerLua() end

--- @param p1 Client
--- @param p2 boolean
--- @param p3 boolean
--- @return boolean
function Client:LuaConsole(p1, p2, p3) end

--- @param p1 Client
--- @param p2 boolean
--- @return boolean
function Client:LuaConsole(p1, p2) end

--- @return nil
function Client:LuaOpenDebugger() end

--- @param p1 boolean
--- @return nil
function Client:LuaEnableDebugging(p1) end

--[[
Returns [`Camera`](/api/camera)

[View Documentation](http://docs.atomontage.com/api/Client#Camera-GetCamera)
]]
--- @return Camera
function Client:GetCamera() end

--- @param p1 UIItem
--- @return boolean
function Client:IsContainerEnabledAndVisible(p1) end

--- @return ConnectionInfo
function Client:GetConnectionInfo() end

--- @return NetworkStat
function Client:GetNetworkStat() end

--- @param p1 string
--- @return nil
function Client:Log(p1) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Client:ServerLog(p1, p2) end

--- @param p1 Client
--- @return string
function Client:GetAppCommandLine(p1) end

--- @param p1 Client
--- @return AmStreamingStats
function Client:GetVoxelStreamStats(p1) end

--- @return nil
function Client:OnLuaLog() end

--- @return boolean
function Client:IsClient() end

--- @return boolean
function Client:IsServer() end

--- @param p1 UIItem
--- @return nil
function Client:SelectItemInUICreator(p1) end

--- @param p1 integer
--- @return UIItem
function Client:GetUIItemByUIActionID(p1) end

--- @param p1 integer
--- @return string
function Client:GetUIActionType(p1) end

--- @return userdata
function Client:GetVisibleWindows() end

--- @param p1 string
--- @return userdata
function Client:GetLogValueForPlot(p1) end

--- @return Config
function Client:GetConfigInputActions() end

--- @class Input
Input = {}

--- @return Input
function Input() end

--- @return Input
function Input() end

--- @param p1 integer
--- @return boolean
function Input:KeyDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:Key(p1) end

--- @param p1 integer
--- @return boolean
function Input:KeyUp(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return boolean
function Input:KeyCombDown(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:KeyCombDown(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return boolean
function Input:KeyComb(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:KeyComb(p1, p2) end

--- @return boolean
function Input:ShiftKey() end

--- @return boolean
function Input:CtrlKey() end

--- @return boolean
function Input:AltKey() end

--- @param p1 integer
--- @return string
function Input:GetKeyName(p1) end

--- @param p1 string
--- @return integer
function Input:GetKeyCode(p1) end

--- @return userdata
function Input:GetKeysDown() end

--- @return userdata
function Input:GetKeys() end

--- @return userdata
function Input:GetKeysUp() end

--- @return integer
function Input:GetKeyShortcutsPressedCount() end

--- @param p1 integer
--- @return string
function Input:GetKeyShortcutPressed(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtnDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtn(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseBtnUp(p1) end

--- @return integer
function Input:MouseWheel() end

--- @return Vec2
function Input:MousePos() end

--- @return Vec2
function Input:MousePosLast() end

--- @return Vec2
function Input:MouseMove() end

--- @return Vec2
function Input:MousePosRel() end

--- @return Vec2
function Input:MousePosRelLast() end

--- @return Vec2
function Input:MouseMoveRel() end

--- @return userdata
function Input:GetMouseButtonsDown() end

--- @return userdata
function Input:GetMouseButtons() end

--- @return userdata
function Input:GetMouseButtonsUp() end

--- @return number
function Input:GesturePinch() end

--- @return number
function Input:GestureRotate() end

--- @return Vec2
function Input:GestureMove() end

--- @return integer
function Input:NumFingers() end

--- @param p1 integer
--- @return boolean
function Input:FingerDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:FingerUp(p1) end

--- @param p1 integer
--- @return Vec2
function Input:FingerPos(p1) end

--- @param p1 integer
--- @param p2 ControllerButtons
--- @return boolean
function Input:VrBtnDown(p1, p2) end

--- @param p1 integer
--- @return number
function Input:VrHandTrigger(p1) end

--- @param p1 integer
--- @return number
function Input:VrIndexTrigger(p1) end

--- @param p1 integer
--- @return Vec2
function Input:VrThumbStick(p1) end

--- @param p1 integer
--- @return string
function Input:GetJoyBtnName(p1) end

--- @param p1 integer
--- @return string
function Input:GetJoyAxisName(p1) end

--- @param p1 string
--- @return integer
function Input:GetJoyBtnByName(p1) end

--- @param p1 string
--- @return integer
function Input:GetJoyAxisByName(p1) end

--- @return integer
function Input:GetActiveJoypadID() end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtnDown(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtn(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return boolean
function Input:JoyBtnUp(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return number
function Input:JoyAxis(p1, p2) end

--- @param p1 Input
--- @return table
function Input:GetInputEvents(p1) end

--- @return userdata
function Input:Fingers() end

--- @class Scene
--- @field SysTransform userdata
--- @field SysMeshRender MeshRender
--- @field SysMeshData MeshData
--- @field lighting LightingUpdate
Scene = {}

--- @return number
function Scene:GetTime() end

--- @return number
function Scene:GetTimeDelta() end

--- @return boolean
function Scene:Test() end

--- @return Object
function Scene:CreateObject() end

--- @param p1 Object
--- @return nil
function Scene:DestroyObject(p1) end

--- @param p1 string
--- @return userdata
function Scene:CreateMaterial(p1) end

--- @return nil
function Scene:DebugStats() end

--- @param p1 string
--- @return table
function Scene:GetObjectsByName(p1) end

--- @return table
function Scene:GetAllObjects() end

--- @return table
function Scene:GetRootObjects() end

--- @param p1 string
--- @return table
function Scene:GetObjectsByTag(p1) end

--- @param p1 integer
--- @return Object
function Scene:GetObjectById(p1) end

--- @param p1 string
--- @param p2 integer
--- @return userdata
function Scene:GetNativeComponentById(p1, p2) end

--- @return boolean
function Scene:IsServerReady() end

--- @param p1 string
--- @return nil
function Scene:Save(p1) end

--- @param p1 string
--- @return nil
function Scene:ScheduleLoad(p1) end

--- @return nil
function Scene:RebuildLighting() end

--- @param p1 string
--- @return LightingUpdate
function Scene:CreateLighting(p1) end

--- @param p1 string
--- @return VoxelDB
function Scene:GetVoxelDB(p1) end

--- @class LightingUpdate
--- @field realtimeLighting RealtimeLightingInfo
LightingUpdate = {}

--- @class Frustum
--- @field nearPlane number
--- @field farPlane number
--- @field fovY number
--- @field aspectRatio number
Frustum = {}

--- @return Frustum
function Frustum() end

--- @return Frustum
function Frustum() end

--- @class UIItem
UIItem = {}

--- @return UIItem
function UIItem() end

--- @param p1 string
--- @return UIItem
function UIItem(p1) end

--- @return string
function UIItem:GetID() end

--- @return userdata
function UIItem:GetItems() end

--- @return boolean
function UIItem:IsGrid() end

--- @return integer
function UIItem:GetGridRows() end

--- @return integer
function UIItem:GetGridCols() end

--- @return userdata
function UIItem:GetGridItems() end

--- @return integer
function UIItem:PrepareGridItems() end

--- @return boolean
function UIItem:IsTemplating() end

--- @param p1 UIItem
--- @return nil
function UIItem:PrepareTemplatedItems(p1) end

--- @return table
function UIItem:GetLuaItem() end

--- @class V2i
--- @field x integer
--- @field y integer
V2i = {}

--- @return V2i
function Vec2i() end

--- @param p1 integer
--- @param p2 integer
--- @return V2i
function Vec2i(p1, p2) end

--- @param p1 integer
--- @return V2i
function Vec2i(p1) end

--- @return V2i
function Vec2i() end

--- @param p1 structAsObject
--- @return V2i
function Vec2i(p1) end

--- @param p1 structAsRawPointegerer
--- @return V2i
function Vec2i(p1) end

--- @return V2i
function Vec2i() end

--- @param p1 structAsObject
--- @return V2i
function Vec2i(p1) end

--- @param p1 structAsRawPointegerer
--- @return V2i
function Vec2i(p1) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function V2i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function V2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function V2i:__unm(p1, p2) end

--- @class Mat4
Mat4 = {}

--- @return Mat4
function Mat4() end

--- @param p1 Mat4
--- @return Mat4
function Mat4(p1) end

--- @return Mat4
function Mat4() end

--- @class MeshDataBuilder
--- @field static boolean
--- @field dynamic boolean
--- @field streamed boolean
--- @field topology PrimitiveTopology
MeshDataBuilder = {}

--- @return MeshDataBuilder
function MeshDataBuilder() end

--- @return MeshDataBuilder
function MeshDataBuilder() end

--- @return nil
function MeshDataBuilder:Clear() end

--- @param p1 Vec3
--- @param p2 Vec4
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @param p3 Vec4
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @return integer
function MeshDataBuilder:AddVertex(p1, p2) end

--- @param p1 Vec3
--- @return integer
function MeshDataBuilder:AddVertex(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2) end

--- @param p1 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1) end

--[[

See also: [Component](Component)

All script methods are optional.

| Function | Description |
| - | - |
| `Attach(self)` | Called on script instance initialization. Usually after changing `.instance` or `.file` property |
| `Start(self)` | Called once before the first Update |
| `Update(self, dt, t)` | Called if updates are enabled (they are enabled automatically if attached script has this method). dt is frame time delta in seconds and t is application time in seconds. |
| `Detach(self)` | Called on script release. Usually on object destruction or to release old script instance during change of `.instance` or `.file` property |


```lua
local script = {}

function script:Attach()
   print("attached") 
end

function script:Detach()
   print("detached") 
end

function script:Start()
   print("starting") 
end

function script:Update(dt, t)
   
end

return script
```


You can also set script directly as lua table assigning it to `.instance` property. For example:

```lua
function SpawnScriptObject()
	local obj = Scene:CreateObject()
	obj.name = "LocalScript"

	local sc = obj:AddComponent('Script')
sc.instance = {
		n=10,
		Update=function(self)
			print("Self destruct in "..self.n)
			self.n = self.n - 1
			if self.n == 0 then
				Scene:DestroyObject(self.component.object)
			end
		end
	}	
	return obj	
end
```

[View Documentation](http://docs.atomontage.com/api/ScriptComponent)
]]
--- @class ScriptComponent
--- @field type string
--- @field object Object
--- @field fileName string
--- @field isValid boolean
--- @field instance table
--- @field file string
ScriptComponent = {}

--- @return ScriptComponent
function ScriptComponent() end

--- @class Transformation
--- @field position Vec3
--- @field rotation Rotation
Transformation = {}

--- @return Transformation
function Transformation() end

--- @param p1 Rotation
--- @param p2 Vec3
--- @return Transformation
function Transformation(p1, p2) end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @return Transformation
function Transformation() end

--- @return Transformation
function Transformation() end

--- @param p1 structAsObject
--- @return Transformation
function Transformation(p1) end

--- @class Camera
--- @field transformation Transformation
--- @field transform Transformation
Camera = {}

--- @param p1 string
--- @return Camera
function Camera(p1) end

--- @param p1 Object3D
--- @return Transformation
function Camera:GetTransformation(p1) end

--- @param p1 Transformation
--- @return nil
function Camera:SetTransformation(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveUp(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:Rotate(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetForward(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetRight(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetUp(p1) end

--- @param p1 Object3D
--- @return Mat4
function Camera:GetLtw(p1) end

--- @param p1 Object3D
--- @return Vec3
function Camera:GetPosition(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:SetPosition(p1) end

--- @return Transformation
function Camera:GetTransformation() end

--- @param p1 Transformation
--- @return nil
function Camera:SetTransformation(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Camera:MoveUp(p1) end

--- @param p1 Vec3
--- @return nil
function Camera:Rotate(p1) end

--- @return Vec3
function Camera:GetForward() end

--- @return Vec3
function Camera:GetRight() end

--- @return Vec3
function Camera:GetUp() end

--- @return Mat4
function Camera:GetLtw() end

--- @return Vec3
function Camera:GetPosition() end

--- @param p1 Vec3
--- @return nil
function Camera:SetPosition(p1) end

--- @return Frustum
function Camera:GetFrustum() end

--- @param p1 Frustum
--- @return nil
function Camera:SetFrustum(p1) end

--- @return Mat4
function Camera:GetProjection() end

--- @param p1 Vec2
--- @return Vec3
function Camera:GetRay(p1) end

--- @param p1 number
--- @return nil
function Camera:SetFovY(p1) end

--- @return number
function Camera:GetFovY() end

--- @class MeshRender
--- @field material userdata
--- @field type string
--- @field object Object
MeshRender = {}

--- @class MeshData
--- @field file string
--- @field data MeshDataBuilder
--- @field type string
--- @field object Object
MeshData = {}

--- @class Angle
--- @field sine number
--- @field cosine number
Angle = {}

--- @return Angle
function Angle() end

--- @param p1 number
--- @param p2 number
--- @return Angle
function Angle(p1, p2) end

--- @param p1 number
--- @return Angle
function Angle(p1) end

--- @return Angle
function Angle() end

--- @param p1 Angle
--- @param p2 Angle
--- @return boolean
function Angle:__eq(p1, p2) end

--- @param p1 number
--- @return nil
function Angle:Set(p1) end

--- @return number
function Angle:Get() end

--- @class Object3D
--- @field transformation Transformation
Object3D = {}

--- @param p1 string
--- @return Object3D
function Object3D(p1) end

--- @param p1 Object3D
--- @return Transformation
function Object3D:GetTransformation(p1) end

--- @param p1 Transformation
--- @return nil
function Object3D:SetTransformation(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveForward(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveRight(p1) end

--- @param p1 number
--- @return nil
function Object3D:MoveUp(p1) end

--- @param p1 Vec3
--- @return nil
function Object3D:Rotate(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetForward(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetRight(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetUp(p1) end

--- @param p1 Object3D
--- @return Mat4
function Object3D:GetLtw(p1) end

--- @param p1 Object3D
--- @return Vec3
function Object3D:GetPosition(p1) end

--- @param p1 Vec3
--- @return nil
function Object3D:SetPosition(p1) end

--- @class VoxelDB
--- @field autoLightingUpdate boolean
--- @field voxelDim integer
VoxelDB = {}

--- @return VoxelDB
function VoxelDB() end

--- @return nil
function VoxelDB:Clear() end

--- @return nil
function VoxelDB:UseTemporaryLayers() end

--- @return nil
function VoxelDB:Flush() end

--- @param p1 number
--- @return integer
function VoxelDB:FromWorld(p1) end

--- @param p1 Vec3
--- @return Vec3i
function VoxelDB:FromWorld(p1) end

--- @param p1 number
--- @return number
function VoxelDB:ToWorld(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:ToWorld(p1) end

--- @param p1 Vec3i
--- @param p2 boolean
--- @return nil
function VoxelDB:SetMask(p1, p2) end

--- @param p1 Vec3i
--- @return boolean
function VoxelDB:GetMask(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return nil
function VoxelDB:SetColor(p1, p2) end

--- @param p1 Vec3i
--- @return userdata
function VoxelDB:GetColor(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetNormal(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetFilteredNormal(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRay(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:PaintSphere(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return nil
function VoxelDB:PaintSphereBlend(p1, p2, p3, p4, p5, p6) end

--- @param p1 integer
--- @param p2 Vec3i
--- @param p3 integer
--- @return nil
function VoxelDB:ClearShape(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return nil
function VoxelDB:ClearSphere(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @return nil
function VoxelDB:InflateRadius(p1, p2, p3, p4, p5) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:MakeSphere(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 number
--- @return nil
function VoxelDB:InstantiateIE(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRayTmp(p1, p2, p3) end

--- @param p1 integer
--- @return nil
function VoxelDB:FreeTmpLayers(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @return nil
function VoxelDB:FillTmpLayers(p1, p2, p3, p4) end

--- @return nil
function VoxelDB:ClearContent() end

--- @param p1 string
--- @return boolean
function VoxelDB:Load(p1) end

--- @param p1 boolean
--- @return nil
function VoxelDB:RebuildLods(p1) end

--- @param p1 string
--- @param p2 string
--- @return boolean
function VoxelDB:CopyLayer(p1, p2) end

--- @param p1 string
--- @return boolean
function VoxelDB:ClearLayer(p1) end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsC32() end

--- @return nil
function VoxelDB:RemoveHiddenVoxelsN16() end

--- @return table
function VoxelDB:GetInfo() end

--- @param p1 VoxelDB
--- @return nil
function VoxelDB:CopyTo(p1) end

--- @param p1 string
--- @param p2 string
--- @param p3 integer
--- @return boolean
function VoxelDB:Save(p1, p2, p3) end

