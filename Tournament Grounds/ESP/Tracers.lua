local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local function Vector2Find(P)
    local camera = workspace.CurrentCamera
    local worldPoint = P.Character.HumanoidRootPart.Position
    local vector, inViewport = camera:WorldToViewportPoint(worldPoint)
    if inViewport then else return nil end
    return Vector2.new(vector.X, vector.Y)
end

local function CreateTracer(PlayerN)
    local line = Drawing.new("Line")
    local success, err = pcall(function()
        line.Visible = true
        line.Color = Color3.fromRGB(255, 255, 255)
        line.Thickness = 2
        line.Transparency = 1
        line.To = Vector2Find(PlayerN)
        line.From = Vector2Find(game.Players.LocalPlayer)
    end)
    RunService.Stepped:Wait(1)
    line:Remove()
end

local stepped = RunService.Stepped:Connect(function()
    for i,v in pairs(Players:GetPlayers()) do
    if v.Name == Players.LocalPlayer.Name then
    else
        CreateTracer(v)
     end
   end
end)
