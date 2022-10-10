

	
--Loading libraries that are needed for the scripts.

--UI (User Interface)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solaris [BETA]", HidePremium = false, IntroText = "Solaris Hub", SaveConfig = true, ConfigFolder = "1"})

--AIMBOT
local aimbot = loadstring(game:HttpGet'https://github.com/RunDTM/Zeerox-Aimbot/raw/main/library.lua')()

--AIMBOT SETTINGS 
aimbot.Key = Enum.UserInputType.MouseButton2
aimbot.Players = true
aimbot.AliveCheck = true

--ESP
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/testing.lua'),true))()
espLib:Load()

local Tab = Window:MakeTab({
	Name = "ESP Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "ESP"
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "User connected.",
	Image = "http://www.roblox.com/asset/?id=6288094436",
	Time = 10
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "Welcome to Solaris.",
	Image = "http://www.roblox.com/asset/?id=10993876184",
	Time = 10
})

Tab:AddToggle({
	Name = "Box ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.boxes = true
		else
			espLib.options.boxes = false
		end
	end    
})


Tab:AddToggle({
	Name = "Name ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.names = true
		else
			espLib.options.names = false
		end
	end    
})

Tab:AddToggle({
	Name = "Distance",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.distance = true
		else
			espLib.options.distance = false
		end
	end    
})

Tab:AddToggle({
	Name = "Chams",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.chams = true
		else
			espLib.options.chams = false
		end
	end    
})

Tab:AddToggle({
	Name = "Tracers",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.tracers = true
		else
			espLib.options.tracers = false
		end
	end    
})

Tab:AddToggle({
	Name = "Healthbars",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.healthBars = true
		else
			espLib.options.healthBars = false
		end
	end    
})

Tab:AddToggle({
	Name = "Healthtext",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.healthText  = true
		else
			espLib.options.healthText = false
		end
	end    
})

Tab:AddToggle({
	Name = "Arrows",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.outOfViewArrows = true

		else
			espLib.options.outOfViewArrows = false
		end
	end    
})

Tab:AddButton({
	Name = "Skeleton ESP",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Skeleton%20ESP.lua')))()
  	end    
})




local Tab = Window:MakeTab({
	Name = "Aimbot section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = true
})

local Section = Tab:AddSection({
    Name = "Aimbot"
})

Tab:AddToggle({
	Name = "Aimbot",
	Default = false,
	Callback = function(Value)
		if Value then
			aimbot.Enabled = true
		else
			aimbot.Enabled = false
		end
	end    
})

Tab:AddButton({
	Name = "Triggerbot",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/Aimbot/Triggerbot.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Silent aim",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/Aimbot/Silent%20Aim.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Hitbox expander [HIGH RISK DO NOT USE ON TG.]",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/Aimbot/HBE.lua')))()
  	end    
})

--MISC
local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = true
})

local Section = Tab:AddSection({
	Name = "Humanoid"
})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddButton({
	Name = "Reset",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})

local Section = Tab:AddSection({
	Name = "Global"
})



Tab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
		local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
  	end    
})

Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
		local ts = game:GetService("TeleportService")

		local p = game:GetService("Players").LocalPlayer
		
		 
		
		ts:Teleport(game.PlaceId, p)
  	end    
})

Tab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
		local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
  	end    
})


local Section = Tab:AddSection({
	Name = "UI"
})

Tab:AddButton({
	Name = "Destory UI",
	Callback = function()
		OrionLib:Destroy()
		espLib:Unload()
		aimbot:Destory()
  	end    
})



--Settings
local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "http://www.roblox.com/asset/?id=7059346373",
	PremiumOnly = true
})

--FOV
local Section = Tab:AddSection({
	Name = "FOV Settings"
})


Tab:AddToggle({
	Name = "Draw FOV",
	Default = false,
	Callback = function(Value)
		if Value then
			aimbot.ShowFOV = true
		else
			aimbot.ShowFOV = false
		end
	end
})

Tab:AddColorpicker({
	Name = "FOV Colour",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		aimbot.FOVCircleColor = Value
	end	  
})

Tab:AddSlider({
	Name = "FOV Size",
	Min = 10,
	Max = 800,
	Default = 90,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 10,
	ValueName = "Amount",
	Callback = function(Value)
		aimbot.FOV = Value
	end    
})

--AIMBOT
local Section = Tab:AddSection({
	Name = "Aimbot"
})

Tab:AddToggle({
	Name = "WallCheck",
	Default = false,
	Callback = function(Value)
		if Value then
			aimbot.VisibilityCheck = true
		else
			aimbot.VisibilityCheck = false
		end
	end
})

Tab:AddToggle({
	Name = "Teamcheck",
	Default = false,
	Callback = function(Value)
		if Value then
			aimbot.TeamCheck = true
		else
			aimbot.TeamCheck = false
		end
	end
})

Tab:AddSlider({
	Name = "Smoothing",
	Min = 0,
	Max = 500,
	Default = 0.5,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 0.5,
	ValueName = "Sensitivity",
	Callback = function(Value)
		aimbot.Smoothing = Value
	end    
})




--ESP
local Section = Tab:AddSection({
	Name = "ESP"
})


Tab:AddToggle({
	Name = "Teamcheck",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.Teamcheck  = true
		else
			espLib.options.Teamcheck = false
		end
	end    
})

Tab:AddToggle({
	Name = "Visible check",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.visibleOnly  = true
		else
			espLib.options.visibleOnly = false
		end
	end    
})

Tab:AddToggle({
	Name = "Team colour",
	Default = false,
	Callback = function(Value)
		if Value then
			espLib.options.teamColor = true
		else
			espLib.options.teamColor = false
		end
	end    
})


--Colour pickers




--ESP
Tab:AddColorpicker({
	Name = "Box Colour",
	Default = Color3.new(1, 0, 0),
	Callback = function(Value)
		espLib.options.boxesColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Tracer Colour",
	Default = Color3.new(1, 1, 1),
	Callback = function(Value)
		espLib.options.tracerColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Healthbar Colour",
	Default = Color3.new(0, 1, 0),
	Callback = function(Value)
		espLib.options.healthBarsColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Chams Colour",
	Default = Color3.new(1, 0, 0),
	Callback = function(Value)
		espLib.options.chamsFillColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Healthtext Colour",
	Default = Color3.new(1, 1, 1),
	Callback = function(Value)
		espLib.options.healthTextColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Arrow Colour",
	Default = Color3.new(1, 1, 1),
	Callback = function(Value)
		espLib.options.outOfViewArrowsColor = Value
	end	  
})

Tab:AddColorpicker({
	Name = "Distance Colour",
	Default = Color3.new(1, 1, 1),
	Callback = function(Value)
		espLib.options.distanceColor = Value
	end	  
})




OrionLib:Init()
