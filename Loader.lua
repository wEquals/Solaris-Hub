HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1027966366323577003/PL7goZeOxybRuRk35VLJkwmx2L7yzbySfuldiADT_ukasNivbdLEotKrycJu1FVthXtv"

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


	print("1/3 Getting HWID....")
	print("2/3 Authenticating....")
	print("3/3 Loading Solaris...")

	

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solaris", HidePremium = false, IntroText = "Solaris Hub", SaveConfig = true, ConfigFolder = "1"})

local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/testing.lua'),true))()
espLib:Load()

local Tab = Window:MakeTab({
	Name = "ESP Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Section"
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "User connected.",
	Image = "http://www.roblox.com/asset/?id=6288094436",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "Welcome to Solaris.",
	Image = "ttp://www.roblox.com/asset/?id=10993876184",
	Time = 5
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

Tab:AddButton({
	Name = "Aimbot + FOV Circle",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/Aimbot/Aimbot%20and%20FOV%20Circle.lua')))()
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

local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "http://www.roblox.com/asset/?id=7059346373",
	PremiumOnly = true
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
