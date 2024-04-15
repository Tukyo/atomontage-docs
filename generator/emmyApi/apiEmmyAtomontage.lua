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


--- @class Box:Shape
--- @class Sphere:Shape
--- @class Capsule:Shape
--- @class Cylinder:Shape
--- @class Polygon:Shape


--- @param pos Vec3
--- @param rot Quat
--- @param scale Vec3
--- @return Box
function Box(pos, rot, scale) end

--- @param pos Vec3
--- @param scale Vec3?
--- @return Box
function Box(pos, scale) end


--- @param pos1 Vec3
--- @param pos2 Vec3
--- @param radius number?
--- @param radius2 number?
--- @return Capsule
function Capsule(pos1, pos2, radius, radius2) end


--- @param pos1 Vec3
--- @param pos2 Vec3
--- @param radius number?
--- @param radius2 number?
--- @return Cylinder
function Cylinder(pos1, pos2, radius, radius2) end


--- @class Object
--- @field children Object[]
--- @field components Component[]


--- @class VoxelEdit
--- @field filter Filter
--- @field shape Shape
--- @field onProgress fun(progress:number) --progress 0-100
--- @field onFinished fun()
--- @field onError fun()
--- @field copyResource VoxelDataResource


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


--- @return Hit[]
function Collision:Raycast() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Hit[]
function Collision:Raycast(p1, p2) end


--- @return Overlap[]
function Collision:GetOverlap() end

--- @param shape Shape
--- @return Overlap[]
function Collision:GetOverlap(shape) end


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

--- @generic ScriptInstanceType: ScriptInstance
--- @param name `ScriptInstanceType`
--- @return ScriptInstanceType
function Object:FindScript(name) end


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

--- @param capsuleStart Vec3
--- @param capsuleEnd Vec3
--- @param capsuleRadius number
--- @param velocity Vec3
--- @param size number
--- @return nil
function Client:AddPlayerLODPriorityBubbleShape(capsuleStart, capsuleEnd, capsuleRadius, velocity, size) end


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


--- @param p1 Vec3
--- @return Quat
function Quat.LookAt(p1) end

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


--- @param text string
--- @param pos Vec2 0-1
--- @param pivot Vec2 0 = left allingned, 0.5 = centered, 1 = right alligned
--- @param color Vec4
--- @param size integer 1-6
--- @param colorOutline Vec4?
--- @param p7 number?
--- @return nil
function Client:WriteToScreen(text, pos, pivot, color, size, colorOutline, p7) end


--- @param hand Side
--- @param duration number in seconds, 0 <= minimal
--- @param frequency number Hz, 0 = unspecified
--- @param amplitude number 0-1
--- @return nil
function Client:ApplyVRHapticFeedback(hand, duration, frequency, amplitude) end


--- @alias componentType
---| "'Camera'"
---| "'MeshData'"
---| "'MeshRenderer'"
---| "'Prefab'"
---| "'Script'"
---| "'Sky'"
---| "'StaticVoxelData'"
---| "'Transform'"
---| "'VoxelData'"
---| "'VoxelRenderer'"

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Box)
]]
--- @class Box
Box = {}

--- @return Box
function Box() end

--[[
Centered box

[View Documentation](https://docs.atomontage.com/api/Box#Box-Vec3-Quat-Vec3)
]]
--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 Vec3
--- @return Box
function Box(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Box
function Box(p1, p2) end

--- @param p1 Vec3
--- @return Box
function Box(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Camera)
]]
--- @class Camera
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field fovY number
--- @field transform Transform
Camera = {
	object = nil, ---Reference to object instance
	isDestroyed = nil, ---Indicates whether the object is destroyed (true) or not (false).
	type = nil, ---Specifies the object's type as a string, useful for type identification.
	fovY = nil, ---Defines the vertical field of view in degrees
}

--[[
Converts a 2D screen percentage coordinate(i.e from Input:MousePosPerc()) to a 3D world space ray (Vec3), used for determining 3D locations from screen interactions.

[View Documentation](https://docs.atomontage.com/api/Camera#Vec3-ScreenToWorldRay-Vec2)
]]
--- @param p1 Vec2
--- @return Vec3
function Camera:ScreenToWorldRay(p1) end

--[[
Transforms a 3D world coordinate (Vec3) to a 2D screen space percentage coordinate(range 0-1), useful for positioning ui elements like text above a 3D object on the screen.

[View Documentation](https://docs.atomontage.com/api/Camera#Vec2-WorldToScreen-Vec3)
]]
--- @param p1 Vec3
--- @return Vec2
function Camera:WorldToScreen(p1) end

--- @param p1 Vec3
--- @return Vec3
function Camera:WorldToScreen3f(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Capsule)
]]
--- @class Capsule
Capsule = {}

--- @return Capsule
function Capsule() end

--[[
Capsule between two points

[View Documentation](https://docs.atomontage.com/api/Capsule#Capsule-Vec3-Vec3-number-number)
]]
--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return Capsule
function Capsule(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Capsule
function Capsule(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Capsule
function Capsule(p1, p2) end

--[[
`Client`
:::info Client Only
This class is only available on client
:::

[View Documentation](https://docs.atomontage.com/api/Client)
]]
--- @class Client
--- @field clientID integer
--- @field userID Guid
--- @field mode ClientMode
--- @field isMaker boolean
--- @field platform string
--- @field sysInfo string
Client = {}

--- @return integer
function Client:GetID() end

--- @return Guid
function Client:GetUserID() end

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
function Client:ToggleUIVisibility() end

--- @return nil
function Client:ToggleMainMenuVisibility() end

--- @return nil
function Client:SetToClientUI() end

--- @param p1 boolean
--- @return nil
function Client:SetShowWindows(p1) end

--- @return boolean
function Client:GetShowWindows() end

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

--- @param windowID string
--- @return nil
function Client:OpenUIWindow(windowID) end

--- @param windowID string
--- @return nil
function Client:CloseUIWindow(windowID) end

--- @param windowID string
--- @param open boolean
--- @return nil
function Client:SetUIWindowOpen(windowID, open) end

--- @param windowID string
--- @return nil
function Client:ToggleUIWindow(windowID) end

--- @param windowID string
--- @return boolean
function Client:IsWindowOpen(windowID) end

--- @param windowID string
--- @param position Vec2
--- @return nil
function Client:SetWindowPos(windowID, position) end

--- @return nil
function Client:OpenUI() end

--- @return nil
function Client:CloseUI() end

--- @return boolean
function Client:IsUIOpen() end

--- @param p1 Quat
--- @param p2 Vec3
--- @return nil
function Client:SetUIPose(p1, p2) end

--- @return Quat, Vec3
function Client:GetUIPose() end

--- @param p1 string
--- @return nil
function Client:OpenScriptFile(p1) end

--- @param p1 string
--- @param p2 integer
--- @return nil
function Client:OpenScriptFile(p1, p2) end

--- @param p1 string
--- @return string
function Client:GetScript(p1) end

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
function Client:GetUILayout() end

--- @return string
function Client:GetMontageURL() end

--- @return string
function Client:GetMontageURLBase() end

--- @return userdata
function Client:GetMontageURLParameters() end

--- @param p1 userdata
--- @return string
function Client:GetMontageURLWithParameters(p1) end

--- @return nil
function Client:CancelLoadMontageByURL() end

--- @param p1 string
--- @return nil
function Client:ConnectToMontage(p1) end

--[[
Unknown,
Connecting,
FailedToConnect,
StatusMessage,
ReadyToAcknowledge,
Connected,
Disconnected

[View Documentation](https://docs.atomontage.com/api/Client#string-GetConnectionStatus)
]]
--- @return string
function Client:GetConnectionStatus() end

--- @return string
function Client:GetConnectionStatusDetailed() end

--- @return nil
function Client:Disconnect() end

--[[
Time for a network message to travel from client to server and back

[View Documentation](https://docs.atomontage.com/api/Client#number-GetPing)
]]
--- @return number
function Client:GetPing() end

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

--- @return nil
function Client:ResetTracy() end

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

--- @param p1 string
--- @return number
function Client:GetLogTime(p1) end

--- @param p1 string
--- @return table
function Client:GetLogTimers(p1) end

--- @return table
function Client:GetMainDispatcherStats() end

--- @return number
function Client:GetFPS() end

--- @return Config
function Client:GetConfigInputActions() end

--- @return nil
function Client:ConnectToServer() end

--- @param p1 string
--- @return nil
function Client:Disconnect(p1) end

--- @param folder string
--- @return boolean
function Client:OpenFolder(folder) end

--- @return integer
function Client:GetScriptsVersion() end

--- @return integer
function Client:GetLoadedScriptsVersion() end

--- @return nil
function Client:LuaOpenDebugger() end

--- @param enable boolean
--- @return nil
function Client:LuaEnableDebugging(enable) end

--- @return nil
function Client:OnLuaLog() end

--- @return nil
function Client:ScrollToLastestLuaLog() end

--- @param uiItem UIItem
--- @return boolean
function Client:IsContainerEnabledAndVisible(uiItem) end

--- @param p1 string
--- @return nil
function Client:Log(p1) end

--- @return boolean
function Client:IsClient() end

--- @return boolean
function Client:IsServer() end

--- @return boolean
function Client:DevMode() end

--- @return boolean
function Client:GetNetworkThrottlingNow() end

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

--- @param p1 Vec4
--- @return nil
function Client:SetIntersectionTint(p1) end

--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 Vec3
--- @return nil
function Client:SetIntersectionBox(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 number
--- @return nil
function Client:SetIntersectionSphere(p1, p2) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @param p6 Vec4
--- @param p7 number
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5, p6, p7) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5) end

--- @param p1 string
--- @param p2 Vec2
--- @param p3 Vec2
--- @param p4 Vec4
--- @param p5 integer
--- @param p6 Vec4
--- @return nil
function Client:WriteToScreen(p1, p2, p3, p4, p5, p6) end

--- @return nil
function Client:CloseApp() end

--- @return string
function Client:GetEULA() end

--- @return Vec2
function Client:GetWindowSize() end

--- @return Vec2
function Client:GetViewportSize() end

--[[
Returns [`CommandLine`](./commandLine.mdx)

[View Documentation](https://docs.atomontage.com/api/Client#CommandLine-GetCommandLine)
]]
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

--- @param p1 integer
--- @param p2 Space
--- @return Vec3, Quat
function Client:GetVREyeTransform(p1, p2) end

--- @param p1 Space
--- @return Vec3, Quat
function Client:GetVRHeadsetTransform(p1) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return nil
function Client:ApplyVRHapticFeedback(p1, p2, p3, p4) end

--- @return boolean
function Client:GetVREyeTrackingSupported() end

--- @param p1 number
--- @return number
function Client:SetVRUserScale(p1) end

--- @return number
function Client:GetVRUserScale() end

--- @return number
function Client:GetVRUserScaleMin() end

--- @return number
function Client:GetVRUserScaleMax() end

--- @return nil
function Client:StartVRPassthrough() end

--- @return nil
function Client:StopVRPassthrough() end

--- @return boolean
function Client:IsVRPassthroughEnabled() end

--- @return boolean
function Client:IsVRPassthroughSupported() end

--- @param p1 File
--- @return boolean
function Client:SendFile(p1) end

--- @param p1 table
--- @return boolean
function Client:SendFiles(p1) end

--- @return nil
function Client:Restart() end

--- @return nil
function Client:ChooseImage() end

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

--- @return integer
function Client:GetRenderChannelsCount() end

--- @param p1 integer
--- @return number
function Client:GetRenderChannelOpacity(p1) end

--- @param p1 integer
--- @param p2 number
--- @return nil
function Client:SetRenderChannelOpacity(p1, p2) end

--- @return nil
function Client:LoadEntityPath() end

--- @return nil
function Client:SaveEntityPath() end

--- @return nil
function Client:PlayEntityPath() end

--- @return nil
function Client:ClearEntityPath() end

--- @return nil
function Client:AddEntityPathWaypoint() end

--- @param p1 string
--- @param p2 boolean
--- @return nil
function Client:TakeScreenshot(p1, p2) end

--- @return table
function Client:GetVersion() end

--- @return System
function Client:GetSystem() end

--- @return Device
function Client:GetDevice() end

--- @return integer
function Client:GetMemoryUsage() end

--- @return string
function Client:GetCredits() end

--- @return string
function Client:GetSystemConsole() end

--- @return string
function Client:GetSystemOutput() end

--- @return table
function Client:GetErrors() end

--- @return string
function Client:GetDateTime() end

--- @return string
function Client:GetLastSyncMessageRecv() end

--- @return string
function Client:GetLastSyncMessageSent() end

--- @return boolean
function Client:GetUpdateSyncMessageString() end

--- @param p1 boolean
--- @return nil
function Client:SetUpdateSyncMessageString(p1) end

--- @param p1 string
--- @return nil
function Client:CopyToClipboard(p1) end

--[[
may not work on all platforms

[View Documentation](https://docs.atomontage.com/api/Client#string-GetClipboardText)
]]
--- @return string
function Client:GetClipboardText() end

--- @param p1 string
--- @return nil
function Client:OpenBrowserWithURL(p1) end

--- @param p1 boolean
--- @return nil
function Client:ReloadPage(p1) end

--- @return string
function Client:__tostring() end

--- @return table
function Client:EnumerateTestRenderObjects() end

--- @param p1 string
--- @return boolean
function Client:IsTestRenderObjectEnabled(p1) end

--- @param p1 string
--- @param p2 boolean
--- @return boolean
function Client:SetTestRenderObjectEnabled(p1, p2) end

--- @param p1 string
--- @return boolean
function Client:ToggleTestRenderObjectEnabled(p1) end

--- @return nil
function Client:ResetPlayerLODPriorityBubble() end

--[[
LODs in this bubble are prioritized, should be placed around the player or camera
params: capsuleStart, capsuleEnd, capsuleRadius, velocity, size

[View Documentation](https://docs.atomontage.com/api/Client#nil-AddPlayerLODPriorityBubbleShape-Vec3-Vec3-number-Vec3-number)
]]
--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 Vec3
--- @param p5 number
--- @return nil
function Client:AddPlayerLODPriorityBubbleShape(p1, p2, p3, p4, p5) end

--- @param p1 Vec4
--- @return nil
function Client:SetScreenColor(p1) end

--[[
Tint the view for this frame or permanently

[View Documentation](https://docs.atomontage.com/api/Client#nil-SetScreenColor-Vec4-boolean)
]]
--- @param p1 Vec4
--- @param p2 boolean
--- @return nil
function Client:SetScreenColor(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Collision)
]]
--- @class Collision
--- @field filter Filter
--- @field maxHitCount integer
--- @field shape Shape
--- @field precise boolean
--- @field rayPos Vec3
--- @field rayDir Vec3
Collision = {
	maxHitCount = nil, ---Doesn't influence result, just limits returned hits table size
}

--- @return Collision
function Collision() end

--- @return Collision
function Collision() end

--[[
Use rayPos, rayDir, returns table of Hit values or empty table for no hit.
Returns [Hit](Hit).

[View Documentation](https://docs.atomontage.com/api/Collision#table-Raycast)
]]
--- @return table
function Collision:Raycast() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return table
function Collision:Raycast(p1, p2) end

--[[
Checks collision between shape and geometry passed by filter.
Returns [Overlap](Overlap).

[View Documentation](https://docs.atomontage.com/api/Collision#table-GetOverlap)
]]
--- @return table
function Collision:GetOverlap() end

--- @param p1 Shape
--- @return table
function Collision:GetOverlap(p1) end

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
--- @param p2 Vec2
--- @return Vec2
function CommandLine:GetOptionVec2(p1, p2) end

--- @param p1 string
--- @param p2 Vec3
--- @return Vec3
function CommandLine:GetOptionVec3(p1, p2) end

--- @param p1 string
--- @param p2 Vec4
--- @return Vec4
function CommandLine:GetOptionVec4(p1, p2) end

--- @param p1 CommandLine
--- @return table
function CommandLine:GetAll(p1) end

--[[
`Client`
`Server`

All components inherit from this class. It is not meant to be instantiated directly.
* [Transform](Transform)
* [Script](Script)
* [Camera](Camera)
* [VoxelData](VoxelData)
* [StaticVoxelData](StaticVoxelData)
* [VoxelRenderer](VoxelRenderer)
* [MeshData](MeshRenderer)
* [MeshRenderer](MeshRenderer)
* [Sky](Sky)

[View Documentation](https://docs.atomontage.com/api/Component)
]]
--- @class Component
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
Component = {}

--[[
`Client`
`Server`

Save and load values for this client. 
These values are stored clients local storage and will be available on all montages he visits.
This is useful for saving settings, last player position, etc.

To avoid naming conflicts with other montages, use a unique prefix for each game. For example, if your game is called "MyGame", you can use "MyGame/" as a prefix for all your keys.

```lua
Config:SetVec3("MyGame/PlayerPosition", player.transform.pos)
```

```lua
local defaultPos = Vec3(0,0,0)
local pos = Config:GetVec3("MyGame/PlayerPosition", defaultPos)
player.transform.pos = pos
```

If you want to save a setting only for this montage include the montage id in the setting
```lua
--extract id from url
local url = Client:GetMontageURL()
local id, params = string.match(url, "/view%?m=([%w%-%_]*)(.*)")
Config:SetFloat(id.."/MyGame/Highscore", highscore)
```

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

--[[
force saving Config

[View Documentation](https://docs.atomontage.com/api/Config#nil-Save)
]]
--- @return nil
function Config:Save() end

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

[View Documentation](https://docs.atomontage.com/api/Cylinder)
]]
--- @class Cylinder
Cylinder = {}

--- @return Cylinder
function Cylinder() end

--[[
Cylinder between two points

[View Documentation](https://docs.atomontage.com/api/Cylinder#Cylinder-Vec3-Vec3-number-number)
]]
--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @param p4 number
--- @return Cylinder
function Cylinder(p1, p2, p3, p4) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return Cylinder
function Cylinder(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Cylinder
function Cylinder(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/File)
]]
--- @class File
--- @field filename string
--- @field type string
--- @field url string
--- @field available boolean
File = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Filter)
]]
--- @class Filter
--- @field useStatic boolean
--- @field useNotStatic boolean
--- @field useTmpStatic boolean
--- @field useTmpNotStatic boolean
--- @field ignoreList table
--- @field forceList table
Filter = {
	useNotStatic = nil, ---use dynamic voxel objects
	ignoreList = nil, ---contains objects
	forceList = nil, ---contains objects
}

--- @return Filter
function Filter() end

--- @param p1 boolean
--- @param p2 boolean
--- @return Filter
function Filter(p1, p2) end

--- @param p1 table
--- @param p2 table
--- @return Filter
function Filter(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Gamepad)
]]
--- @class Gamepad
Gamepad = {}

--- @param p1 integer
--- @return boolean
function Gamepad:ButtonDown(p1) end

--- @param p1 integer
--- @return boolean
function Gamepad:Button(p1) end

--- @param p1 integer
--- @return boolean
function Gamepad:ButtonUp(p1) end

--- @param p1 integer
--- @return number
function Gamepad:Axis(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return integer
function Gamepad:Rumble(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return integer
function Gamepad:RumbleTriggers(p1, p2, p3) end

--[[
`Client`
`Server`

Returned by [raycasts]](Collision#table-Raycast).

[View Documentation](https://docs.atomontage.com/api/Hit)
]]
--- @class Hit
--- @field pos Vec3
--- @field normal Vec3
--- @field color Vec3
--- @field object Object
--- @field distance number
--- @field type HitType
Hit = {}

--[[
`Client`
`Server`
:::info Client Only
Input from this class can only be read on the client side.
:::

Simple way to check a clients input.
For more advanced use we recommend receive input via the [events system](../manual/scripting/examples/Input) 
because it respects the order in which the input was received and other benefits. 

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

--- @return boolean
function Input:GetEmulateMouseWithTouch() end

--- @param p1 boolean
--- @return nil
function Input:SetEmulateMouseWithTouch(p1) end

--- @return boolean
function Input:GetEmulateTouchWithMouse() end

--- @param p1 boolean
--- @return nil
function Input:SetEmulateTouchWithMouse(p1) end

--- @return number
function Input:GesturePinch() end

--- @return number
function Input:GestureRotate() end

--- @return Vec2
function Input:GestureMove() end

--- @return integer
function Input:NumFingers() end

--[[
int passed is the unique ID of that touch obtained i.e. from Input:Fingers() or Input:GetEvents()

[View Documentation](https://docs.atomontage.com/api/Input#boolean-FingerDown-integer)
]]
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
function Input:VRButtonDown(p1, p2) end

--- @param p1 integer
--- @param p2 VRControllerButton
--- @return boolean
function Input:VRButton(p1, p2) end

--- @param p1 integer
--- @param p2 VRControllerButton
--- @return boolean
function Input:VRButtonUp(p1, p2) end

--- @param p1 integer
--- @return number
function Input:VRHandTrigger(p1) end

--- @param p1 integer
--- @return number
function Input:VRIndexTrigger(p1) end

--- @param p1 integer
--- @return Vec2
function Input:VRThumbStick(p1) end

--- @param p1 integer
--- @return Vec2
function Input:VRTrackpad(p1) end

--- @param p1 integer
--- @return boolean
function Input:VRIsControllerValid(p1) end

--- @param p1 integer
--- @return Vec3
function Input:VRControllerPos(p1) end

--- @param p1 integer
--- @return Vec3
function Input:VRControllerDir(p1) end

--- @param p1 integer
--- @param p2 Space
--- @return Vec3, Quat
function Input:VRControllerTransform(p1, p2) end

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

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Mat3)
]]
--- @class Mat3
--- @operator add(Mat3):Mat3
--- @operator add(number):Mat3
--- @operator sub(Mat3):Mat3
--- @operator sub(number):Mat3
--- @operator mul(Mat3):Mat3
--- @operator mul(number):Mat3
--- @operator div(Mat3):Mat3
--- @operator div(number):Mat3
--- @operator unm(Mat3):Mat3
--- @field xaxis Vec3
--- @field yaxis Vec3
--- @field zaxis Vec3
--- @field row1 Vec3
--- @field row2 Vec3
--- @field row3 Vec3
Mat3 = {}

--- @return Mat3
function Mat3() end

--- @param p1 number
--- @return Mat3
function Mat3(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @return Mat3
function Mat3(p1, p2, p3, p4, p5, p6, p7, p8, p9) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3i
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @param p3 Vec3
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 Vec3
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @param p3 Vec3i
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @param p3 Vec3i
--- @return Mat3
function Mat3(p1, p2, p3) end

--- @param p1 Mat3
--- @return Mat3
function Mat3(p1) end

--- @param p1 Mat4
--- @return Mat3
function Mat3(p1) end

--- @param p1 Quat
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
--- @param p2 number
--- @return Mat3
function Mat3:__add(p1, p2) end

--- @param p1 number
--- @param p2 Mat3
--- @return Mat3
function Mat3:__add(p1, p2) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return Mat3
function Mat3:__sub(p1, p2) end

--- @param p1 Mat3
--- @param p2 number
--- @return Mat3
function Mat3:__sub(p1, p2) end

--- @param p1 number
--- @param p2 Mat3
--- @return Mat3
function Mat3:__sub(p1, p2) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return Mat3
function Mat3:__mul(p1, p2) end

--- @param p1 Mat3
--- @param p2 number
--- @return Mat3
function Mat3:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Mat3
--- @return Mat3
function Mat3:__mul(p1, p2) end

--- @param p1 Vec3
--- @param p2 Mat3
--- @return Vec3
function Mat3:__mul(p1, p2) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return Mat3
function Mat3:__div(p1, p2) end

--- @param p1 Mat3
--- @param p2 number
--- @return Mat3
function Mat3:__div(p1, p2) end

--- @param p1 number
--- @param p2 Mat3
--- @return Mat3
function Mat3:__div(p1, p2) end

--- @param p1 Vec3
--- @param p2 Mat3
--- @return Vec3
function Mat3:__div(p1, p2) end

--- @param p1 Mat3
--- @return Mat3
function Mat3:__unm(p1) end

--- @param p1 Mat3
--- @param p2 Mat3
--- @return boolean
function Mat3:__eq(p1, p2) end

--- @return number
function Mat3:GetDeterminant() end

--- @return Mat3
function Mat3:Transpose() end

--- @return Mat3
function Mat3:GetTransposed() end

--- @return Mat3
function Mat3:Invert() end

--- @return Mat3
function Mat3:GetInverted() end

--- @param p1 number
--- @return boolean
function Mat3:IsIdentity(p1) end

--- @return boolean
function Mat3:IsZero() end

--- @return boolean
function Mat3:IsSingular() end

--- @return boolean
function Mat3:IsAnyNaN() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Mat4)
]]
--- @class Mat4
--- @operator add(Mat4):Mat4
--- @operator add(number):Mat4
--- @operator sub(Mat4):Mat4
--- @operator sub(number):Mat4
--- @operator mul(Mat4):Mat4
--- @operator mul(number):Mat4
--- @operator div(Mat4):Mat4
--- @operator div(number):Mat4
--- @operator unm(Mat4):Mat4
--- @field xaxis Vec3
--- @field yaxis Vec3
--- @field zaxis Vec3
--- @field translation Vec3
--- @field row1 Vec3
--- @field row2 Vec3
--- @field row3 Vec3
--- @field row4 Vec3
Mat4 = {}

--- @return Mat4
function Mat4() end

--- @param p1 number
--- @return Mat4
function Mat4(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @param p7 number
--- @param p8 number
--- @param p9 number
--- @param p10 number
--- @param p11 number
--- @param p12 number
--- @param p13 number
--- @param p14 number
--- @param p15 number
--- @param p16 number
--- @return Mat4
function Mat4(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4i
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @param p3 Vec4i
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @param p3 Vec4
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @param p3 Vec4
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @param p3 Vec4
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @param p3 Vec4
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @param p3 Vec4i
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @param p3 Vec4i
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @param p4 Vec4
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @param p3 Vec4i
--- @param p4 Vec4i
--- @return Mat4
function Mat4(p1, p2, p3, p4) end

--- @param p1 Mat3
--- @return Mat4
function Mat4(p1) end

--- @param p1 Mat4
--- @return Mat4
function Mat4(p1) end

--- @param p1 Quat
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
--- @param p2 number
--- @return Mat4
function Mat4:__add(p1, p2) end

--- @param p1 number
--- @param p2 Mat4
--- @return Mat4
function Mat4:__add(p1, p2) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return Mat4
function Mat4:__sub(p1, p2) end

--- @param p1 Mat4
--- @param p2 number
--- @return Mat4
function Mat4:__sub(p1, p2) end

--- @param p1 number
--- @param p2 Mat4
--- @return Mat4
function Mat4:__sub(p1, p2) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return Mat4
function Mat4:__mul(p1, p2) end

--- @param p1 Mat4
--- @param p2 number
--- @return Mat4
function Mat4:__mul(p1, p2) end

--- @param p1 number
--- @param p2 Mat4
--- @return Mat4
function Mat4:__mul(p1, p2) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return Mat4
function Mat4:__div(p1, p2) end

--- @param p1 Mat4
--- @param p2 number
--- @return Mat4
function Mat4:__div(p1, p2) end

--- @param p1 number
--- @param p2 Mat4
--- @return Mat4
function Mat4:__div(p1, p2) end

--- @param p1 Vec4
--- @param p2 Mat4
--- @return Vec4
function Mat4:__div(p1, p2) end

--- @param p1 Mat4
--- @return Mat4
function Mat4:__unm(p1) end

--- @param p1 Mat4
--- @param p2 Mat4
--- @return boolean
function Mat4:__eq(p1, p2) end

--- @return number
function Mat4:GetDeterminant() end

--- @return Mat4
function Mat4:Transpose() end

--- @return Mat4
function Mat4:GetTransposed() end

--- @return Mat4
function Mat4:Invert() end

--- @return Mat4
function Mat4:GetInverted() end

--- @param p1 number
--- @return boolean
function Mat4:IsIdentity(p1) end

--- @return boolean
function Mat4:IsZero() end

--- @return boolean
function Mat4:IsSingular() end

--- @return boolean
function Mat4:IsAnyNaN() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Mat4
function Mat4:Translation(p1, p2, p3) end

--- @param p1 Vec3
--- @return Mat4
function Mat4:Translation(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Mat4
function Mat4:RotationXYZ(p1, p2, p3) end

--- @param p1 Vec3
--- @return Mat4
function Mat4:RotationXYZ(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Mat4
function Mat4:RotationYawPitchRoll(p1, p2, p3) end

--- @param p1 Vec3
--- @return Mat4
function Mat4:RotationYawPitchRoll(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Mat4
function Mat4:Scaling(p1, p2, p3) end

--- @param p1 Vec3
--- @return Mat4
function Mat4:Scaling(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 Vec3
--- @return Mat4
function Mat4:LookAt(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Mat4
function Mat4:Perspective(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @param p5 number
--- @param p6 number
--- @return Mat4
function Mat4:Ortho(p1, p2, p3, p4, p5, p6) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Material)
]]
--- @class Material
Material = {}

--- @param p1 string
--- @return Material
function Material(p1) end

--- @param p1 Material
--- @param p2 string
--- @return boolean
function Material:HasProperty(p1, p2) end

--- @param p1 Material
--- @param p2 string
--- @return Vec3
function Material:GetPropertyVec3(p1, p2) end

--- @param p1 Material
--- @param p2 string
--- @return Vec4
function Material:GetPropertyVec4(p1, p2) end

--- @param p1 Material
--- @param p2 string
--- @param p3 Vec3
--- @return nil
function Material:SetProperty(p1, p2, p3) end

--- @param p1 Material
--- @param p2 string
--- @param p3 Vec4
--- @return nil
function Material:SetProperty(p1, p2, p3) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshData)
]]
--- @class MeshData
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field resourceUsageMode ResourceUsage
--- @field topology PrimitiveTopology
MeshData = {}

--- @param p1 MeshData
--- @param p2 MeshData
--- @return boolean
function MeshData:__eq(p1, p2) end

--- @return nil
function MeshData:ClearShape() end

--- @param p1 PrimitiveTopology
--- @return nil
function MeshData:ClearShape(p1) end

--- @param p1 Vec3
--- @return integer
function MeshData:AddVertex(p1) end

--- @param p1 Vec3
--- @param p2 Vec4
--- @return integer
function MeshData:AddVertex(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @param p3 Vec4
--- @return integer
function MeshData:AddVertex(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 Vec2
--- @return integer
function MeshData:AddVertex(p1, p2) end

--- @param p1 integer
--- @return nil
function MeshData:AddIndex(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return nil
function MeshData:AddIndex(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @return nil
function MeshData:AddIndex(p1, p2) end

--- @param p1 Shape
--- @param p2 Vec4
--- @return nil
function MeshData:AddShape(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/MeshRenderer)
]]
--- @class MeshRenderer
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field material Material
MeshRenderer = {}

--- @param p1 MeshRenderer
--- @param p2 MeshRenderer
--- @return boolean
function MeshRenderer:__eq(p1, p2) end

--[[
`Client`
`Server`

The object visible in the hierarchy. Every object has a transform and can have additional components attached to it.

[View Documentation](https://docs.atomontage.com/api/Object)
]]
--- @class Object
--- @field transform Transform
--- @field isDestroyed boolean
--- @field id string
--- @field name string
--- @field active boolean
--- @field activeInHierarchy boolean
--- @field save boolean
--- @field parent Object
--- @field children table
--- @field childCount integer
--- @field siblingIndex integer
--- @field isPrefabObject boolean
--- @field components table
--- @field componentsCount integer
Object = {
	transform = nil, ---Get the transform to modify the position, rotation and scale of the object
	isDestroyed = nil, ---True if the object was destroyed. Note that references to this object will still be valid 
	id = nil, ---This is id is unique across clients and server
	active = nil, ---Set the object to be active or inactive. Inactive objects are not updated or rendered. All its children also become inactive.
	activeInHierarchy = nil, ---Readonly. Check if the object is active in the scene. It may be inactive because a parent is inactive.
	save = nil, ---Save this object in the hierarchy. If not saved it will be deleted after lua reset or server restart
}

--[[
Get child object by name

[View Documentation](https://docs.atomontage.com/api/Object#Object-GetChild-string)
]]
--- @param p1 string
--- @return Object
function Object:GetChild(p1) end

--- @param p1 Guid
--- @return Object
function Object:GetChildById(p1) end

--- @return boolean
function Object:RemoveParent() end

--- @return boolean
function Object:IsPrefab() end

--- @param p1 string
--- @return boolean
function Object:IsPrefab(p1) end

--- @param p1 string
--- @param p2 boolean
--- @return Script
function Object:AddScript(p1, p2) end

--- @return MeshData
function Object:AddMeshData() end

--- @param p1 string
--- @return VoxelData
function Object:AddVoxelData(p1) end

--- @param p1 string
--- @return StaticVoxelData
function Object:AddStaticVoxelData(p1) end

--- @return VoxelRenderer
function Object:AddVoxelRenderer() end

--- @return Camera
function Object:AddCamera() end

--- @return Sky
function Object:AddSkybox() end

--- @param p1 string
--- @return userdata
function Object:AddComponent(p1) end

--- @param p1 string
--- @return boolean
function Object:RemoveComponent(p1) end

--- @param p1 userdata
--- @return boolean
function Object:RemoveComponent(p1) end

--[[
Find a component by type name. Returns the first component found

[View Documentation](https://docs.atomontage.com/api/Object#userdata-GetComponentByType-string)
]]
--- @param p1 string
--- @return userdata
function Object:GetComponentByType(p1) end

--[[
Find all components by type name

[View Documentation](https://docs.atomontage.com/api/Object#table-GetComponentsByType-string)
]]
--- @param p1 string
--- @return table
function Object:GetComponentsByType(p1) end

--[[
Find attached script component lua table by name

[View Documentation](https://docs.atomontage.com/api/Object#userdata-FindScript-string)
]]
--- @param p1 string
--- @return userdata
function Object:FindScript(p1) end

--- @return Camera
function Object:GetCamera() end

--- @return string
function Object:GetNetworkFlow() end

--- @return string
function Object:GetScriptUpdateTime() end

--- @return integer
function Object:GetRefCount() end

--[[
`Client`
`Server`

Returned by [`Overlap()` functions]](Collision#table-GetOverlap).

[View Documentation](https://docs.atomontage.com/api/Overlap)
]]
--- @class Overlap
--- @field center Vec3
--- @field radius number
--- @field object Object
--- @field shape Shape
Overlap = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Polygon)
]]
--- @class Polygon
Polygon = {}

--- @return Polygon
function Polygon() end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Quat)
]]
--- @class Quat
--- @operator add(Quat):Quat
--- @operator sub(Quat):Quat
--- @operator mul(Quat):Quat
--- @operator mul(Vec4):Vec4
--- @operator mul(Vec3):Vec3
--- @operator mul(number):Quat
--- @operator div(number):Quat
--- @operator pow(number):Quat
--- @operator unm(Quat):Quat
--- @field x number
--- @field y number
--- @field z number
--- @field w number
--- @field identity Quat
Quat = {}

--- @return Quat
function Quat() end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat(p1, p2) end

--- @param p1 Mat4
--- @return Quat
function Quat(p1) end

--- @param p1 Mat3
--- @return Quat
function Quat(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Quat
function Quat(p1, p2, p3, p4) end

--- @param p1 Quat
--- @return Quat
function Quat(p1) end

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

--- @param p1 Quat
--- @param p2 Vec4
--- @return Vec4
function Quat:__mul(p1, p2) end

--- @param p1 Quat
--- @param p2 Vec3
--- @return Vec3
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
--- @param p2 number
--- @return Quat
function Quat:__div(p1, p2) end

--- @param p1 Quat
--- @param p2 number
--- @return Quat
function Quat:__pow(p1, p2) end

--- @param p1 Quat
--- @return Quat
function Quat:__unm(p1) end

--- @param p1 Quat
--- @param p2 Quat
--- @return boolean
function Quat:__eq(p1, p2) end

--- @return number
function Quat:Len() end

--- @return number
function Quat:Length() end

--- @return number
function Quat:SqrLength() end

--- @return boolean
function Quat:IsZero() end

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
function Quat:Slerp(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @return Quat
function Quat:Sterp(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 Quat
--- @param p3 number
--- @param p4 Vec3
--- @return Quat
function Quat:Sterp(p1, p2, p3, p4) end

--- @return nil
function Quat:Normalize() end

--- @return Quat
function Quat:GetNormalized() end

--- @return nil
function Quat:Invert() end

--- @return Quat
function Quat:GetInversed() end

--- @param p1 Quat
--- @param p2 number
--- @param p3 Vec3
--- @return nil
function Quat:Rotate(p1, p2, p3) end

--- @param p1 Quat
--- @param p2 number
--- @param p3 Vec3
--- @return Quat
function Quat:GetRotated(p1, p2, p3) end

--- @return Quat
function Quat:GetConjugate() end

--- @param p1 Quat
--- @return number
function Quat:GetPitch(p1) end

--- @param p1 Quat
--- @return number
function Quat:GetYaw(p1) end

--- @param p1 Quat
--- @return number
function Quat:GetRoll(p1) end

--- @param p1 Quat
--- @return Vec3
function Quat:GetEuler(p1) end

--- @param p1 Quat
--- @return number
function Quat:GetAngle(p1) end

--- @return Vec3
function Quat:GetAxis() end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Quat
function Quat:Euler(p1, p2, p3) end

--- @param p1 Vec3
--- @return Quat
function Quat:Euler(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Quat
function Quat:Axes(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Quat
function Quat:AngleAxis(p1, p2) end

--- @param p1 Vec3
--- @return Quat
function Quat:LookAt(p1) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Quat
function Quat:LookAt(p1, p2) end

--- @param p1 Quat
--- @return string
function Quat:__tostring(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/RealtimeLightingInfo)
]]
--- @class RealtimeLightingInfo
--- @field diffuseColor Vec3
--- @field directionalLight boolean
--- @field direction Vec3
--- @field diffuseRayLen number
--- @field diffuseDirSpread number
--- @field diffuseSamples integer
--- @field shadowsIntensity number
--- @field shadows boolean
--- @field ambientOcclusion boolean
--- @field ambientColor Vec3
--- @field ambientRayLen number
--- @field ambientSamples integer
--- @field skyAmbientIntensity number
--- @field ambientOcclusionFactor number
--- @field taskBoxScale integer
RealtimeLightingInfo = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Scene)
]]
--- @class Scene
--- @field lighting LightingUpdate
--- @field objectLighting LightingUpdate
Scene = {}

--- @return number
function Scene:GetTime() end

--[[

Time passed since the last Update() call. Since time between updates is not constant use this to adjust changes such as movement according to the amount of time that has passed
```lua
function self:Update()
    local speed = 10
    local move = Vec3.right
    --remember to multiply by delta time, since the time passed between each Update() is not constant
    self.transform.pos = self.transform.pos + move * speed * Scene:GetDeltaTime() 
end
```
[View Documentation](https://docs.atomontage.com/api/Scene#number-GetDeltaTime)
]]
--- @return number
function Scene:GetDeltaTime() end

--- @return number
function Scene:GetDebugTime() end

--- @return integer
function Scene:GetCurrentFrame() end

--[[
What is currently being processed i.e Start, Update, LateUpdate etc.

[View Documentation](https://docs.atomontage.com/api/Scene#string-GetProcessState)
]]
--- @return string
function Scene:GetProcessState() end

--- @return Object
function Scene:CreateObject() end

--- @param p1 string
--- @param p2 boolean
--- @param p3 boolean
--- @return Object
function Scene:CreateObject(p1, p2, p3) end

--- @param p1 string
--- @param p2 Object
--- @param p3 boolean
--- @param p4 boolean
--- @return Object
function Scene:CreateObject(p1, p2, p3, p4) end

--- @param p1 string
--- @param p2 Object
--- @return Object
function Scene:CreateObject(p1, p2) end

--- @param p1 Object
--- @return Object
function Scene:CreateObject(p1) end

--[[
Create an object on server or client. The object is not automatically synced to clients unless its set to.
For naming we recommend to: 
* Use capital case 
* Use spaces between words
* If the object only holds a script component, name the object after the script
* Avoid creating multiple objects with the same name (i.e. by numbering them)
* If the object somehow belongs to a player include the user ID in the name
```lua
local ob = Scene:CreateObject("Player Controller 1")
```

Also see [`Scene:MakeNameValid`](#string-MakeNameValid-string)

[View Documentation](https://docs.atomontage.com/api/Scene#Object-CreateObject-string)
]]
--- @param p1 string
--- @return Object
function Scene:CreateObject(p1) end

--- @param p1 Object
--- @return nil
function Scene:DestroyObject(p1) end

--- @param p1 string
--- @return table
function Scene:GetObjectsByName(p1) end

--- @param p1 string
--- @return Object
function Scene:GetObjectByName(p1) end

--- @param p1 string
--- @return Object
function Scene:GetObjectById(p1) end

--- @return table
function Scene:GetRootObjects() end

--- @return table
function Scene:GetAllObjects() end

--- @param p1 Object
--- @return Object
function Scene:CloneObject(p1) end

--- @param p1 Object
--- @param p2 string
--- @param p3 boolean
--- @return Object
function Scene:CloneObject(p1, p2, p3) end

--- @param p1 Object
--- @param p2 boolean
--- @return Object
function Scene:CloneObject(p1, p2) end

--- @param p1 Object
--- @param p2 string
--- @return Object
function Scene:CloneObject(p1, p2) end

--- @param p1 Object
--- @param p2 Object
--- @return boolean
function Scene:MoveObject(p1, p2) end

--- @param p1 Object
--- @param p2 Object
--- @return boolean
function Scene:MoveObjectAfter(p1, p2) end

--- @param p1 Object
--- @param p2 Object
--- @return boolean
function Scene:MoveObjectBefore(p1, p2) end

--- @param p1 Object
--- @return boolean
function Scene:MoveObjectToRoot(p1) end

--- @param p1 Object
--- @param p2 Object
--- @return boolean
function Scene:CanMoveObject(p1, p2) end

--- @param p1 string
--- @return userdata
function Scene:CreateMaterial(p1) end

--- @return Camera
function Scene:GetActiveCamera() end

--- @param p1 Camera
--- @return nil
function Scene:SetActiveCamera(p1) end

--- @param p1 string
--- @param p2 Object
--- @return string
function Scene:AddNewScriptFile(p1, p2) end

--- @param p1 string
--- @return VoxelDB
function Scene:GetVoxelDB(p1) end

--- @param p1 table
--- @return table
function Scene:TraceRay(p1) end

--- @param p1 VoxelRenderer
--- @param p2 Vec3
--- @return Vec3
function Scene:ConvertWcToDc(p1, p2) end

--- @param p1 VoxelRenderer
--- @param p2 table
--- @return table
function Scene:ConvertWcToDc(p1, p2) end

--- @param p1 VoxelRenderer
--- @param p2 Vec3
--- @return Vec3
function Scene:ConvertDcToWc(p1, p2) end

--- @param p1 VoxelRenderer
--- @param p2 table
--- @return table
function Scene:ConvertDcToWc(p1, p2) end

--- @param p1 string
--- @return boolean
function Scene:IsNameValid(p1) end

--- @param p1 string
--- @return string
function Scene:MakeNameValid(p1) end

--- @param p1 Object
--- @return boolean
function Scene:UpdatePrefab(p1) end

--- @param p1 Object
--- @return boolean
function Scene:ResetPrefab(p1) end

--- @return nil
function Scene:RebuildLighting() end

--- @param p1 string
--- @param p2 string
--- @return LightingUpdate
function Scene:CreateLighting(p1, p2) end

--- @return boolean
function Scene:GetProfileScriptsUpdate() end

--- @param p1 boolean
--- @return nil
function Scene:SetProfileScriptsUpdate(p1) end

--- @return table
function Scene:GetSimpleStats() end

--- @return table
function Scene:GetVDRStats() end

--[[
`Client`
`Server`

Script component. Not to be confused with the actual [lua table instance](ScriptInstance) of the script referred to as `self`.

[View Documentation](https://docs.atomontage.com/api/Script)
]]
--- @class Script
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field instance table
--- @field name string
--- @field file string
--- @field syncToClients boolean
Script = {}

--- @vararg any
--- @return integer
function Script:RPC(...) end

--- @return string
function Script:GetNetworkFlow() end

--- @return string
function Script:GetScriptUpdateTime() end

--[[
`Client`
`Server`

The lua table referred to in a script with `self`
The [`Script`](Script) component attached to the object can be found via `self.component`.

```lua
local self = {}

--Called once on object creation before Start()
function self:Attach()
end

--Called once on object creation after Attach()
function self:Start()
end

--Called once a frame after Start() if the object is active
function self:Update(dt)
end

--Called after Update(), before rendering
function self:LateUpdate()
end

function self:OnActivate()
end

function self:OnDeactivate()
end

--Called when script component or object is destroyed
function self:Detach()
end

return self
```

### Script Lifecycle
The rules:
* The script is loaded and `Attach()` is called right away, even if the object is inactive
* If the object is active `Start()` etc is called one frame later. Currently only on server this may change in the future  
* Each step is done for all applicable objects in a row i.e load all scripts, `Attach()` all objects, `Start()` all active objects
* Never call `OnActivate()` `OnDeactivate()` before `Start()`
* Never call `OnDeactivate()` if `OnActivate()` has not been called

```mermaid
---
title: Script Lifecycle
---
graph TD;
    C([Script component loaded via scene or created at runtime])-->L
    
subgraph Immediately
    L["Load scripts"]-->A;
end
subgraph NextFrame

    A["Attach()"]-- if active -->S;
    S["Start()"]-- if active -->OA;

    OA["OnActivate()"]-- if active -->U;
    OA["OnActivate()"]-- if inactive, next frame -->OD;


    U["Update()"]-->LU;
    LU["LateUpdate()"]--every frame-->U;
    LU["LateUpdate()"]--deactivated, next frame-->OD;

    OD["OnDeactivate()"]--activated, next frame-->OA;
end

    NextFrame -->DEL;

    DEL([Flagged for deletion at any step])-->D

    D["Detach()"] --> *([Destroy Script Component]);
```

[View Documentation](https://docs.atomontage.com/api/ScriptInstance)
]]
--- @class ScriptInstance
--- @field component Script
--- @field object Object
--- @field transform Transform
--- @field onServer boolean
--- @field onClient boolean
ScriptInstance = {
	component = nil, ---The script component, separate from the lua table
	object = nil, ---The object this script is attached to
	transform = nil, ---The transform of the object this script is attached to
	onServer = nil, ---Use this to run part of the code only on server or client```lua if self.onServer then    -- do something only on serverend```
	onClient = nil, ---Use this to run part of the code only on server or client```lua if self.onClient then    -- do something only on clientend```import { render } from "react-dom"
}

--[[
Called once on object creation after Attach() once the script becomes active

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Start)
]]
--- @return nil
function ScriptInstance:Start() end

--[[
Called once a frame after Start() if the object is active 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Update-number-deltaTime)
]]
--- @param deltaTime number
--- @return nil
function ScriptInstance:Update(deltaTime) end

--[[
Called once on object creation before Start() even if the script is not active

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Attach)
]]
--- @return nil
function ScriptInstance:Attach() end

--[[
Called when script component or object is destroyed

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-Detach)
]]
--- @return nil
function ScriptInstance:Detach() end

--[[
Script active state changed through object or component. Never called before Start() 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-OnActivate)
]]
--- @return nil
function ScriptInstance:OnActivate() end

--[[
Script active state changed through object or component. Never called before Start() and OnActivate() 

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-OnDeactivate)
]]
--- @return nil
function ScriptInstance:OnDeactivate() end

--[[
Called after Update(), before rendering

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-LateUpdate)
]]
--- @return nil
function ScriptInstance:LateUpdate() end

--[[
Call a lua function by name from server to all clients or from one client to server. You may pass parameters. 
You may send tables and basic math types such as `Vec3` or `Quat` but other classes may not be supported.

```lua
function self:Start()
    --remember to sync the script component to clients otherwise there is no one to receive the RPCs
    self.component.syncToClients = true
    self.cam = Scene:GetActiveCamera()

    events.mouseButtonDown.addListener(self, function (button, from)
        if self.onServer then return end
        --if left mouse button pressed create a ray from mouse position and direction
        if button == 1 then
            local mpos = Input:MousePosPerc()
            local tf = self.cam.object.transform
            local pos = tf.pos + tf.forward * 1.5

            --call this function on all clients with these two parameters
            self:RPC("serverRaycast", pos, tf.forward*1000)
        end
    end)

end

function self:serverRaycast(origin, ray)
    assert(self.onServer)
    local hit = Collision():Raycast(origin, ray)[1]
    if hit then
        --make a cross at hit
        deb:cross(hit.pos)
        print("hit")
    end
end
```


[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-RPC-string)
]]
--- @param p1 string
--- @vararg any
--- @return nil
function ScriptInstance:RPC(p1, ...) end

--[[
From server call a lua function by name on one specific client

[View Documentation](https://docs.atomontage.com/api/ScriptInstance#nil-RPC-integer-string)
]]
--- @param p1 integer
--- @param p2 string
--- @vararg any
--- @return nil
function ScriptInstance:RPC(p1, p2, ...) end

--[[
`Server`
:::info Server Only
This class is only available on server
:::

[View Documentation](https://docs.atomontage.com/api/Server)
]]
--- @class Server
--- @field clientID integer
Server = {}

--- @return table
function Server:GetClients() end

--- @return table
function Server:GetUsersID() end

--- @param p1 integer
--- @return string
function Server:GetUserID(p1) end

--- @param p1 integer
--- @return nil
function Server:DisconnectClient(p1) end

--- @return integer
function Server:GetScriptsVersion() end

--- @param p1 string
--- @return string
function Server:GetScript(p1) end

--- @return nil
function Server:LuaReset() end

--- @return nil
function Server:ResendScripts() end

--- @return table, table
function Server:GetLuaFilesList() end

--[[
Voxel files in the Montage/Voxels, those you saved in your montage and they are not necessary uploaded to the cloud already. local montage assets

[View Documentation](https://docs.atomontage.com/api/Server#table-table-GetVoxelFilesList)
]]
--- @return table, table
function Server:GetVoxelFilesList() end

--[[
Assets in cloud of maker that made this montage

[View Documentation](https://docs.atomontage.com/api/Server#table-table-GetMakerAssetsList)
]]
--- @return table, table
function Server:GetMakerAssetsList() end

--[[
Common, those we provide cloud with as free to use

[View Documentation](https://docs.atomontage.com/api/Server#table-table-GetCommonAssetsList)
]]
--- @return table, table
function Server:GetCommonAssetsList() end

--[[
Common scenes

[View Documentation](https://docs.atomontage.com/api/Server#table-table-GetCommonScenesList)
]]
--- @return table, table
function Server:GetCommonScenesList() end

--- @return table
function Server:GetPrefabsList() end

--- @param p1 integer
--- @return Object
function Server:InsertPrefab(p1) end

--- @param p1 string
--- @return Object
function Server:InsertPrefab(p1) end

--- @param p1 Object
--- @return boolean
function Server:MakePrefab(p1) end

--- @return nil
function Server:SaveScene() end

--- @return nil
function Server:SaveSceneHierarchy() end

--- @param p1 boolean
--- @return nil
function Server:SetBackupSceneOnSave(p1) end

--- @return boolean
function Server:GetBackupSceneOnSave() end

--- @return nil
function Server:ReloadScene() end

--- @return nil
function Server:OnLuaLog() end

--- @return boolean
function Server:IsClient() end

--- @return boolean
function Server:IsServer() end

--- @return boolean
function Server:DevMode() end

--- @return string
function Server:GetSystemConsole() end

--- @return string
function Server:GetSystemOutput() end

--- @return integer
function Server:GetCurrentUIActionID() end

--- @return nil
function Server:ScrollToLastestLuaLog() end

--- @return CommandLine
function Server:GetCommandLine() end

--- @return table
function Server:GetVersion() end

--- @return System
function Server:GetSystem() end

--- @return string
function Server:GetDateTime() end

--- @return integer
function Server:GetMemoryUsage() end

--- @return table
function Server:GetErrors() end

--- @return integer
function Server:GetMaxConnections() end

--- @return nil
function Server:ResetTracy() end

--- @return boolean
function Server:GetStartedWithOriginalScripts() end

--- @return nil
function Server:OverwriteWithOriginalScripts() end

--- @return boolean
function Server:GetOriginalScriptsWereSet() end

--- @param p1 string
--- @param p2 table
--- @param p3 string
--- @param p4 userdata
--- @return nil
function Server:HttpPost(p1, p2, p3, p4) end

--- @param p1 string
--- @param p2 table
--- @param p3 userdata
--- @return nil
function Server:HttpGet(p1, p2, p3) end

--- @param p1 string
--- @param p2 table
--- @param p3 userdata
--- @return nil
function Server:HttpDownload(p1, p2, p3) end

--- @param p1 integer
--- @return number
function Server:GetPing(p1) end

--- @param p1 File
--- @param p2 string
--- @return boolean
function Server:MoveFileToMontageVoxelsFolder(p1, p2) end

--- @param p1 File
--- @param p2 userdata
--- @param p3 userdata
--- @return nil
function Server:MakeUrlForFile(p1, p2, p3) end

--- @return AssetManager
function Server:GetResourceManScene() end

--- @return AssetManager
function Server:GetResourceManUI() end

--- @return AssetManager
function Server:GetResourceManSettings() end

--- @param p1 string
--- @return number
function Server:GetLogTime(p1) end

--- @param p1 string
--- @return table
function Server:GetLogTimers(p1) end

--- @return table
function Server:GetStreamingStats() end

--- @return table
function Server:GetMainDispatcherStats() end

--- @return nil
function Server:TriggerCrash() end

--- @return nil
function Server:TriggerException() end

--- @return nil
function Server:TriggerCriticalError() end

--- @return nil
function Server:Restart() end

--- @param p1 string
--- @param p2 table
--- @return nil
function Server:AnalyticsServer(p1, p2) end

--- @param p1 integer
--- @param p2 string
--- @param p3 table
--- @return nil
function Server:AnalyticsClient(p1, p2, p3) end

--- @return nil
function Server:TeamcityApiTest() end

--- @param p1 integer
--- @return nil
function Server:TeamcityApiTest2(p1) end

--- @return table
function Server:GetTeamcityBuilds() end

--- @param p1 integer
--- @return table
function Server:GetTeamcityBuild(p1) end

--- @param p1 integer
--- @return integer
function Server:GetCollectionPreferredLoad(p1) end

--- @param p1 integer
--- @param p2 integer
--- @return nil
function Server:SetCollectionPreferredLoad(p1, p2) end

--- @return nil
function Server:GenTestVoxelScene() end

--- @return nil
function Server:GenTestVoxelScene2() end

--- @return nil
function Server:GenTestVoxelScene3() end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return nil
function Server:MakeVoxelScene(p1, p2, p3, p4) end

--- @return nil
function Server:RebuildLODsBrightnessMethod() end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return nil
function Server:RebuildLODsBrightnessMethod(p1, p2) end

--- @return boolean
function Server:RebuildLODsGradientMethod() end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return boolean
function Server:RebuildLODsGradientMethod(p1, p2) end

--- @param p1 integer
--- @return boolean
function Server:ShowAllNormalsPerVoxel(p1) end

--- @param p1 integer
--- @return boolean
function Server:ShowAllNormalsPerBT(p1) end

--- @return nil
function Server:PBRTranscodeToPBR0Ver1() end

--[[
`Client`
`Server`

For [voxel edits](VoxelEdit#userdata-shape), [collisions](Collision#Shape-shape) and [rendering](MeshData#nil-AddShape-Shape-Vec4)

All shapes inherit from this class. It is not meant to be instantiated directly.
* [Box](Box)
* [Sphere](Sphere)
* [Capsule](Capsule)
* [Cylinder](Cylinder)
* [Polygon](Polygon)

[View Documentation](https://docs.atomontage.com/api/Shape)
]]
--- @class Shape
--- @field pos Vec3
--- @field rot Quat
--- @field size Vec3
--- @field radius number
--- @field diameter number
--- @field pos2 Vec3
--- @field radius2 number
--- @field diameter2 number
--- @field points table
--- @field useShellPositions boolean
Shape = {}

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Sky)
]]
--- @class Sky
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field cloudScale number
--- @field cloudOffset number
--- @field cloudSlope number
--- @field sunAzimuth number
--- @field sunAltitude number
--- @field rayleighCoeff Vec3
--- @field mieCoeff number
--- @field yRotationAngle number
--- @field render boolean
Sky = {}

--- @param p1 string
--- @param p2 TextureType
--- @param p3 Vec4
--- @param p4 number
--- @return nil
function Sky:LoadSkyTexture(p1, p2, p3, p4) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Sphere)
]]
--- @class Sphere
Sphere = {}

--- @return Sphere
function Sphere() end

--[[
Centered sphere

[View Documentation](https://docs.atomontage.com/api/Sphere#Sphere-Vec3-number)
]]
--- @param p1 Vec3
--- @param p2 number
--- @return Sphere
function Sphere(p1, p2) end

--- @param p1 Vec3
--- @return Sphere
function Sphere(p1) end

--[[
`Client`
`Server`

Every scene has only **one** static voxel data and can have multiple dynamic voxel data. The static voxel data is used for the world and can not be moved.

[View Documentation](https://docs.atomontage.com/api/StaticVoxelData)
]]
--- @class StaticVoxelData
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field path string
--- @field isLoaded boolean
StaticVoxelData = {}

--[[
`Client`
`Server`

Holds position, rotation, and scale 

[View Documentation](https://docs.atomontage.com/api/Transform)
]]
--- @class Transform
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field localPos Vec3
--- @field localScale number
--- @field localRot Quat
--- @field localEulerRot Vec3
--- @field pos Vec3
--- @field rot Quat
--- @field eulerRot Vec3
--- @field scale number
--- @field right Vec3
--- @field up Vec3
--- @field forward Vec3
Transform = {
	localPos = nil, ---The local position of the object relative to its parent
	localScale = nil, ---The local scale of the object relative to its parent
	localRot = nil, ---The local rotation of the object represented as a quaternion.
	localEulerRot = nil, ---The local rotation of the object represented as Euler angles.
	pos = nil, ---The global (world) position of the object
	rot = nil, ---The global (world) rotation of the object as a quaternion
	eulerRot = nil, ---The global (world) rotation of the object represented as Euler angles.
	scale = nil, ---The global (world) scale of the object.
	right = nil, ---The right direction vector of the object in world space.
	up = nil, ---The right direction vector of the object in world space.
	forward = nil, ---The forward direction vector of the object in world space.
}

--- @param p1 Transform
--- @param p2 Transform
--- @return boolean
function Transform:__eq(p1, p2) end

--[[
Transforms a local position to world space, allowing you to convert coordinates relative to an object into global coordinates.

[View Documentation](https://docs.atomontage.com/api/Transform#Vec3-LocalToWorld-Vec3)
]]
--- @param p1 Vec3
--- @return Vec3
function Transform:LocalToWorld(p1) end

--[[
Converts a world position to local space, making it useful for determining an object's position relative to another object.

[View Documentation](https://docs.atomontage.com/api/Transform#Vec3-WorldToLocal-Vec3)
]]
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
Adjusts the object's rotation to look at a specified point in the world, aligning it with the target position.

[View Documentation](https://docs.atomontage.com/api/Transform#nil-LookAt-Vec3)
]]
--- @param p1 Vec3
--- @return nil
function Transform:LookAt(p1) end

--[[
A more customizable version of LookAt, allowing you to specify both the target point and an up direction for the object's orientation.

[View Documentation](https://docs.atomontage.com/api/Transform#nil-LookAt-Vec3-Vec3)
]]
--- @param p1 Vec3
--- @param p2 Vec3
--- @return nil
function Transform:LookAt(p1, p2) end

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

[View Documentation](https://docs.atomontage.com/api/VVCollision)
]]
--- @class VVCollision
--- @field filter Filter
--- @field traversalStopVxSize number
--- @field detectionGeometryDetail number
--- @field globalVisibleLocalVisible boolean
--- @field globalInvisibleLocalVisible boolean
--- @field globalVisibleLocalInvisible boolean
--- @field globalInvisibleLocalInvisible boolean
--- @field rayPos Vec3
--- @field rayDir Vec3
VVCollision = {
	traversalStopVxSize = nil, ---this parameter will be set to smallest voxel that should be traversed (unless it is SUPERNODE - in that case traversal will go deeper)- it can be calculated even for a stretched transformed entity once before its node graph traversal- if a voxel in a node is larger than this, children of the node will be traversed- in top level CD routine(s) the size is in the same coords scale as prim (ie in the provided world (WC) size scale)- in deep CD routines the size is in DC coords scale (it was calculated such if entity has transform)
}

--- @return VVCollision
function VVCollision() end

--- @return VVCollision
function VVCollision() end

--- @return table
function VVCollision:Raycast() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return table
function VVCollision:Raycast(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @param p3 number
--- @return table
function VVCollision:CapsuleOverlap(p1, p2, p3) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2)
]]
--- @class Vec2
--- @operator add(Vec2):Vec2
--- @operator add(Vec2i):Vec2
--- @operator add(number):Vec2
--- @operator sub(Vec2):Vec2
--- @operator sub(Vec2i):Vec2
--- @operator sub(number):Vec2
--- @operator mul(Vec2):Vec2
--- @operator mul(Vec2i):Vec2
--- @operator mul(number):Vec2
--- @operator div(Vec2):Vec2
--- @operator div(Vec2i):Vec2
--- @operator div(number):Vec2
--- @operator mod(Vec2):Vec2
--- @operator mod(Vec2i):Vec2
--- @operator mod(number):Vec2
--- @operator pow(Vec2):Vec2
--- @operator pow(Vec2i):Vec2
--- @operator pow(number):Vec2
--- @operator unm(Vec2):Vec2
--- @field x number
--- @field y number
--- @field zero Vec2
Vec2 = {}

--- @return Vec2
function Vec2() end

--- @param p1 number
--- @return Vec2
function Vec2(p1) end

--- @param p1 integer
--- @return Vec2
function Vec2(p1) end

--- @param p1 number
--- @param p2 number
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 number
--- @param p2 integer
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 integer
--- @param p2 number
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2
function Vec2(p1, p2) end

--- @param p1 Vec2
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec2i
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec3
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec3i
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec4
--- @return Vec2
function Vec2(p1) end

--- @param p1 Vec4i
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
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mod(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__mod(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__mod(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__mod(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec2
function Vec2:__pow(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec2
function Vec2:__pow(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:__pow(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec2
function Vec2:__pow(p1, p2) end

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

--- @return number
function Vec2:Len() end

--- @return number
function Vec2:Length() end

--- @return number
function Vec2:SqrLength() end

--- @return boolean
function Vec2:IsZero() end

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
function Vec2:GetNormalized() end

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

--- @param p1 Vec2
--- @return nil
function Vec2:Round(p1) end

--- @param p1 Vec2
--- @return Vec2
function Vec2:GetRounded(p1) end

--- @param p1 Vec2
--- @return number
function Vec2:DistanceTo(p1) end

--- @param p1 Vec2
--- @return number
function Vec2:GetAngle(p1) end

--- @param p1 Vec2
--- @param p2 number
--- @return nil
function Vec2:Rotate(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec2
function Vec2:GetRotated(p1, p2) end

--- @param p1 Vec2
--- @return string
function Vec2:__tostring(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec2i)
]]
--- @class Vec2i
--- @operator add(Vec2i):Vec2i
--- @operator add(Vec2):Vec2
--- @operator add(integer):Vec2i
--- @operator sub(Vec2i):Vec2i
--- @operator sub(Vec2):Vec2
--- @operator sub(integer):Vec2i
--- @operator mul(Vec2i):Vec2i
--- @operator mul(Vec2):Vec2
--- @operator mul(integer):Vec2i
--- @operator div(Vec2i):Vec2i
--- @operator div(Vec2):Vec2
--- @operator div(integer):Vec2i
--- @operator mod(Vec2i):Vec2i
--- @operator mod(Vec2):Vec2
--- @operator mod(integer):Vec2i
--- @operator pow(Vec2i):Vec2i
--- @operator pow(Vec2):Vec2
--- @operator pow(integer):Vec2i
--- @operator unm(Vec2i):Vec2i
--- @operator band(Vec2i):Vec2i
--- @operator band(integer):Vec2i
--- @operator bor(Vec2i):Vec2i
--- @operator bor(integer):Vec2i
--- @operator bxor(Vec2i):Vec2i
--- @operator bxor(integer):Vec2i
--- @operator bnot(Vec2i):Vec2i
--- @operator shl(Vec2i):Vec2i
--- @operator shl(integer):Vec2i
--- @operator shr(Vec2i):Vec2i
--- @operator shr(integer):Vec2i
--- @field x integer
--- @field y integer
--- @field zero Vec2i
Vec2i = {}

--- @return Vec2i
function Vec2i() end

--- @param p1 integer
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 number
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 integer
--- @param p2 number
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 number
--- @param p2 integer
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 number
--- @param p2 number
--- @return Vec2i
function Vec2i(p1, p2) end

--- @param p1 Vec2i
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec2
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec3i
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec3
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec4i
--- @return Vec2i
function Vec2i(p1) end

--- @param p1 Vec4
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
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__mod(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__pow(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec2
function Vec2i:__pow(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__pow(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__pow(p1, p2) end

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

--- @return integer
function Vec2i:Len() end

--- @return integer
function Vec2i:Length() end

--- @return integer
function Vec2i:SqrLength() end

--- @return boolean
function Vec2i:IsZero() end

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

--- @param p1 integer
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

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec2i
function Vec2i:__shr(p1, p2) end

--- @param p1 Vec2i
--- @return string
function Vec2i:__tostring(p1) end

--[[
`Client`
`Server`

3D vectors and points.

[View Documentation](https://docs.atomontage.com/api/Vec3)
]]
--- @class Vec3
--- @operator add(Vec3):Vec3
--- @operator add(Vec3i):Vec3
--- @operator add(number):Vec3
--- @operator sub(Vec3):Vec3
--- @operator sub(Vec3i):Vec3
--- @operator sub(number):Vec3
--- @operator mul(Vec3):Vec3
--- @operator mul(Vec3i):Vec3
--- @operator mul(number):Vec3
--- @operator div(Vec3):Vec3
--- @operator div(Vec3i):Vec3
--- @operator div(number):Vec3
--- @operator mod(Vec3):Vec3
--- @operator mod(Vec3i):Vec3
--- @operator mod(number):Vec3
--- @operator pow(Vec3):Vec3
--- @operator pow(Vec3i):Vec3
--- @operator pow(number):Vec3
--- @operator unm(Vec3):Vec3
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

--- @param p1 integer
--- @return Vec3
function Vec3(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3
function Vec3(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 Vec2
--- @param p2 integer
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 number
--- @param p2 Vec2i
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec3
function Vec3(p1, p2) end

--- @param p1 Vec3
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec3i
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec4
--- @return Vec3
function Vec3(p1) end

--- @param p1 Vec4i
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
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mod(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__mod(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__mod(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__mod(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return Vec3
function Vec3:__pow(p1, p2) end

--- @param p1 Vec3
--- @param p2 Vec3i
--- @return Vec3
function Vec3:__pow(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec3
function Vec3:__pow(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec3
function Vec3:__pow(p1, p2) end

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

--- @return number
function Vec3:Len() end

--- @return number
function Vec3:Length() end

--- @return number
function Vec3:SqrLength() end

--- @return boolean
function Vec3:IsZero() end

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
function Vec3:GetNormalized() end

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

--- @param p1 Vec3
--- @return string
function Vec3:__tostring(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec3i)
]]
--- @class Vec3i
--- @operator add(Vec3i):Vec3i
--- @operator add(Vec3):Vec3
--- @operator add(integer):Vec3i
--- @operator sub(Vec3i):Vec3i
--- @operator sub(Vec3):Vec3
--- @operator sub(integer):Vec3i
--- @operator mul(Vec3i):Vec3i
--- @operator mul(Vec3):Vec3
--- @operator mul(integer):Vec3i
--- @operator div(Vec3i):Vec3i
--- @operator div(Vec3):Vec3
--- @operator div(integer):Vec3i
--- @operator mod(Vec3i):Vec3i
--- @operator mod(Vec3):Vec3
--- @operator mod(integer):Vec3i
--- @operator pow(Vec3i):Vec3i
--- @operator pow(Vec3):Vec3
--- @operator pow(integer):Vec3i
--- @operator unm(Vec3i):Vec3i
--- @operator band(Vec3i):Vec3i
--- @operator band(integer):Vec3i
--- @operator bor(Vec3i):Vec3i
--- @operator bor(integer):Vec3i
--- @operator bxor(Vec3i):Vec3i
--- @operator bxor(integer):Vec3i
--- @operator bnot(Vec3i):Vec3i
--- @operator shl(Vec3i):Vec3i
--- @operator shl(integer):Vec3i
--- @operator shr(Vec3i):Vec3i
--- @operator shr(integer):Vec3i
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

--- @param p1 number
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @return Vec3i
function Vec3i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 Vec2i
--- @param p2 number
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 Vec2
--- @param p2 integer
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 Vec2
--- @param p2 number
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2i
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 integer
--- @param p2 Vec2
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 number
--- @param p2 Vec2i
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 number
--- @param p2 Vec2
--- @return Vec3i
function Vec3i(p1, p2) end

--- @param p1 Vec3i
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec3
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec4i
--- @return Vec3i
function Vec3i(p1) end

--- @param p1 Vec4
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
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__mod(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__pow(p1, p2) end

--- @param p1 Vec3i
--- @param p2 Vec3
--- @return Vec3
function Vec3i:__pow(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__pow(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__pow(p1, p2) end

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

--- @return integer
function Vec3i:Len() end

--- @return integer
function Vec3i:Length() end

--- @return integer
function Vec3i:SqrLength() end

--- @return boolean
function Vec3i:IsZero() end

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

--- @param p1 integer
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

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec3i
function Vec3i:__shr(p1, p2) end

--- @param p1 Vec3i
--- @return string
function Vec3i:__tostring(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec4)
]]
--- @class Vec4
--- @operator add(Vec4):Vec4
--- @operator add(Vec4i):Vec4
--- @operator add(number):Vec4
--- @operator sub(Vec4):Vec4
--- @operator sub(Vec4i):Vec4
--- @operator sub(number):Vec4
--- @operator mul(Vec4):Vec4
--- @operator mul(Vec4i):Vec4
--- @operator mul(Mat4):Vec4
--- @operator mul(number):Vec4
--- @operator div(Vec4):Vec4
--- @operator div(Vec4i):Vec4
--- @operator div(number):Vec4
--- @operator mod(Vec4):Vec4
--- @operator mod(Vec4i):Vec4
--- @operator mod(number):Vec4
--- @operator pow(Vec4):Vec4
--- @operator pow(Vec4i):Vec4
--- @operator pow(number):Vec4
--- @operator unm(Vec4):Vec4
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

--- @param p1 integer
--- @return Vec4
function Vec4(p1) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 number
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4
function Vec4(p1, p2, p3, p4) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 number
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 number
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2i
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2i
--- @param p3 number
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 Vec2
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 Vec2i
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 Vec2
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 Vec2i
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 Vec2
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 Vec2i
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 Vec2
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 Vec2i
--- @return Vec4
function Vec4(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec3
--- @param p2 integer
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec3i
--- @param p2 number
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 number
--- @param p2 Vec3i
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3
--- @return Vec4
function Vec4(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
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
--- @param p2 Mat4
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
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mod(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return Vec4
function Vec4:__mod(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__mod(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__mod(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4
--- @return Vec4
function Vec4:__pow(p1, p2) end

--- @param p1 Vec4
--- @param p2 Vec4i
--- @return Vec4
function Vec4:__pow(p1, p2) end

--- @param p1 Vec4
--- @param p2 number
--- @return Vec4
function Vec4:__pow(p1, p2) end

--- @param p1 number
--- @param p2 Vec4
--- @return Vec4
function Vec4:__pow(p1, p2) end

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

--- @return number
function Vec4:Len() end

--- @return number
function Vec4:Length() end

--- @return number
function Vec4:SqrLength() end

--- @return boolean
function Vec4:IsZero() end

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
function Vec4:GetNormalized() end

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

--- @param p1 Vec4
--- @return string
function Vec4:__tostring(p1) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/Vec4i)
]]
--- @class Vec4i
--- @operator add(Vec4i):Vec4i
--- @operator add(Vec4):Vec4
--- @operator add(integer):Vec4i
--- @operator sub(Vec4i):Vec4i
--- @operator sub(Vec4):Vec4
--- @operator sub(integer):Vec4i
--- @operator mul(Vec4i):Vec4i
--- @operator mul(Vec4):Vec4
--- @operator mul(Mat4):Vec4i
--- @operator mul(integer):Vec4i
--- @operator div(Vec4i):Vec4i
--- @operator div(Vec4):Vec4
--- @operator div(integer):Vec4i
--- @operator mod(Vec4i):Vec4i
--- @operator mod(Vec4):Vec4
--- @operator mod(integer):Vec4i
--- @operator pow(Vec4i):Vec4i
--- @operator pow(Vec4):Vec4
--- @operator pow(integer):Vec4i
--- @operator unm(Vec4i):Vec4i
--- @operator band(Vec4i):Vec4i
--- @operator band(integer):Vec4i
--- @operator bor(Vec4i):Vec4i
--- @operator bor(integer):Vec4i
--- @operator bxor(Vec4i):Vec4i
--- @operator bxor(integer):Vec4i
--- @operator bnot(Vec4i):Vec4i
--- @operator shl(Vec4i):Vec4i
--- @operator shl(integer):Vec4i
--- @operator shr(Vec4i):Vec4i
--- @operator shr(integer):Vec4i
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

--- @param p1 number
--- @return Vec4i
function Vec4i(p1) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 integer
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 integer
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 integer
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 integer
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 integer
--- @param p3 number
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 integer
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 integer
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 number
--- @param p2 number
--- @param p3 number
--- @param p4 number
--- @return Vec4i
function Vec4i(p1, p2, p3, p4) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 integer
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 number
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 number
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 integer
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2
--- @param p2 number
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2i
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 Vec2
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2i
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2i
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2
--- @param p3 integer
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 Vec2
--- @param p3 number
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 Vec2i
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 integer
--- @param p3 Vec2
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 Vec2i
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 integer
--- @param p2 number
--- @param p3 Vec2
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 Vec2i
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 integer
--- @param p3 Vec2
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 Vec2i
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 number
--- @param p2 number
--- @param p3 Vec2
--- @return Vec4i
function Vec4i(p1, p2, p3) end

--- @param p1 Vec2i
--- @param p2 Vec2i
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec2i
--- @param p2 Vec2
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2i
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec2
--- @param p2 Vec2
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec3i
--- @param p2 integer
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec3i
--- @param p2 number
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec3
--- @param p2 integer
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 Vec3
--- @param p2 number
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3i
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 integer
--- @param p2 Vec3
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 number
--- @param p2 Vec3i
--- @return Vec4i
function Vec4i(p1, p2) end

--- @param p1 number
--- @param p2 Vec3
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
--- @param p2 Mat4
--- @return Vec4i
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
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__mod(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__mod(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__mod(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__mod(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__pow(p1, p2) end

--- @param p1 Vec4i
--- @param p2 Vec4
--- @return Vec4
function Vec4i:__pow(p1, p2) end

--- @param p1 Vec4i
--- @param p2 integer
--- @return Vec4i
function Vec4i:__pow(p1, p2) end

--- @param p1 integer
--- @param p2 Vec4i
--- @return Vec4i
function Vec4i:__pow(p1, p2) end

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

--- @return integer
function Vec4i:Len() end

--- @return integer
function Vec4i:Length() end

--- @return integer
function Vec4i:SqrLength() end

--- @return boolean
function Vec4i:IsZero() end

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

--- @param p1 integer
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

--- @param p1 integer
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

:::info
The voxel edit functions in this class are old and may not correctly work. Instead use [VoxelEdit](VoxelEdit).
:::

[View Documentation](https://docs.atomontage.com/api/VoxelDB)
]]
--- @class VoxelDB
--- @field autoLightingUpdate boolean
--- @field voxelDim integer
--- @field BlendEnabled boolean
--- @field BlendMode BlendMode
--- @field BlendOpacity number
--- @field BlendRadiusRatio number
VoxelDB = {}

--- @return nil
function VoxelDB:Clear() end

--[[
Flush() adds a special operation in the queue, which waits for all running ops to finish.
If we had flush after each op, it would eliminate all multithreaded processing.

[View Documentation](https://docs.atomontage.com/api/VoxelDB#nil-Flush)
]]
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

--[[
int is the neighborhood radius, 1 means it's from pos - 1 to pos + 1, 
sum of voxels in 3x3 square without center (0-26)
it should be in range 1-8

[View Documentation](https://docs.atomontage.com/api/VoxelDB#integer-GetMaskNeighbours-Vec3i-integer)
]]
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

--- @param p1 Vec3
--- @return nil
function VoxelDB:SetMaterial(p1) end

--- @param p1 Vec3
--- @param p2 Quat
--- @param p3 number
--- @return nil
function VoxelDB:InstantiateIE(p1, p2, p3) end

--- @return nil
function VoxelDB:ClearContent() end

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

--- @param p1 Vec3
--- @param p2 integer
--- @param p3 integer
--- @return userdata
function VoxelDB:InspectNormals(p1, p2, p3) end

--- @param p1 Vec3
--- @param p2 integer
--- @param p3 integer
--- @param p4 table
--- @param p5 integer
--- @return userdata
function VoxelDB:Inspect(p1, p2, p3, p4, p5) end

--- @return integer
function VoxelDB:GetLODsCount() end

--- @param p1 string
--- @return table
function VoxelDB:GetLayerStats(p1) end

--- @return table
function VoxelDB:GetUsedLayers() end

--[[
World position and size of AABB (axis-aligned bounding box) of the static voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDB#Vec3-Vec3-GetAABounds)
]]
--- @return Vec3, Vec3
function VoxelDB:GetAABounds() end

--[[
`Client`
`Server`

Component that holds voxel data. The actual data itself is in the `data` property.
The data will only render if the object also has a `VoxelRender` component.

[View Documentation](https://docs.atomontage.com/api/VoxelData)
]]
--- @class VoxelData
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field path string
--- @field data VoxelDataResource
--- @field copyOnWrite boolean
--- @field save boolean
--- @field editable boolean
VoxelData = {
	data = nil, ---The voxel data resource that this voxel data is using
	copyOnWrite = nil, ---make local copy of voxel data resource if edited 
}

--- @return VoxelData
function VoxelData() end

--- @param p1 Vec3
--- @param p2 Vec3
--- @return nil
function VoxelData:Mirror(p1, p2) end

--- @param p1 string
--- @return boolean, string
function VoxelData:SetPath(p1) end

--- @param p1 VoxelData
--- @param p2 VoxelData
--- @return boolean
function VoxelData:__eq(p1, p2) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource)
]]
--- @class VoxelDataResource
--- @field isEditable boolean
--- @field isSaved boolean
--- @field hasAnyVoxels boolean
--- @field volumePerc number
--- @field volume number
--- @field scaleToStatic number
VoxelDataResource = {
	isEditable = nil, ---returns false if loaded as aevv
	isSaved = nil, ---returns true if data was modified
	volumePerc = nil, ---Approximate. Quickly count non-zero blocks of voxel object. Block size is 8x8x8. Block can be fully filled or just 1 voxel
}

--- @param p1 string
--- @param p2 boolean
--- @return VoxelDataResource
function VoxelDataResource(p1, p2) end

--- @return VoxelDataResource
function VoxelDataResource() end

--- @param p1 string
--- @return VoxelDataResource
function VoxelDataResource(p1) end

--[[
save voxel data in AM file
second parameter controls if file will be overwritten

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#string-Save-string-boolean)
]]
--- @param p1 string
--- @param p2 boolean
--- @return string
function VoxelDataResource:Save(p1, p2) end

--[[
get center (in local space) and approximate dimensions of the voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#Vec3-Vec3-GetLocalBounds)
]]
--- @return Vec3, Vec3
function VoxelDataResource:GetLocalBounds() end

--[[
get center (in local space) and dimensions of the voxel data

[View Documentation](https://docs.atomontage.com/api/VoxelDataResource#Vec3-Vec3-GetPreciseLocalBounds)
]]
--- @return Vec3, Vec3
function VoxelDataResource:GetPreciseLocalBounds() end

--- @return userdata
function VoxelDataResource:Duplicate() end

--- @return nil
function VoxelDataResource:RebuildLighting() end

--[[
`Client`
`Server`

:::info Server Only
 Currently voxel edits can only be done on the server side.
:::

Use this class to create voxel edits.

Use this class by first creating a `VoxelEdit` object, then setting the properties such as `shape` and `color` and finally calling one of the edit methods:
* `Paint()`
* `Add()`
* `Remove()`
* `Copy()`
* `Kernel()`


```lua
function self:makeLine(p1, p2)
    --first create a VoxelEdit object
    local ve = VoxelEdit()

    --modify some properties
    local thickness = 0.2
    ve.shape = Capsule(p1, p2, thickness)
    ve.color = Vec3(1, 0, 1)

    --call the edit method
    ve:Add()
end
```

Every scene has only **one** static voxel data and can have multiple dynamic voxel data. The static voxel data is used for the world and can not be moved.
However both can be edited. To choose whether to edit the static or dynamic voxel data, use the `filter` property.
 
```lua
--create an object with voxel data and renderer
local ob = Scene:CreateObject("Voxel Sphere")
local vd = ob:AddComponent("VoxelData")
local vr = ob:AddComponent("VoxelRenderer")
local vres = VoxelDataResource() --new empty voxel data
vd.data = vres
ob.transform.pos = Vec3(0, 30, 0)

--voxel edit    
local ve = VoxelEdit()

--target the object and ignore static voxels
ve.filter.useStatic = false
ve.filter.forceList = { ob }

--add sphere
ve.color = Vec3(0,0.5,1)
ve.shape = Sphere(ob.transform.pos, 1)
ve:Add()
```

Use the copy operation to copy voxels from one object to others or the static voxel data.

```lua
--select some object with voxel data here
local copyFrom = Scene:GetObjectByName("Voxel Sphere")

local ve = VoxelEdit()

--make a box fitting the target to copy from
local b = Box()
local center, size = copyFrom:GetComponentByType("VoxelRenderer"):GetBounds()
b.pos = center
b.size = size
ve.shape = b
ve.filter.useNotStatic = false

--select what data to copy and its pasted transformation
ve.copyResource = copyFrom:GetComponentByType("VoxelData").data
ve.copyDestinationPos = copyFrom.transform.pos
ve.copyDestinationRot = copyFrom.transform.rot
ve.copyDestinationScale = copyFrom.transform.scale
ve:Copy()
```

See a different example [here](../manual/scripting/examples/Voxel-Edits)

[View Documentation](https://docs.atomontage.com/api/VoxelEdit)
]]
--- @class VoxelEdit
--- @field blendEnable boolean
--- @field blendMode BlendMode
--- @field blendOpacity number
--- @field blendRadiusRatio number
--- @field color Vec3
--- @field filter userdata
--- @field shape userdata
--- @field clampToMinVoxelSize boolean
--- @field copySourceTr Transform
--- @field copyDestinationTr Transform
--- @field copyDestinationPos Vec3
--- @field copyDestinationRot Quat
--- @field copyDestinationScale number
--- @field copySourcePos Vec3
--- @field copySourceRot Quat
--- @field copySourceScale number
--- @field copyResource userdata
--- @field copyInsert boolean
--- @field copyRemove boolean
--- @field copyColor boolean
--- @field kernelType integer
--- @field imageColor userdata
--- @field imageNormal userdata
--- @field imageUVTm Mat4
--- @field imageUVClamp boolean
--- @field imageNormalBlendEnable boolean
--- @field imageNormalBlendPower number
--- @field onProgress userdata
--- @field onFinished userdata
--- @field onError userdata
VoxelEdit = {
	blendMode = nil, ---Various blend modes which you may know from Photoshop. See a list of explanations [here](https://photoshoptrainingchannel.com/blending-modes-explained/#normal-blending-modes).
	shape = nil, ---if shape is nil the operation will match all targets 
	clampToMinVoxelSize = nil, ---if ClampToMinVoxelSize is true (it's default), it sets size of shape to at least size of voxel size of target. This can interfere with your box size if it's too small.
	kernelType = nil, ---0 = Smooth 7x5x71 = Smooth 3x3x32 = Smooth 5x5x53 = Inflate4 = Deflate5 = Normals smooth6 = Normals sharp
	onProgress = nil, ---callback function. progress from 0-1. May not be called every frame. Is called after script updates 
	onFinished = nil, ---callback function. onFinished is called after onProgress if it was last part
	onError = nil, ---callback function
}

--- @return VoxelEdit
function VoxelEdit() end

--- @param p1 Shape
--- @param p2 Vec3
--- @return VoxelEdit
function VoxelEdit(p1, p2) end

--- @param p1 Shape
--- @return VoxelEdit
function VoxelEdit(p1) end

--[[
Flush() adds a special operation in the queue, which waits for all running ops to finish.
If we had flush after each op, it would eliminate all multithreaded processing.

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Flush)
]]
--- @return nil
function VoxelEdit:Flush() end

--[[
Change the color of voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Paint)
]]
--- @return nil
function VoxelEdit:Paint() end

--[[
Add voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Add)
]]
--- @return nil
function VoxelEdit:Add() end

--[[
Remove voxels

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Remove)
]]
--- @return nil
function VoxelEdit:Remove() end

--[[
Copy voxels somewhere

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Copy)
]]
--- @return nil
function VoxelEdit:Copy() end

--[[
Smoothing/Inflate/Deflate

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-Kernel)
]]
--- @return nil
function VoxelEdit:Kernel() end

--- @param p1 Mat4
--- @param p2 number
--- @return Image
function VoxelEdit:CaptureImage(p1, p2) end

--- @param p1 string
--- @return Image
function VoxelEdit:GetImageResource(p1) end

--[[
It projects cone on voxel geometry and everything inside will be copies to tmp
all raycasts will collide with this tmp layer instead until FreeTmpLayers

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-FreeTmpLayers-integer)
]]
--- @param p1 integer
--- @return nil
function VoxelEdit:FreeTmpLayers(p1) end

--[[
It projects cone on voxel geometry and everything inside will be copies to tmp
all raycasts will collide with this tmp layer instead until FreeTmpLayers
parameters specify "cone" - two positions and end radius

[View Documentation](https://docs.atomontage.com/api/VoxelEdit#nil-FillTmpLayers-integer-Vec3-table-number-integer)
]]
--- @param p1 integer
--- @param p2 Vec3
--- @param p3 table
--- @param p4 number
--- @param p5 integer
--- @return nil
function VoxelEdit:FillTmpLayers(p1, p2, p3, p4, p5) end

--[[
`Client`
`Server`

[View Documentation](https://docs.atomontage.com/api/VoxelInspectData)
]]
--- @class VoxelInspectData
--- @field voxelSize number
--- @field header string
--- @field headerPos Vec3
VoxelInspectData = {}

--- @return table
function VoxelInspectData:GetTexts() end

--- @return table
function VoxelInspectData:GetPositions() end

--- @return table
function VoxelInspectData:GetColors() end

--[[
`Client`
`Server`

The data will only render if the object also has a `VoxelData` component with data assigned.

[View Documentation](https://docs.atomontage.com/api/VoxelRenderer)
]]
--- @class VoxelRenderer
--- @field object Object
--- @field isDestroyed boolean
--- @field type string
--- @field Active boolean
--- @field ActiveInHierarchy boolean
--- @field Object Object
--- @field IsDestroyed boolean
--- @field Type string
--- @field syncToClients boolean
--- @field enabled boolean
--- @field prioritizeLod boolean
--- @field outline boolean
--- @field tintColor Vec4
--- @field receiveTransform boolean
VoxelRenderer = {
	prioritizeLod = nil, ---Try to load higher LODs faster than those of other objects
	outline = nil, ---Draw an outline around this object
	tintColor = nil, ---Render with a tint color
	receiveTransform = nil, ---Receive transform(pos, rot scale) to render with from server. By default this is true. If you set this to false, you will need to manually set the transform of the object on the client side.This is useful for making objects respond immediately if something happened on the client side i.e. input
}

--- @param p1 VoxelRenderer
--- @param p2 VoxelRenderer
--- @return boolean
function VoxelRenderer:__eq(p1, p2) end

--[[
World position and size of AABB (axis-aligned bounding box) of the object

[View Documentation](https://docs.atomontage.com/api/VoxelRenderer#Vec3-Vec3-GetAABounds)
]]
--- @return Vec3, Vec3
function VoxelRenderer:GetAABounds() end

--- @return Vec3, Quat, Vec3
function VoxelRenderer:GetBounds() end

--[[

Used by [VoxelEdit](../VoxelEdit#BlendMode-blendMode)
See a list of explanations [here](https://photoshoptrainingchannel.com/blending-modes-explained/#normal-blending-modes).

[View Documentation](https://docs.atomontage.com/api/BlendMode)
]]
--- @enum BlendMode
BlendMode = {
	Normal = 0,
	Darken = 1,
	Multiply = 2,
	ColorBurn = 3,
	LinearBurn = 4,
	DarkenColor = 5,
	Lighten = 6,
	Screen = 7,
	ColorDodge = 8,
	LinearDodge = 9,
	LightenColor = 10,
	Overlay = 11,
	SoftLight = 12,
	HardLight = 13,
	VividLight = 14,
	LinearLight = 15,
	PinLight = 16,
	HardMix = 17,
	Difference = 18,
	Exclusion = 19,
	Subtract = 20,
	Divide = 21,
	Hue = 22,
	Color = 23,
	Saturation = 24,
	Luminosity = 25,
}

--- @enum ClientMode
ClientMode = {
	View = 0,
	Edit = 1,
	DevDebug = 2,
}

--- @enum Device
Device = {
	Generic = 0,
	Quest = 1,
	MagicLeap2 = 2,
}

--- @enum HitType
HitType = {
	Invalid = 0,
	StaticCommon = 1,
	StaticTmp = 2,
	ObjectVoxel = 3,
}

--- @enum LuaErrorType
LuaErrorType = {
	None = 0,
	DoFile = 1,
	Runtime = 2,
	UIAction = 3,
}

--- @enum PixelFormat
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
	Depth32Stencil8X24 = 41,
	RGB16U = 42,
	RGBA16U = 43,
	SRGB888 = 44,
	SRGB888A8 = 45,
	RGB10A2 = 46,
}

--- @enum PrimitiveTopology
PrimitiveTopology = {
	Points = 0,
	LineStrip = 1,
	Lines = 2,
	TriangleStrip = 3,
	TriangleFan = 4,
	Triangles = 5,
}

--- @enum RendererStateFlags
RendererStateFlags = {
	Shadows = 0,
	Fog = 1,
	MultiView = 2,
	Lighting = 3,
	DepthPass = 4,
	VR = 5,
	PBR = 6,
	IBL = 7,
}

--[[

Hint for opengl/vulkan about how often you change the geometry (static = once, dynamic=more often, streamed = each frame)

[View Documentation](https://docs.atomontage.com/api/ResourceUsage)
]]
--- @enum ResourceUsage
ResourceUsage = {
	-- once
	Static = 0,
	-- more often
	Dynamic = 1,
	-- each frame
	Stream = 2,
}

--- @enum ShaderPrecisionType
ShaderPrecisionType = {
	LowFloat = 0,
	MediumFloat = 1,
	HighFloat = 2,
	LowInt = 3,
	MediumInt = 4,
	HighInt = 5,
}

--- @enum Side
Side = {
	Left = 0,
	Right = 1,
}

--- @enum Space
Space = {
	Local = 0,
	World = 1,
}

--- @enum System
System = {
	Unknown = 0,
	Windows = 1,
	Linux = 2,
	WebBrowser = 3,
	MacOS = 4,
	iOS = 5,
	Android = 6,
}

--- @enum TextureType
TextureType = {
	Unknown = 0,
	Cube = 1,
	Dome = 2,
	Sphere = 3,
}

--- @enum TmpLayerFlags
TmpLayerFlags = {
	None = 0,
	Common = 1,
	Atlas = 2,
}

--- @enum UIActionsPlace
UIActionsPlace = {
	Client = 0,
	Server = 1,
	Inherited = 2,
}

--- @enum UIItemType
UIItemType = {
	Undefined = 0,
	Window = 1,
	Header = 2,
	Panel = 3,
	Grid = 4,
	Tab = 5,
	Separator = 6,
	Button = 7,
	Number = 8,
	Wheel = 9,
	TextInput = 10,
	ListBox = 11,
	ListBoxSimple = 12,
	ListBoxEnum = 13,
	CheckBox = 14,
	Radio = 15,
	Label = 16,
	Color = 17,
	Vector = 18,
	Matrix = 19,
	Transformation = 20,
	Plot = 21,
	Count = 22,
}

--- @enum VRControllerButton
VRControllerButton = {
	A = 0,
	B = 1,
	Menu = 2,
	Thumb = 3,
	Trigger = 4,
	Grip = 5,
	Shoulder = 6,
}

