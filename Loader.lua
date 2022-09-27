
if game.PlaceId == 4888256398 then

	print("1/4 Checking game....")
	print("2/4 Tournament grounds detected.")
	print("3/4 Authenticating....")
	print("4/4 Loading Solaris...")
	


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solaris", HidePremium = false, IntroText = "Solaris Hub", SaveConfig = true, ConfigFolder = "1"})

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
	Image = "rbxassetid://6288094448",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "Welcome to Solaris.",
	Image = "rbxassetid://4483345998",
	Time = 5
})


Tab:AddButton({
	Name = "Box ESP",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Box%20ESP.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Name ESP",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Name%20ESP.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Chams",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Chams.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Skeleton ESP",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Skeleton%20ESP.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Highlight ESP",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Highlight%20ESP.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Tracers",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/ESP/Tracers.lua')))()
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
Tab:AddButton({
	Name = "Fly",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Tournament%20Grounds/Misc/Fly.lua')))()
		OrionLib:MakeNotification({
			Name = "Solaris Hub!",
			Content = "Keybind is F.",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
  	end    
})
end

if game.PlaceId == 4483381587 then

	--Checks
	print("1/4 Checking game....")
	print("2/4 Murder Mystery 2 detected.")
	print("3/4 Authenticating....")
	print("4/4 Loading Solaris...")

	--Booting UI library
	local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()


	--Keybind to hide UI
	library:Keybind("Delete")

	--ESP Window
	local window = library:Window("ESP")

	window:Button("Chams", function()
		print("pressed button")
	 end)

	 window:Button("Button name", function()
		print("pressed button")
	 end)
end
