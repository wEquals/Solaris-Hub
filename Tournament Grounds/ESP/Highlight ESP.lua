getgenv().Enabled = true
getgenv().DepthMode = Enum.HighlightDepthMode.AlwaysOnTop -- Enum.HighlightDepthMode.Occluded to make it visible only
getgenv().FillColor = Color3.fromRGB(10, 10, 10)
getgenv().OutlineColor = Color3.fromRGB(85, 105, 230)
getgenv().FillTransparency = 0
getgenv().OutlineTransparency = 0

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function CreateHighlight(Player)
   if (not Player.Character:FindFirstChild("HighlightCham") and Player ~= Players.LocalPlayer) then
       local Highlight = Instance.new("Highlight", Player.Character)
       Highlight.Name = "HighlightCham"
   end
end

RunService.Stepped:Connect(function()
   for i,v in next, Players:GetPlayers() do
       CreateHighlight(v)

       if (v.Character:FindFirstChild("HighlightCham")) then
        if v.Team ~= game.Players.LocalPlayer.Team then
                local Highlight = v.Character.HighlightCham
                Highlight.Enabled = getgenv().Enabled
                Highlight.DepthMode = getgenv().DepthMode
                Highlight.FillColor = getgenv().FillColor
                Highlight.OutlineColor = getgenv().OutlineColor
                Highlight.FillTransparency = getgenv().FillTransparency
                Highlight.OutlineTransparency = getgenv().OutlineColor
            end
        end
    end
end)
