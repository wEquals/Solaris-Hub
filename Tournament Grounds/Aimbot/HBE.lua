

while true do wait(1) getgenv().HeadSize = 15 getgenv().Disabled = true
 
    if getgenv().Disabled then
        for i, v in next, game:GetService("Players"):GetPlayers() do
            if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                pcall(
                    function()
                        v.Character.HumanoidRootPart.Name = "HumanoidRootPart"
                        v.Character.HumanoidRootPart.Size =
                            Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                        v.Character.HumanoidRootPart.Transparency = 0.5
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Color = Color3.fromRGB(210, 44, 255)
                    end
                )
            end
        end
    end
end

--made lean consumer 64 / equals
