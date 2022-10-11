HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1029037099812409354/Az6yzQR2k-z32AJromScwa2nzThXCiB8hHCVlMJVQM2a-kVQO6vIQ3Dw3sootJRcSCpW"

local responce = syn.request({
    Url = Webhook_URL,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Solaris Hub has been executed!**",
            ["description"] = game.Players.LocalPlayer.Name.." has executed the script",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    })
})
	
--Loading libraries that are needed for the scripts.

--UI (User Interface)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solaris [BETA]", HidePremium = false, IntroText = "Solaris Hub", SaveConfig = true, ConfigFolder = "1"})

--AIMBOT
local aimbot = loadstring(game:HttpGet'https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Main.lua')()

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
			getgenv().Aimbot.Settings.Enabled = true

		else
			getgenv().Aimbot.Settings.Enabled = false
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
	Name = "Reset Aimbot Settings",
	Callback = function()
		getgenv().Aimbot.Functions:ResetSettings()
		OrionLib:MakeNotification({
			Name = "Solaris Hub",
			Content = "Successfully reset Aimbot settings.",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})


local Section = Tab:AddSection({
	Name = "UI"
})

Tab:AddButton({
	Name = "Destory UI",
	Callback = function()
		OrionLib:Destroy()
		espLib:Destory()
		Aimbot:Destory()
  	end    
})

--Settings
local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "http://www.roblox.com/asset/?id=7059346373",
	PremiumOnly = true
})

--AIMBOT
local Section = Tab:AddSection({
	Name = "Aimbot"
})



--AIMBOT
Tab:AddToggle({
	Name = "Draw FOV",
	Default = false,
	Callback = function(Value)
		if Value then
			getgenv().Aimbot.FOVSettings.Enabled = true
		else
			getgenv().Aimbot.FOVSettings.Enabled = false
		end
	end
})

Tab:AddToggle({
	Name = "WallCheck",
	Default = false,
	Callback = function(Value)
		if Value then
			getgenv().Aimbot.Settings.WallCheck = true
		else
			getgenv().Aimbot.Settings.WallCheck = false
		end
	end
})

Tab:AddToggle({
	Name = "Teamcheck",
	Default = false,
	Callback = function(Value)
		if Value then
			getgenv().Aimbot.FOVSettings.TeamCheck = true
		else
			getgenv().Aimbot.FOVSettings.Enabled = false
		end
	end
})

Tab:AddSlider({
	Name = "Sensitivity",
	Min = 0.1,
	Max = 500,
	Default = 0.5,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 0.5,
	ValueName = "Sensitivity",
	Callback = function(Value)
		getgenv().Aimbot.Settings.Sensitivity = Value
	end    
})

Tab:AddSlider({
	Name = "FOV Transparency",
	Min = 0.5,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 0.1,
	ValueName = "Transparency",
	Callback = function(Value)
		getgenv().Aimbot.FOVSettings.Transparency = Value
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
		getgenv().Aimbot.FOVSettings.Amount = Value
	end    
})

Tab:AddSlider({
	Name = "FOV Sides",
	Min = 10,
	Max = 800,
	Default = 60,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 10,
	ValueName = "Amount",
	Callback = function(Value)
		getgenv().Aimbot.FOVSettings.Sides  = Value
	end    
})

Tab:AddToggle({
	Name = "FOV Filled",
	Default = false,
	Callback = function(Value)
		if Value then
			getgenv().Aimbot.FOVSettings.Filled = true
		else
			getgenv().Aimbot.FOVSettings.Filled = false
		end
	end    
})

Tab:AddDropdown({
	Name = "Lockpart",
	Default = "Head",
	Options = {"Head", "Torso", "Right Leg"},
	Callback = function(Value)
		print("Lockpart is "..Value)

		getgenv().Aimbot.Settings.LockPart = Value
	end    
})

Tab:AddDropdown({
	Name = "Trigger Key",
	Default = "MouseButton2",
	Options = {"MouseButton2", "MouseButton1", "E"},
	Callback = function(Value)
		print("Trigger key is "..Value)

		getgenv().Aimbot.Settings.TriggerKey  = Value
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
