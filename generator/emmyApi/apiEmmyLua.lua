--- @meta

--- @class Script
--- @field component ScriptComponent
--- @field onServer boolean
--- @field onClient boolean
script = {}

-- Called on script instance initialization. Usually after changing `.instance` or `.file` property
function script:Attach() end

-- Called on script release. Usually on object destruction or to release old script instance during change of `.instance` or `.file` property
function script:Detach() end

-- Called once before the first Update
function script:Start() end

-- Called if updates are enabled (they are enabled automatically if attached script has this method). dt is frame time delta in seconds and t is application time in seconds.
--- @param dt number delta time since last update
function script:Update(dt) end

--- @class ControllerButtons
ControllerButtons = {}

--[[
`Client`
`Server`

alksjdlkajsdkljalkjd asdalksd

[View Documentation](https://docs.atomontage.com/api/Angle)
]]
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

--- @param p1 Angle
--- @param p2 Angle
--- @return boolean
function Angle:__eq(p1, p2) end

--- @param p1 number
--- @return nil
function Angle:Set(p1) end

--- @return number
function Angle:Get() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/AssetManager)
]]
--- @class AssetManager
AssetManager = {}

--- @param p1 AssetManager
--- @return userdata
function AssetManager:GetAssets(p1) end

--- @param p1 string
--- @return ResResource
function AssetManager:Get(p1) end

--- @param p1 type
--- @param p2 string
--- @return boolean
function AssetManager:AddAsset(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return boolean
function AssetManager:AddAsset(p1, p2) end

--- @param p1 ResResource
--- @return type
function AssetManager:GetResourceType(p1) end

--- @param p1 type
--- @return boolean
function AssetManager:IsAssetType(p1) end

--- @param p1 AssetManager
--- @return table
function AssetManager:GetAssetTypes(p1) end

--- @param p1 AssetManager
--- @return string
function AssetManager:GetAssetsPath(p1) end

--- @param p1 AssetManager
--- @return string
function AssetManager:GetFilePath(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Camera)
]]
--- @class Camera
--- @field transformation Transformation
--- @field transform Transformation
Camera = {}

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

--[[
`Client`
:::info Client Only
This class is only available on client
:::


blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab blallblalb lalal bal babl aabab

[View Documentation](https://docs.atomontage.com/api/Client)
]]
--- @class Client
--- @field platform string
--- @field sysInfo string
Client = {}

--- @param message table
--- @return nil
function Client:SendMessage(message) end

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

[View Documentation](https://docs.atomontage.com/api/Client#void-SendMessages-table-tableOfMessages)
]]
--- @param tableOfMessages table
--- @return nil
function Client:SendMessages(tableOfMessages) end

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

[View Documentation](https://docs.atomontage.com/api/Client#table-ReceiveMessages)
]]
--- @return table
function Client:ReceiveMessages() end

--- @param actionID integer
--- @param item UIItem
--- @param value userdata
--- @return string
function Client:UIItemUpdate(actionID, item, value) end

--- @param keyActionID string
--- @return nil
function Client:OpenKeyboardShortcutInput(keyActionID) end

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

--- @param windowID string
--- @return nil
function Client:OpenUIWindow(windowID) end

--- @param windowID string
--- @return nil
function Client:CloseUIWindow(windowID) end

--- @param windowID string
--- @return nil
function Client:ToggleUIWindow(windowID) end

--- @param windowID string
--- @return boolean
function Client:IsWindowOpen(windowID) end

--- @param p1 string
--- @return nil
function Client:OpenScriptFile(p1) end

--- @param p1 string
--- @param p2 integer
--- @return nil
function Client:OpenScriptFile(p1, p2) end

--- @param scale number
--- @return nil
function Client:SetUIScale(scale) end

--- @return number
function Client:GetUIScale() end

--- @return boolean
function Client:GetUIScaleAuto() end

--- @param autoScale boolean
--- @return nil
function Client:SetUIScaleAuto(autoScale) end

--- @return string
function Client:GetMontageURL() end

--- @param url string
--- @return nil
function Client:SetMontageURL(url) end

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
--- @return userdata
function Client:GetLogValueForPlot(p1) end

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

--- @return Config
function Client:GetConfigInputActions() end

--- @param p1 Client
--- @return nil
function Client:ConnectToServer(p1) end

--- @param folder string
--- @return boolean
function Client:OpenFolder(folder) end

--- @return integer
function Client:GetScriptsVersion() end

--- @return integer
function Client:GetClientScriptsVersion() end

--- @return nil
function Client:ResendServerLua() end

--- @return nil
function Client:ReloadLua() end

--- @return nil
function Client:LuaOpenDebugger() end

--- @param enable boolean
--- @return nil
function Client:LuaEnableDebugging(enable) end

--- @return nil
function Client:OnLuaLog() end

--- @return nil
function Client:ScrollToLastestLuaLog() end

--[[
Returns [`Camera`](/api/camera)

[View Documentation](https://docs.atomontage.com/api/Client#Camera-GetCamera)
]]
--- @return Camera
function Client:GetCamera() end

--- @return userdata
function Client:GetVisibleWindows() end

--- @param uiItem UIItem
--- @return boolean
function Client:IsContainerEnabledAndVisible(uiItem) end

--- @return table
function Client:GetConnectionInfo() end

--- @return table
function Client:GetNetworkStat() end

--- @param p1 string
--- @return nil
function Client:Log(p1) end

--- @return table
function Client:GetVoxelStreamStats() end

--- @return boolean
function Client:IsClient() end

--- @return boolean
function Client:IsServer() end

--- @param uiItem UIItem
--- @return nil
function Client:SelectItemInUICreator(uiItem) end

--- @param uiActionID integer
--- @return UIItem
function Client:GetUIItemByUIActionID(uiActionID) end

--- @param uiActionID integer
--- @return string
function Client:GetUIActionType(uiActionID) end

--- @param uiActionID integer
--- @return string
function Client:GetUIActionScript(uiActionID) end

--- @return integer
function Client:GetCurrentUIActionID() end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @param p6 number
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5, p6) end

--- @param p1 string
--- @param p2 Vec2
--- @return nil
function Client:WriteToScreen(p1, p2) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @return nil
function Client:WriteToScreen(p1, p2, p3) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5) end

--- @return nil
function Client:CloseApp() end

--- @return number
function Client:GetDeltaTime() end

--- @return number
function Client:GetTotalTime() end

--- @return Camera
function Client:GetMainCamera() end

--- @return string
function Client:GetEULA() end

--- @return Vec2
function Client:GetViewportSize() end

--- @return CommandLine
function Client:GetCommandLine() end

--- @return Vec4
function Client:GetBGColor() end

--- @param p1 Vec4
--- @return nil
function Client:SetBGColor(p1) end

--- @return boolean
function Client:GetVREnabled() end

--- @param p1 boolean
--- @param p2 string
--- @return nil
function Client:SetVREnabled(p1, p2) end

--- @param p1 string
--- @return nil
function Client:ToggleVREnabled(p1) end

--- @return nil
function Client:TriggerCrash() end

--- @return nil
function Client:TriggerException() end

--- @return nil
function Client:TriggerCriticalError() end

--- @return AssetManager
function Client:GetResourceManScene() end

--- @return AssetManager
function Client:GetResourceManUI() end

--- @return AssetManager
function Client:GetResourceManSettings() end

--- @return nil
function Client:ToggleChannelRendering() end

--- @return nil
function Client:SaveEntityPath() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/CommandLine)
]]
--- @class CommandLine
CommandLine = {}

--- @param p1 string
--- @return boolean
function CommandLine:HasOption(p1) end

--- @param p1 string
--- @param p2 number
--- @return number
function CommandLine:GetOptionFloat(p1, p2) end

--- @param p1 string
--- @param p2 integer
--- @return integer
function CommandLine:GetOptionInt(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return string
function CommandLine:GetOption(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function CommandLine:GetOptionVec3(p1, p2) end

--[[
`Client`
`Server`

See also: [ScriptComponent](ScriptComponent)

[View Documentation](https://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field type string
--- @field object Object
Component = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Config)
]]
--- @class Config
Config = {}

--- @param p1 string
--- @param p2 integer
--- @return nil
function Config:SetInt(p1, p2) end

--- @param p1 string
--- @param p2 number
--- @return nil
function Config:SetFloat(p1, p2) end

--- @param p1 string
--- @param p2 boolean
--- @return nil
function Config:SetBool(p1, p2) end

--- @param p1 string
--- @param p2 string
--- @return nil
function Config:SetString(p1, p2) end

--- @param p1 string
--- @param p2 Vec2
--- @return nil
function Config:SetVec2(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return nil
function Config:SetVec3(p1, p2) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function Config:SetVec4(p1, p2) end

--- @param p1 string
--- @return nil
function Config:Del(p1) end

--- @param p1 string
--- @return boolean
function Config:Exists(p1) end

--- @param p1 string
--- @return integer
function Config:GetInt(p1) end

--- @param p1 string
--- @param p2 integer
--- @return integer
function Config:GetInt(p1, p2) end

--- @param p1 string
--- @return number
function Config:GetFloat(p1) end

--- @param p1 string
--- @param p2 number
--- @return number
function Config:GetFloat(p1, p2) end

--- @param p1 string
--- @return boolean
function Config:GetBool(p1) end

--- @param p1 string
--- @param p2 boolean
--- @return boolean
function Config:GetBool(p1, p2) end

--- @param p1 string
--- @return string
function Config:GetString(p1) end

--- @param p1 string
--- @param p2 string
--- @return string
function Config:GetString(p1, p2) end

--- @param p1 string
--- @return Vec2
function Config:GetVec2(p1) end

--- @param p1 string
--- @param p2 Vec2
--- @return Vec2
function Config:GetVec2(p1, p2) end

--- @param p1 string
--- @return Vec3
function Config:GetVec3(p1) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function Config:GetVec3(p1, p2) end

--- @param p1 string
--- @return Vec4
function Config:GetVec4(p1) end

--- @param p1 string
--- @param p2 Vec4
--- @return Vec4
function Config:GetVec4(p1, p2) end

--- @param p1 Config
--- @return table
function Config:GetAllValuesStringified(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Frustum)
]]
--- @class Frustum
--- @field nearPlane number
--- @field farPlane number
--- @field fovY number
--- @field aspectRatio number
Frustum = {}

--- @return Frustum
function Frustum() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Input)
]]
--- @class Input
Input = {}

--- @return table
function Input:GetEvents() end

--- @param p1 string
--- @return boolean
function Input:KeyDown(p1) end

--- @param p1 string
--- @return boolean
function Input:Key(p1) end

--- @param p1 string
--- @return boolean
function Input:KeyUp(p1) end

--- @return table
function Input:KeyCombosDown() end

--- @param p1 string
--- @return boolean
function Input:KeyComboDown(p1) end

--- @param p1 string
--- @param p2 string
--- @param p3 string
--- @return boolean
function Input:KeyComboDown(p1, p2, p3) end

--- @param p1 string
--- @param p2 string
--- @return boolean
function Input:KeyComboDown(p1, p2) end

--- @param p1 string
--- @return boolean
function Input:KeyCombo(p1) end

--- @param p1 string
--- @param p2 string
--- @param p3 string
--- @return boolean
function Input:KeyCombo(p1, p2, p3) end

--- @param p1 string
--- @param p2 string
--- @return boolean
function Input:KeyCombo(p1, p2) end

--- @return boolean
function Input:ShiftKey() end

--- @return boolean
function Input:CtrlKey() end

--- @return boolean
function Input:AltKey() end

--- @param p1 integer
--- @return boolean
function Input:MouseButtonDown(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseButton(p1) end

--- @param p1 integer
--- @return boolean
function Input:MouseButtonUp(p1) end

--- @return integer
function Input:MouseWheel() end

--- @return Vec2
function Input:MousePos() end

--- @return Vec2
function Input:MousePosLast() end

--- @return Vec2
function Input:MouseMove() end

--- @return Vec2
function Input:MousePosPerc() end

--- @return Vec2
function Input:MousePosPercLast() end

--- @return Vec2
function Input:MouseMovePerc() end

--- @return boolean
function Input:GetRelativeMouseMode() end

--- @param p1 boolean
--- @return nil
function Input:SetRelativeMouseMode(p1) end

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

--- @return userdata
function Input:Fingers() end

--- @param p1 integer
--- @return boolean
function Input:FingerUp(p1) end

--- @param p1 integer
--- @return Vec2
function Input:FingerPos(p1) end

--- @param p1 integer
--- @param p2 VRControllerButton
--- @return boolean
function Input:VRButton(p1, p2) end

--- @param p1 integer
--- @return number
function Input:VRHandTrigger(p1) end

--- @param p1 integer
--- @return number
function Input:VRIndexTrigger(p1) end

--- @param p1 integer
--- @return Vec2
function Input:VRThumbStick(p1) end

--- @return userdata
function Input:Gamepads() end

--- @return userdata
function Input:GetActiveGamepad() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/LightingUpdate)
]]
--- @class LightingUpdate
--- @field realtimeLighting RealtimeLightingInfo
LightingUpdate = {}

--- @class Mat3
--- @field xaxis Vec3
--- @field yaxis Vec3
--- @field zaxis Vec3
--- @field row1 Vec3
--- @field row2 Vec3
--- @field row3 Vec3
Mat3 = {}

--- @return Mat3
function Mat3() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Mat3
--- @return Mat3
function Mat3(p1) end

--- @param p1 Mat3
--- @param p2 integer
--- @return Vec3
function Mat3:__index(p1, p2) end

--- @param p1 Mat3
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function Mat3:__newindex(p1, p2, p3) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return Mat3
function Mat3:__add(p1, p2) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return Mat3
function Mat3:__sub(p1, p2) end

--- @param p1 Mat3
--- @return Mat3
function Mat3:__unm(p1) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return boolean
function Mat3:__eq(p1, p2) end

--- @class Mat4
--- @field xaxis Vec4
--- @field yaxis Vec4
--- @field zaxis Vec4
--- @field translation Vec4
--- @field row1 Vec4
--- @field row2 Vec4
--- @field row3 Vec4
--- @field row4 Vec4
Mat4 = {}

--- @return Mat4
function Mat4() end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Mat4
--- @return Mat4
function Mat4(p1) end

--- @param p1 Mat4
--- @param p2 integer
--- @return Vec4
function Mat4:__index(p1, p2) end

--- @param p1 Mat4
--- @param p2 integer
--- @param p3 Vec4
--- @return nil
function Mat4:__newindex(p1, p2, p3) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return Mat4
function Mat4:__add(p1, p2) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return Mat4
function Mat4:__sub(p1, p2) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return boolean
function Mat4:__eq(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Material)
]]
--- @class Material
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
--- @param p2 Vec3
--- @return nil
function Material:SetProperty(p1, p2) end

--- @param p1 string
--- @param p2 Vec4
--- @return nil
function Material:SetProperty(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshData)
]]
--- @class MeshData
--- @field file string
--- @field data MeshDataBuilder
--- @field type string
--- @field object Object
MeshData = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshDataBuilder)
]]
--- @class MeshDataBuilder
--- @field static boolean
--- @field dynamic boolean
--- @field streamed boolean
--- @field topology PrimitiveTopology
MeshDataBuilder = {}

--- @return MeshDataBuilder
function MeshDataBuilder() end

--- @return nil
function MeshDataBuilder:Clear() end

--- @param p1 Vec3
--- @return integer
function MeshDataBuilder:AddVertex(p1) end

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

--- @param p1 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return nil
function MeshDataBuilder:AddIndex(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshRender)
]]
--- @class MeshRender
--- @field material userdata
--- @field type string
--- @field object Object
MeshRender = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MontageComponent)
]]
--- @class MontageComponent
--- @field type string
--- @field object Object
--- @field montageId string
MontageComponent = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/NativeComponent)
]]
--- @class NativeComponent
--- @field type string
--- @field object Object
NativeComponent = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Object)
]]
--- @class Object
--- @field name string
--- @field tag string
--- @field id integer
--- @field isDestroyed boolean
--- @field componentsCount integer
--- @field update boolean
--- @field active boolean
--- @field transform Transform
--- @field dontSave boolean
Object = {}

--- @param p1 Object
--- @return nil
function Object:RemoveAllNonNativeComponents(p1) end

--- @param p1 string
--- @return userdata
function Object:AddComponent(p1) end

--- @param p1 integer
--- @return userdata
function Object:GetComponent(p1) end

--- @return table
function Object:GetComponents() end

--- @param p1 string
--- @return userdata
function Object:RemoveComponent(p1) end

--- @param p1 string
--- @return userdata
function Object:GetComponentByType(p1) end

--- @param p1 string
--- @return table
function Object:GetComponentsByType(p1) end

--- @param p1 string
--- @return ScriptComponent
function Object:FindScriptComponentByName(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Object3D)
]]
--- @class Object3D
--- @field transformation Transformation
Object3D = {}

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

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Quat)
]]
--- @class Quat
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field identity Quat
--- @field euler Vec3
--- @field mat3 Mat3
--- @field mat4 Mat4
--- @field angle number
--- @field axis Vec3
--- @field conjugate Quat
--- @field inverse Quat
--- @field length number
--- @field normalized Quat
--- @field pitch number
--- @field yaw number
--- @field roll number
Quat = {}

--[[
dddd

[View Documentation](https://docs.atomontage.com/api/Quat#float-index-Vec3-int)
]]
--- @param p1 Vec3
--- @param p2 integer
--- @return number
function Quat:__index(p1, p2) end

--[[
asdasdasdasdasd

[View Documentation](https://docs.atomontage.com/api/Quat#Quat)
]]
--- @return Quat
function Quat() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Quat
function Quat(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @return Quat
function Quat(p1) end

--- @param p1 Quat
--- @return Quat
function Quat(p1) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Quat
function Quat(p1, p2) end

--- @param p1 Quat
--- @param p2 integer
--- @return number
function Quat:__index(p1, p2) end

--- @param p1 Quat
--- @param p2 integer
--- @param p3 number
--- @return nil
function Quat:__newindex(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @return Quat
function Quat:__add(p1, p2) end

--- @param p1 Quat
--- @param p2 Quat
--- @return Quat
function Quat:__sub(p1, p2) end

--- @param p1 Quat
--- @param p2 Quat
--- @return Quat
function Quat:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Quat
--- @return Quat
function Quat:__mul(p1, p2) end

--- @param p1 Quat
--- @param p2 number
--- @return Quat
function Quat:__mul(p1, p2) end

--- @param p1 Quat
--- @param p2 Vec4
--- @return Vec4
function Quat:__mul(p1, p2) end

--- @param p1 Quat
--- @param p2 Vec3
--- @return Vec3
function Quat:__mul(p1, p2) end

--- @param p1 Quat
--- @param p2 number
--- @return Quat
function Quat:__div(p1, p2) end

--- @param p1 Quat
--- @return Quat
function Quat:__unm(p1) end

--- @param p1 Quat
--- @param p2 Quat
--- @return boolean
function Quat:__eq(p1, p2) end

--- @param p1 Vec3
--- @return Quat
function Quat:Euler(p1) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat:AngleAxis(p1, p2) end

--- @param p1 Quat
--- @return number
function Quat:Dot(p1) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat:Lerp(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat:Mix(p1, p2, p3) end

--- @return nil
function Quat:Normalize() end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat:Slerp(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec3
--- @return nil
function Quat:Rotate(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat:GetRotated(p1, p2) end

--- @param p1 Vec3
--- @return Quat
function Quat:LookAt(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Quat
function Quat:LookAt(p1, p2) end

--- @return nil
function Quat:Invert() end

--- @return Quat
function Quat:GetInversed() end

--- @param p1 Quat
--- @return number
function Quat:DotProd(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/RealtimeLightingInfo)
]]
--- @class RealtimeLightingInfo
--- @field directional boolean
--- @field shadows boolean
--- @field ambientOcclusion boolean
--- @field diffuseSamples integer
--- @field ambientColor Vec3
--- @field diffuseColor Vec3
--- @field lightDir Vec3
--- @field ambientSamples integer
--- @field diffuseRayLength number
--- @field ambientRayLength number
--- @field taskBoxScale integer
RealtimeLightingInfo = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/ResResource)
]]
--- @class ResResource
ResResource = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Rotation)
]]
--- @class Rotation
--- @field angles Vec3
Rotation = {}

--- @return Rotation
function Rotation() end

--- @param p1 Vec3
--- @return Rotation
function Rotation(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Scene)
]]
--- @class Scene
--- @field lighting LightingUpdate
Scene = {}

--- @return number
function Scene:GetTime() end

--- @return number
function Scene:GetTimeDelta() end

--- @return number
function Scene:GetDebugTime() end

--- @return boolean
function Scene:Test() end

--- @return Object
function Scene:CreateObject() end

--- @param p1 Object
--- @return Object
function Scene:CloneObject(p1) end

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

--- @return boolean
function Scene:IsServerReady() end

--- @return boolean
function Scene:GetAmFileLoaded() end

--- @return nil
function Scene:SetAmFileLoaded() end

--- @param p1 string
--- @return boolean
function Scene:Save(p1) end

--- @param p1 string
--- @return integer
function Scene:Merge(p1) end

--- @param p1 string
--- @return nil
function Scene:ScheduleLoad(p1) end

--- @return nil
function Scene:RebuildLighting() end

--- @param p1 string
--- @param p2 string
--- @return LightingUpdate
function Scene:CreateLighting(p1, p2) end

--- @param p1 string
--- @return VoxelDB
function Scene:GetVoxelDB(p1) end

--[[
`Client`
`Server`

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

[View Documentation](https://docs.atomontage.com/api/ScriptComponent)
]]
--- @class ScriptComponent
--- @field type string
--- @field object Object
--- @field isValid boolean
--- @field instance table
--- @field file string
--- @field syncToClient boolean
--- @field name string
ScriptComponent = {}

--- @return boolean
function ScriptComponent:GetSyncToClient() end

--- @param p1 boolean
--- @return nil
function ScriptComponent:SetSyncToClient(p1) end

--- @param p1 string
--- @param p2 table
--- @return nil
function ScriptComponent:SendMessage(p1, p2) end

--- @param p1 string
--- @param p2 table
--- @param p3 integer
--- @return nil
function ScriptComponent:SendMessage(p1, p2, p3) end

--[[
`Server`
:::info Server Only
This class is only available on server
:::

[View Documentation](https://docs.atomontage.com/api/Server)
]]
--- @class Server
Server = {}

--- @return table
function Server:GetClients() end

--- @param toClientID integer
--- @param messages table
--- @return nil
function Server:SendMessages(toClientID, messages) end

--- @return table
function Server:ReceiveMessages() end

--- @return integer
function Server:GetScriptsVersion() end

--- @return nil
function Server:ResendScripts() end

--- @return boolean
function Server:ReloadScripts() end

--- @return userdata
function Server:GetVoxelClientIDs() end

--- @param clientID integer
--- @return table
function Server:GetVoxelStreamStats(clientID) end

--- @return table
function Server:GetServerConnectionInfo() end

--- @return table
function Server:GetConnectionInfos() end

--- @return table
function Server:GetNetworkStat() end

--- @return userdata
function Server:GetNetworkStats() end

--- @return nil
function Server:OnLuaLog() end

--- @return boolean
function Server:IsClient() end

--- @return boolean
function Server:IsServer() end

--- @return integer
function Server:GetCurrentUIActionID() end

--- @return nil
function Server:ScrollToLastestLuaLog() end

--- @return CommandLine
function Server:GetCommandLine() end

--- @return AssetManager
function Server:GetResourceManScene() end

--- @return AssetManager
function Server:GetResourceManUI() end

--- @return AssetManager
function Server:GetResourceManSettings() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/SkyboxComponent)
]]
--- @class SkyboxComponent
--- @field type string
--- @field object Object
--- @field cloudScale number
--- @field cloudOffset number
--- @field cloudSlope number
--- @field sunAzimuth number
--- @field sunAltitude number
--- @field rayleighCoeff Vec3
--- @field mieCoeff number
--- @field render boolean
SkyboxComponent = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/StaticVoxelDataComponent)
]]
--- @class StaticVoxelDataComponent
--- @field type string
--- @field object Object
--- @field resource string
--- @field isLoaded boolean
StaticVoxelDataComponent = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Transform)
]]
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

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Transformation)
]]
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

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/UIItem)
]]
--- @class UIItem
UIItem = {}

--- @return string
function UIItem:GetID() end

--- @return string
function UIItem:GetType() end

--- @return string
function UIItem:GetLabel() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2)
]]
--- @class Vec2
--- @field x number
--- @field y number
--- @field zero Vec2
Vec2 = {}

--- @return Vec2
function Vec2() end

--- @param p1 number
--- @return Vec2
function Vec2(p1) end

--- @param p1 number
--- @param p2 number
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 Vec2
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2i
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2
--- @param p2 integer
--- @return number
function Vec2:__index(p1, p2) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec2:__newindex(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__add(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__sub(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mul(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__mul(p1, p2) end

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
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__div(p1, p2) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:__unm(p1) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return boolean
function Vec2:__eq(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return boolean
function Vec2:__eq(p1, p2) end

--- @param p1 Vec2
--- @return number
function Vec2:__len(p1) end

--- @return number
function Vec2:Len() end

--- @return number
function Vec2:SqrLength() end

--- @return boolean
function Vec2:IsZero() end

--- @return number
function Vec2:GetMinComponent() end

--- @return number
function Vec2:GetMaxComponent() end

--- @param p1 number
--- @return boolean
function Vec2:IsWithin(p1) end

--- @return Vec2
function Vec2:GetAbs() end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec2:Clamp(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 Vec2
--- @return nil
function Vec2:Clamp(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec2
function Vec2:GetClamped(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 Vec2
--- @return Vec2
function Vec2:GetClamped(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return number
function Vec2:Dot(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return number
function Vec2:Dot(p1, p2) end

--- @return boolean
function Vec2:IsAnyNaN() end

--- @param p1 Vec2
--- @param p2 Vec2
--- @param p3 number
--- @return Vec2
function Vec2:Lerp(p1, p2, p3) end

--- @return Vec2
function Vec2:Normalize() end

--- @return Vec2
function Vec2:NormalizeSafe() end

--- @return Vec2
function Vec2:GetNormalized() end

--- @return Vec2
function Vec2:GetNormalizedSafe() end

--- @param p1 Vec2
--- @return nil
function Vec2:Ceil(p1) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetCeiled(p1) end

--- @param p1 Vec2
--- @return nil
function Vec2:Floor(p1) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetFloored(p1) end

--- @return nil
function Vec2:Round() end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetRounded(p1) end

--- @param p1 Vec2
--- @return number
function Vec2:DistanceTo(p1) end

--- @return Angle
function Vec2:GetAngle() end

--- @return number
function Vec2:GetAngleRad() end

--- @param p1 number
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 Angle
--- @return nil
function Vec2:Rotate(p1) end

--- @param p1 number
--- @return Vec2
function Vec2:GetRotated(p1) end

--- @param p1 Angle
--- @return Vec2
function Vec2:GetRotated(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2i)
]]
--- @class Vec2i
--- @field x integer
--- @field y integer
--- @field zero Vec2i
Vec2i = {}

--- @return Vec2i
function Vec2i() end

--- @param p1 integer
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec2
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return integer
function Vec2i:__index(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec2i:__newindex(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__add(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__add(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__sub(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__sub(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mul(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__div(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__div(p1, p2) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i:__unm(p1) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return boolean
function Vec2i:__eq(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return boolean
function Vec2i:__eq(p1, p2) end

--- @param p1 Vec2i
--- @return integer
function Vec2i:__len(p1) end

--- @return integer
function Vec2i:Len() end

--- @return integer
function Vec2i:SqrLength() end

--- @return boolean
function Vec2i:IsZero() end

--- @return integer
function Vec2i:GetMinComponent() end

--- @return integer
function Vec2i:GetMaxComponent() end

--- @param p1 integer
--- @return boolean
function Vec2i:IsWithin(p1) end

--- @return Vec2i
function Vec2i:GetAbs() end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec2i:Clamp(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 Vec2i
--- @return nil
function Vec2i:Clamp(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return Vec2i
function Vec2i:GetClamped(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @param p3 Vec2i
--- @return Vec2i
function Vec2i:GetClamped(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return integer
function Vec2i:Dot(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return number
function Vec2i:Dot(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__band(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__band(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__band(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__bor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bxor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__bxor(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__bxor(p1, p2) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i:__bnot(p1) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__shl(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__shl(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--[[
`Client`
`Server`

Representation of 3D vectors and points.

This structure is used throughout Atomontage to pass 3D positions and directions around. It also contains functions for doing common vector operations.

:::tip My tip

Wwo!!

:::

:::danger Take care

This action is dangerous

:::

[View Documentation](https://docs.atomontage.com/api/Vec3)
]]
--- @class Vec3
--- @field x number
--- @field y number
--- @field z number
--- @field zero Vec3
--- @field up Vec3
--- @field right Vec3
--- @field forward Vec3
--- @field down Vec3
--- @field left Vec3
--- @field back Vec3
Vec3 = {}

--- @return Vec3
function Vec3() end

--- @param p1 number
--- @return Vec3
function Vec3(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 Vec3
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec3i
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec3
--- @param p2 integer
--- @return number
function Vec3:__index(p1, p2) end

--- @param p1 Vec3
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec3:__newindex(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__add(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__sub(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__mul(p1, p2) end

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
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__div(p1, p2) end

--- @param p1 Vec3
--- @return Vec3
function Vec3:__unm(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return boolean
function Vec3:__eq(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return boolean
function Vec3:__eq(p1, p2) end

--- @param p1 Vec3
--- @return number
function Vec3:__len(p1) end

--- @return number
function Vec3:Len() end

--- @return number
function Vec3:SqrLength() end

--- @return boolean
function Vec3:IsZero() end

--- @return number
function Vec3:GetMinComponent() end

--- @return number
function Vec3:GetMaxComponent() end

--- @return number
function Vec3:GetMidComponent() end

--- @return Vec3
function Vec3:GetAbs() end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec3:Clamp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3
--- @return nil
function Vec3:Clamp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3:GetClamped(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3
--- @return Vec3
function Vec3:GetClamped(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return number
function Vec3:Dot(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return number
function Vec3:Dot(p1, p2) end

--- @return boolean
function Vec3:IsAnyNaN() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Vec3
function Vec3:Lerp(p1, p2, p3) end

--- @return Vec3
function Vec3:Normalize() end

--- @return Vec3
function Vec3:NormalizeSafe() end

--- @return Vec3
function Vec3:GetNormalized() end

--- @return Vec3
function Vec3:GetNormalizedSafe() end

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
--- @return number
function Vec3:DistanceTo(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:Cross(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:Cross(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec3i)
]]
--- @class Vec3i
--- @field x integer
--- @field y integer
--- @field z integer
--- @field zero Vec3i
--- @field up Vec3i
--- @field right Vec3i
--- @field forward Vec3i
--- @field down Vec3i
--- @field left Vec3i
--- @field back Vec3i
Vec3i = {}

--- @return Vec3i
function Vec3i() end

--- @param p1 integer
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec3
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return integer
function Vec3i:__index(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec3i:__newindex(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__add(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__add(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__sub(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__sub(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mul(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__div(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__div(p1, p2) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i:__unm(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return boolean
function Vec3i:__eq(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return boolean
function Vec3i:__eq(p1, p2) end

--- @param p1 Vec3i
--- @return integer
function Vec3i:__len(p1) end

--- @return integer
function Vec3i:Len() end

--- @return integer
function Vec3i:SqrLength() end

--- @return boolean
function Vec3i:IsZero() end

--- @return integer
function Vec3i:GetMinComponent() end

--- @return integer
function Vec3i:GetMaxComponent() end

--- @return integer
function Vec3i:GetMidComponent() end

--- @return Vec3i
function Vec3i:GetAbs() end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec3i:Clamp(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return nil
function Vec3i:Clamp(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i:GetClamped(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return Vec3i
function Vec3i:GetClamped(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return integer
function Vec3i:Dot(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return number
function Vec3i:Dot(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__band(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__band(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__band(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__bor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bxor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__bxor(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__bxor(p1, p2) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i:__bnot(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__shl(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__shl(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec4)
]]
--- @class Vec4
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field zero Vec4
--- @field up Vec4
--- @field right Vec4
--- @field forward Vec4
--- @field down Vec4
--- @field left Vec4
--- @field back Vec4
Vec4 = {}

--- @return Vec4
function Vec4() end

--- @param p1 number
--- @return Vec4
function Vec4(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec4
--- @return Vec4
function Vec4(p1) end

--- @param p1 Vec4i
--- @return Vec4
function Vec4(p1) end

--- @param p1 Vec4
--- @param p2 integer
--- @return number
function Vec4:__index(p1, p2) end

--- @param p1 Vec4
--- @param p2 integer
--- @param p3 number
--- @return nil
function Vec4:__newindex(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__add(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__sub(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mul(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
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
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__div(p1, p2) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:__unm(p1) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return boolean
function Vec4:__eq(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return boolean
function Vec4:__eq(p1, p2) end

--- @param p1 Vec4
--- @return number
function Vec4:__len(p1) end

--- @return number
function Vec4:Len() end

--- @return number
function Vec4:SqrLength() end

--- @return boolean
function Vec4:IsZero() end

--- @return number
function Vec4:GetMinComponent() end

--- @return number
function Vec4:GetMaxComponent() end

--- @return Vec4
function Vec4:GetAbs() end

--- @param p1 Vec4
--- @param p2 number
--- @param p3 number
--- @return nil
function Vec4:Clamp(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4
--- @return nil
function Vec4:Clamp(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4:GetClamped(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4
--- @return Vec4
function Vec4:GetClamped(p1, p2, p3) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return number
function Vec4:Dot(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return number
function Vec4:Dot(p1, p2) end

--- @return boolean
function Vec4:IsAnyNaN() end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 number
--- @return Vec4
function Vec4:Lerp(p1, p2, p3) end

--- @return Vec4
function Vec4:Normalize() end

--- @return Vec4
function Vec4:NormalizeSafe() end

--- @return Vec4
function Vec4:GetNormalized() end

--- @return Vec4
function Vec4:GetNormalizedSafe() end

--- @param p1 Vec4
--- @return nil
function Vec4:Ceil(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetCeiled(p1) end

--- @param p1 Vec4
--- @return nil
function Vec4:Floor(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetFloored(p1) end

--- @param p1 Vec4
--- @return nil
function Vec4:Round(p1) end

--- @param p1 Vec4
--- @return Vec4
function Vec4:GetRounded(p1) end

--- @param p1 Vec4
--- @return number
function Vec4:DistanceTo(p1) end

--- @class Vec4i
--- @field x integer
--- @field y integer
--- @field z integer
--- @field w integer
--- @field zero Vec4i
--- @field up Vec4i
--- @field right Vec4i
--- @field forward Vec4i
--- @field down Vec4i
--- @field left Vec4i
--- @field back Vec4i
Vec4i = {}

--- @return Vec4i
function Vec4i() end

--- @param p1 integer
--- @return Vec4i
function Vec4i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec4i
--- @return Vec4i
function Vec4i(p1) end

--- @param p1 Vec4
--- @return Vec4i
function Vec4i(p1) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return integer
function Vec4i:__index(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec4i:__newindex(p1, p2, p3) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__add(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__add(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__add(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__add(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__sub(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__sub(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__sub(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__sub(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__mul(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__mul(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__mul(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__mul(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__div(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__div(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__div(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__div(p1, p2) end

--- @param p1 Vec4i
--- @return Vec4i
function Vec4i:__unm(p1) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return boolean
function Vec4i:__eq(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return boolean
function Vec4i:__eq(p1, p2) end

--- @param p1 Vec4i
--- @return integer
function Vec4i:__len(p1) end

--- @return integer
function Vec4i:Len() end

--- @return integer
function Vec4i:SqrLength() end

--- @return boolean
function Vec4i:IsZero() end

--- @return integer
function Vec4i:GetMinComponent() end

--- @return integer
function Vec4i:GetMaxComponent() end

--- @return Vec4i
function Vec4i:GetAbs() end

--- @param p1 Vec4i
--- @param p2 integer
--- @param p3 integer
--- @return nil
function Vec4i:Clamp(p1, p2, p3) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @return nil
function Vec4i:Clamp(p1, p2, p3) end

--- @param p1 Vec4i
--- @param p2 integer
--- @param p3 integer
--- @return Vec4i
function Vec4i:GetClamped(p1, p2, p3) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @return Vec4i
function Vec4i:GetClamped(p1, p2, p3) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return integer
function Vec4i:Dot(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return number
function Vec4i:Dot(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__mod(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__mod(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__band(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__band(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__band(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__bor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__bor(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__bor(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__bxor(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__bxor(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__bxor(p1, p2) end

--- @param p1 Vec4i
--- @return Vec4i
function Vec4i:__bnot(p1) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__shl(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__shl(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__shr(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__shr(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelDB)
]]
--- @class VoxelDB
--- @field autoLightingUpdate boolean
--- @field voxelDim integer
VoxelDB = {}

--- @return nil
function VoxelDB:Clear() end

--- @return nil
function VoxelDB:UseTemporaryLayers() end

--- @return nil
function VoxelDB:Flush() end

--- @param p1 Vec3
--- @return Vec3i
function VoxelDB:FromWorld(p1) end

--- @param p1 number
--- @return integer
function VoxelDB:FromWorld(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:ToWorld(p1) end

--- @param p1 number
--- @return number
function VoxelDB:ToWorld(p1) end

--- @param p1 boolean
--- @return boolean
function VoxelDB:SetUnitVoxelDim(p1) end

--- @param p1 Vec3i
--- @param p2 boolean
--- @return nil
function VoxelDB:SetMask_deprecated(p1, p2) end

--- @param p1 Vec3i
--- @return boolean
function VoxelDB:GetMask(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return boolean
function VoxelDB:GetMask(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return integer
function VoxelDB:GetMaskNeighbours(p1, p2) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return integer
function VoxelDB:GetMaskNeighbours(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return integer
function VoxelDB:GetMaskNeighboursVN(p1, p2) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return integer
function VoxelDB:GetMaskNeighboursVN(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @return nil
function VoxelDB:ClearVoxel(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return nil
function VoxelDB:ClearVoxel(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return nil
function VoxelDB:SetColor(p1, p2) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 Vec3
--- @return nil
function VoxelDB:SetColor(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @return userdata
function VoxelDB:GetColor(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetNormalV(p1) end

--- @param p1 Vec3i
--- @return Vec3
function VoxelDB:GetFilteredNormalV(p1) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRayV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:PaintSphereV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3
--- @return nil
function VoxelDB:PaintBoxV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Quat
--- @param p4 Vec3
--- @return nil
function VoxelDB:PaintBoxV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 Vec3
--- @return nil
function VoxelDB:PaintCapsuleV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @param p5 Vec3
--- @return nil
function VoxelDB:PaintCapsuleV(p1, p2, p3, p4, p5) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return nil
function VoxelDB:ClearSphereV(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return nil
function VoxelDB:ClearBoxV(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Quat
--- @return nil
function VoxelDB:ClearBoxV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @return nil
function VoxelDB:ClearCapsuleV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @return nil
function VoxelDB:ClearCapsuleV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @return nil
function VoxelDB:MakeSphereV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3
--- @return nil
function VoxelDB:MakeBoxV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Quat
--- @param p4 Vec3
--- @return nil
function VoxelDB:MakeBoxV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 Vec3
--- @return nil
function VoxelDB:MakeCapsuleV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @param p5 Vec3
--- @return nil
function VoxelDB:MakeCapsuleV(p1, p2, p3, p4, p5) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 integer
--- @param p4 integer
--- @return nil
function VoxelDB:FillTmpLayersV(p1, p2, p3, p4) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRayTmpV(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 Vec3
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return nil
function VoxelDB:PaintSphereBlendV(p1, p2, p3, p4, p5, p6) end

--- @param p1 Vec3
--- @return Vec3
function VoxelDB:GetNormal(p1) end

--- @param p1 Vec3
--- @return Vec3
function VoxelDB:GetFilteredNormal(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRay(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return boolean
function VoxelDB:CheckSphere(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Quat
--- @return boolean
function VoxelDB:CheckBox(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return boolean
function VoxelDB:CheckBox(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return boolean
function VoxelDB:CheckCapsule(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return boolean
function VoxelDB:CheckCapsule(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function VoxelDB:PaintSphere(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Quat
--- @return nil
function VoxelDB:PaintBox(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return nil
function VoxelDB:PaintBox(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return nil
function VoxelDB:PaintCapsule(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return nil
function VoxelDB:PaintCapsule(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function VoxelDB:ClearSphere(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Quat
--- @return nil
function VoxelDB:ClearBox(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return nil
function VoxelDB:ClearBox(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return nil
function VoxelDB:ClearCapsule(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return nil
function VoxelDB:ClearCapsule(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function VoxelDB:MakeSphere(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Quat
--- @return nil
function VoxelDB:MakeBox(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return nil
function VoxelDB:MakeBox(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return nil
function VoxelDB:MakeCapsule(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return nil
function VoxelDB:MakeCapsule(p1, p2, p3) end

--- @param p1 boolean
--- @return nil
function VoxelDB:SetBlend(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return nil
function VoxelDB:SetBlendParams(p1, p2, p3) end

--- @param p1 Vec3
--- @return nil
function VoxelDB:SetMaterial(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 integer
--- @return nil
function VoxelDB:FillTmpLayers(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return userdata
function VoxelDB:TraceRayTmp(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 number
--- @return nil
function VoxelDB:InstantiateIE(p1, p2, p3) end

--- @param p1 integer
--- @return nil
function VoxelDB:FreeTmpLayers(p1) end

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

--- @param p1 Vec3i
--- @param p2 integer
--- @param p3 integer
--- @param p4 userdata
--- @param p5 integer
--- @return VoxelInspectData
function VoxelDB:Inspect(p1, p2, p3, p4, p5) end

--- @return string
function VoxelDB:GetLayers() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelData)
]]
--- @class VoxelData
--- @field resource string
--- @field type string
--- @field object Object
VoxelData = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelInspectComponent)
]]
--- @class VoxelInspectComponent
--- @field type string
--- @field object Object
VoxelInspectComponent = {}

--- @param p1 number
--- @param p2 userdata
--- @param p3 string
--- @param p4 userdata
--- @param p5 boolean
--- @param p6 integer
--- @return nil
function VoxelInspectComponent:AddVoxelInfo(p1, p2, p3, p4, p5, p6) end

--- @return nil
function VoxelInspectComponent:Clear() end

--- @param p1 Vec4
--- @return nil
function VoxelInspectComponent:SetLineColor(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelInspectData)
]]
--- @class VoxelInspectData
--- @field voxelSize number
--- @field texts string
--- @field positions userdata
--- @field colors userdata
VoxelInspectData = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelRender)
]]
--- @class VoxelRender
--- @field type string
--- @field object Object
VoxelRender = {}

--- @class AttachmentFlags
AttachmentFlags = {
	-- test
	Depth = 0,
	DepthAndStencil = 1,
	-- bladdddla
	Color0 = 2,
	Color1 = 3,
	Color2 = 4,
	Color3 = 5,
}

--- @class BlendFactor
BlendFactor = {
	Zero = 0,
	SrcColor = 1,
	DstColor = 2,
	OneMinusDstColor = 3,
	SrcAlpha = 4,
	OneMinusSrcAlpha = 5,
	DstAlpha = 6,
	OneMinusDstAlpha = 7,
	One = 8,
	OneMinusSrcColor = 9,
	ConstantColor = 10,
	OneMinusConstantColor = 11,
	ConstantAlpha = 12,
	OneMinusConstantAlpha = 13,
	SrcAlphaSaturate = 14,
	Src1Color = 15,
	OneMinusSrc1Color = 16,
	Src1Alpha = 17,
	OneMinusSrc1Alpha = 18,
}

--- @class BlendOp
BlendOp = {
	Add = 0,
	Subtract = 1,
	ReverseSubtract = 2,
	Min = 3,
	Max = 4,
}

--- @class CpuArch
CpuArch = {
	Unknown = 0,
	X86 = 1,
	X86_64 = 2,
	Arm = 3,
	Arm64 = 4,
	Wasm = 5,
}

--- @class CullMode
CullMode = {
	None = 0,
	Front = 1,
	Back = 2,
	FrontAndBack = 3,
}

--- @class DepthBufferMode
DepthBufferMode = {
	None = 0,
	DepthOnly = 1,
	DepthAndStencil = 2,
}

--- @class DrawingCommandsFlags
DrawingCommandsFlags = {
	BaseVertex = 0,
	BaseInstance = 1,
}

--- @class FrontFaceWinding
FrontFaceWinding = {
	Clockwise = 0,
	CounterClockwise = 1,
}

--- @class Function
Function = {
	Never = 0,
	Less = 1,
	Equal = 2,
	Lequl = 3,
	Greater = 4,
	Notequal = 5,
	Gequal = 6,
	Always = 7,
}

--- @class LuaErrorType
LuaErrorType = {
	None = 0,
	DoFile = 1,
	Runtime = 2,
	UIAction = 3,
}

--- @class Operation
Operation = {
	Keep = 0,
	Zero = 1,
	Replace = 2,
	Increment = 3,
	IncrementWrap = 4,
	Decrement = 5,
	DecrementWrap = 6,
	Invert = 7,
}

--- @class PixelFormat
PixelFormat = {
	Unknown = 0,
	RGB888 = 1,
	RGBA8888 = 2,
	RGB565 = 3,
	RGBA5551 = 4,
	RGBA4444 = 5,
	BGR888 = 6,
	BGRA8888 = 7,
	Depth16 = 8,
	Depth24 = 9,
	Depth32 = 10,
	Depth24Stencil8 = 11,
	A8 = 12,
	LA88 = 13,
	R32f = 14,
	RGB32f = 15,
	RGBA32f = 16,
	R16f = 17,
	RGB16f = 18,
	RGBA16f = 19,
	DXT1 = 20,
	DXT1_with_ALPHA = 21,
	DXT3 = 22,
	DXT5 = 23,
	ATC_RGB = 24,
	ATC_RGBEA = 25,
	ATC_RGBIA = 26,
	ETC_RGB = 27,
	ETC2_RGB = 28,
	ETC2_RGBA_PUNCHTHROUGH_ALPHA = 29,
	ETC2_RGBA = 30,
	PVRTC4_RGB = 31,
	PVRTC2_RGB = 32,
	PVRTC4_RGBA = 33,
	PVRTC2_RGBA = 34,
	Int8 = 35,
	Int16 = 36,
	Int32 = 37,
	UInt8 = 38,
	UInt16 = 39,
	UInt32 = 40,
}

--- @class PolygonMode
PolygonMode = {
	Fill = 0,
	Line = 1,
	Point = 2,
}

--- @class PrimitiveTopology
PrimitiveTopology = {
	Points = 0,
	LineStrip = 1,
	Lines = 2,
	TriangleStrip = 3,
	TriangleFan = 4,
	Triangles = 5,
}

--- @class ResourceUsage
ResourceUsage = {
	Static = 0,
	Dynamic = 1,
	Stream = 2,
}

--- @class ShaderResourceType
ShaderResourceType = {
	Unknown = 0,
	Bool = 1,
	BoolVec2 = 2,
	BoolVec3 = 3,
	BoolVec4 = 4,
	Int = 5,
	IntVec2 = 6,
	IntVec3 = 7,
	IntVec4 = 8,
	UInt = 9,
	UIntVec2 = 10,
	UIntVec3 = 11,
	UIntVec4 = 12,
	Float = 13,
	FloatVec2 = 14,
	FloatVec3 = 15,
	FloatVec4 = 16,
	FloatMat2x2 = 17,
	FloatMat2x3 = 18,
	FloatMat2x4 = 19,
	FloatMat3x2 = 20,
	FloatMat3x3 = 21,
	FloatMat3x4 = 22,
	FloatMat4x2 = 23,
	FloatMat4x3 = 24,
	FloatMat4x4 = 25,
	Double = 26,
	DoubleVec2 = 27,
	DoubleVec3 = 28,
	DoubleVec4 = 29,
	DoubleMat2x2 = 30,
	DoubleMat2x3 = 31,
	DoubleMat2x4 = 32,
	DoubleMat3x2 = 33,
	DoubleMat3x3 = 34,
	DoubleMat3x4 = 35,
	DoubleMat4x2 = 36,
	DoubleMat4x3 = 37,
	DoubleMat4x4 = 38,
	Image = 39,
	Texture = 40,
	Buffer = 41,
	AccelerationStructure = 42,
}

--- @class SharePermission
SharePermission = {
	View = 0,
}

--- @class System
System = {
	Unknown = 0,
	Windows = 1,
	Linux = 2,
	WebBrowser = 3,
	MacOS = 4,
	iOS = 5,
	Android = 6,
}

--- @class TextureFiltering
TextureFiltering = {
	None = 0,
	Linear = 1,
	Bilinear = 2,
	Trilinear = 3,
	Anisotropic = 4,
}

--- @class TextureWrappingMode
TextureWrappingMode = {
	ClampToEdge = 0,
	Repeat = 1,
	MirroredRepeat = 2,
}

--- @class Type
Type = {
	Unknown = 0,
	Texture1D = 1,
	Texture1DArray = 2,
	Texture2D = 3,
	Texture2DArray = 4,
	Texture3D = 5,
	TextureCube = 6,
	TextureCubeArray = 7,
}

--- @class UpdateFrequency
UpdateFrequency = {
	Once = 0,
	Frame = 1,
	ObjectFrame = 2,
	ObjectDraw = 3,
}

--- @class UsageFlagBits
UsageFlagBits = {
	UsageTransferSrcBIT = 0,
	UsageTransferDstBIT = 1,
	UsageSampledBIT = 2,
	UsageStorageBIT = 3,
	UsageColorAttachmentBIT = 4,
	UsageDepthStencilAttachmentBIT = 5,
	UsageTransientAttachmentBIT = 6,
	UsageInputAttachmentBIT = 7,
	UsageShadingRateImageBIT = 8,
	UsageFragmentDensityMapBIT = 9,
}

--- @class VRControllerButton
VRControllerButton = {
	A = 0,
	B = 1,
	Menu = 2,
	Thumb = 3,
	Shoulder = 4,
}

--- @class VSyncMode
VSyncMode = {
	Default = 0,
	Enabled = 1,
	Disabled = 2,
	Adaptive = 3,
}

--- @class VertexComponent
VertexComponent = {
	Position0 = 0,
	Position1 = 1,
	Position2 = 2,
	Position3 = 3,
	TexCoord0 = 4,
	TexCoord1 = 5,
	TexCoord2 = 6,
	TexCoord3 = 7,
	TexCoord4 = 8,
	Color0 = 9,
	Color1 = 10,
	Index0 = 11,
	Index1 = 12,
	Normal0 = 13,
	Normal1 = 14,
	Tangent = 15,
	Bitangent = 16,
	Index = 17,
	Unknown = 18,
	Data0 = 19,
	Data1 = 20,
	Data2 = 21,
	Data3 = 22,
	Data4 = 23,
}

--- @class VertexComponentFormat
VertexComponentFormat = {
	Unknown = 0,
	Int8 = 1,
	Int8Vec2 = 2,
	Int8Vec3 = 3,
	Int8Vec4 = 4,
	Int16 = 5,
	Int16Vec2 = 6,
	Int16Vec3 = 7,
	Int16Vec4 = 8,
	Int32 = 9,
	Int32Vec2 = 10,
	Int32Vec3 = 11,
	Int32Vec4 = 12,
	UInt8 = 13,
	UInt8Vec2 = 14,
	UInt8Vec3 = 15,
	UInt8Vec4 = 16,
	UInt16 = 17,
	UInt16Vec2 = 18,
	UInt16Vec3 = 19,
	UInt16Vec4 = 20,
	UInt32 = 21,
	UInt32Vec2 = 22,
	UInt32Vec3 = 23,
	UInt32Vec4 = 24,
	Float = 25,
	FloatVec2 = 26,
	FloatVec3 = 27,
	FloatVec4 = 28,
	FloatMat2x2 = 29,
	FloatMat2x3 = 30,
	FloatMat2x4 = 31,
	FloatMat3x2 = 32,
	FloatMat3x3 = 33,
	FloatMat3x4 = 34,
	FloatMat4x2 = 35,
	FloatMat4x3 = 36,
	FloatMat4x4 = 37,
	Double = 38,
	DoubleVec2 = 39,
	DoubleVec3 = 40,
	DoubleVec4 = 41,
	DoubleMat2x2 = 42,
	DoubleMat2x3 = 43,
	DoubleMat2x4 = 44,
	DoubleMat3x2 = 45,
	DoubleMat3x3 = 46,
	DoubleMat3x4 = 47,
	DoubleMat4x2 = 48,
	DoubleMat4x3 = 49,
	DoubleMat4x4 = 50,
}

