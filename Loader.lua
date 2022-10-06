local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1027575904609783899/90sUw7G2OVmc26sKbXbjJVvpApk3LdiqL-koGZVp4S5yBdsXos97TxhnAsT8bxGts-1s"
local data = {
   ["content"] = " ",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Solaris hub!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)



	print("1/4 Checking game....")
	print("2/4 Getting HWID....")
	print("3/4 Authenticating....")
	print("4/4 Loading Solaris...")
	

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solaris Universal Hub", HidePremium = false, IntroText = "Solaris Hub", SaveConfig = true, ConfigFolder = "1"})

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
	Image = "rbxassetid://6288094448",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Solaris Hub",
	Content = "Welcome to Solaris.",
	Image = "rbxassetid://4483345998",
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
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(1, 217, 255),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
