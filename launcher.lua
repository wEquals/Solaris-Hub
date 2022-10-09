local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/HWID's.lua"))()
print("1/3 Getting HWID....")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
print("2/3 Authenticating....")
for i,v in pairs(HWIDTable) do
    if v == HWID then
        print("3/3 Loading Solaris Hub...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Loader.lua"))()
    if v ~= HWID then
        print("Incorrect HWID. Please whitelist OR rewhitelist. Contact support for HWID change.")
        game.Players.LocalPlayer:Kick("Incorrect HWID. Please whitelist OR rewhitelist. Contact support for HWID change.")
    end
end
end
