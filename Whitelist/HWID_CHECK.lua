local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Whitelist/HWID.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
for i,v in pairs(HWIDTable) do
    if v == HWID then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wEquals/Solaris-Hub/main/Synapse%20Version%20ob.lua"))()
    end
end
