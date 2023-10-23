local Aimbot = {
    Aimbot = false,
    aim = false,
    Hover = false,
    MouseDown = false,
    MobileToggle = false,
    Gui = false,
    Mode = "Fov",
    TeamCheck = false,
    Part = "Head",
    Sensitivity = 0,
    Key = "MouseButton2",
    CircleSides = 64,
    CircleColor = Color3.fromRGB(255, 255, 255),
    CircleTransparency = 0.5,
    CircleRadius = 80,
    CircleFilled = false,
    CircleVisible = false,
    CircleThickness = 0,
    target = nil,
    WallCheck = false,
    AliveCheck = false
}
local Animation = nil
local Typing = false

local UIS = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local RequiredDistance = 2000

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = Aimbot.CircleRadius
FOVCircle.Filled = Aimbot.CircleFilled
FOVCircle.Visible = Aimbot.CircleVisible
FOVCircle.Thickness = Aimbot.CircleThickness
FOVCircle.NumSides = Aimbot.CircleSides
FOVCircle.Color = Aimbot.CircleColor
FOVCircle.Transparency = Aimbot.CircleTransparency

local function tween(object, goal, callback)
    if object == nil then
        print("object ERROR")
    end
    if goal == nil then
        print("goal ERROR")
    end
    if object == nil then
        print("callback ERROR")
    end
    local tween = TweenService:Create(object, tweenInfo, goal)
    tween.Completed:Connect(
        callback or function()
            end
    )
    tween:Play()
end

local function CancelLock()
    Aimbot.target = nil
    if Animation then
        Animation:Cancel()
    end
end

local function MobileState()
    if Aimbot.MobileToggle then
        Aimbot.aim = true
        if not Aimbot.aim then
            CancelLock()
        end
    else
        Aimbot.aim = false
    end
end

local ClickSound = Instance.new("Sound")
ClickSound.SoundId = "rbxassetid://6895079853"
ClickSound.Looped = false
ClickSound.Parent = workspace

Aimbot["1"] =
    Instance.new(
    "ScreenGui",
    RunService:IsStudio() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or game:GetService("CoreGui")
)
Aimbot["1"]["Name"] = [[GNHub-MA]]

-- StarterGui.MobileAM.AMFrame
Aimbot["2"] = Instance.new("Frame", Aimbot["1"])
Aimbot["2"]["ZIndex"] = 5
Aimbot["2"]["BorderSizePixel"] = 0
Aimbot["2"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39)
Aimbot["2"]["Size"] = UDim2.new(0, 69, 0, 69)
Aimbot["2"]["Position"] = UDim2.new(0.8519313335418701, 0, 0.20889805257320404, 0)
Aimbot["2"]["Name"] = [[AMFrame]]
Aimbot["2"]["Visible"] = false

-- StarterGui.MobileAM.AMFrame.DropShadowHolder
Aimbot["3"] = Instance.new("Frame", Aimbot["2"])
Aimbot["3"]["ZIndex"] = -6
Aimbot["3"]["BorderSizePixel"] = 0
Aimbot["3"]["BackgroundTransparency"] = 1
Aimbot["3"]["Size"] = UDim2.new(1, 0, 1, 0)
Aimbot["3"]["Name"] = [[DropShadowHolder]]

-- StarterGui.MobileAM.AMFrame.DropShadowHolder.DropShadow
Aimbot["4"] = Instance.new("ImageLabel", Aimbot["3"])
Aimbot["4"]["ZIndex"] = -5
Aimbot["4"]["BorderSizePixel"] = 0
Aimbot["4"]["SliceCenter"] = Rect.new(49, 49, 450, 450)
Aimbot["4"]["ScaleType"] = Enum.ScaleType.Slice
Aimbot["4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0)
Aimbot["4"]["ImageTransparency"] = 0.5
Aimbot["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Aimbot["4"]["Image"] = [[rbxassetid://6014261993]]
Aimbot["4"]["Size"] = UDim2.new(1, 47, 1, 47)
Aimbot["4"]["Name"] = [[DropShadow]]
Aimbot["4"]["BackgroundTransparency"] = 1
Aimbot["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- StarterGui.MobileAM.AMFrame.UICorner
Aimbot["5"] = Instance.new("UICorner", Aimbot["2"])

-- StarterGui.MobileAM.AMFrame.Frame
Aimbot["6"] = Instance.new("Frame", Aimbot["2"])
Aimbot["6"]["ZIndex"] = 8
Aimbot["6"]["BorderSizePixel"] = 0
Aimbot["6"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46)
Aimbot["6"]["AnchorPoint"] = Vector2.new(1, 1)
Aimbot["6"]["Size"] = UDim2.new(0, 55, 0, 55)
Aimbot["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Aimbot["6"]["Position"] = UDim2.new(0.8985508680343628, 0, 0.8985507488250732, 0)

-- StarterGui.MobileAM.AMFrame.Frame.UICorner
Aimbot["7"] = Instance.new("UICorner", Aimbot["6"])

-- StarterGui.GNHub.Main-Frame.Container.ScrollingFrame.Aimbot.AimbotHolder.UIStroke
Aimbot["3d"] = Instance.new("UIStroke", Aimbot["6"])
Aimbot["3d"]["Color"] = Color3.fromRGB(37, 37, 37)

-- StarterGui.MobileAM.AMFrame.Frame.ImageLabel
Aimbot["8"] = Instance.new("ImageLabel", Aimbot["6"])
Aimbot["8"]["ZIndex"] = 8
Aimbot["8"]["BorderSizePixel"] = 0
Aimbot["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Aimbot["8"]["Image"] = [[rbxassetid://13222004694]]
Aimbot["8"]["Size"] = UDim2.new(1, 0, 1, 0)
Aimbot["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Aimbot["8"]["BackgroundTransparency"] = 1

local function GetClosestPlayer()
    if not Aimbot.target then
        RequiredDistance = (Aimbot.CircleVisible and Aimbot.CircleRadius or 2000)

        for _, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer then
                if
                    v.Character and v.Character:FindFirstChild(Aimbot.Part) and
                        v.Character:FindFirstChildOfClass("Humanoid")
                 then
                    if Aimbot.TeamCheck and v.Team == LocalPlayer.Team then
                    continue
                    end
                    if Aimbot.AliveCheck and v.Character:FindFirstChildOfClass("Humanoid").Health < 0 then
                    continue
                    end
                    if
                        Aimbot.WallCheck and
                            #(Camera:GetPartsObscuringTarget(
                                {v.Character[Aimbot.Part].Position},
                                v.Character:GetDescendants()
                            )) > 0
                     then
                    continue
                    end
                    local worldToScreen = Camera.WorldToViewportPoint
                    --local dePos, dOnScreen = Camera:WorldToViewportPoint(v.Character[Aimbot.Part].Position)
                    local ePos, OnScreen = worldToScreen(Camera, v.Character[Aimbot.Part].Position)

                    local AccPos = Vector2.new(ePos.X, ePos.Y)
                    local mousePos = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                    local Distance = (AccPos - mousePos).Magnitude
                    if Distance < RequiredDistance and OnScreen then
                        RequiredDistance = Distance
                        Aimbot.target = v
                    end
                end
            end
        end
    else
        CancelLock()
    end
end

--[[
    if
        (Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2) -
            Vector2(
                Camera:WorldToViewportPoint(Aimbot.target.Character[Aimbot.Part].Position).X,
                Camera:WorldToViewportPoint(Aimbot.target.Character[Aimbot.Part].Position).Y
            )).Magnitude > RequiredDistance
    then
]]
UIS.TextBoxFocused:Connect(
    function()
        Typing = true
    end
)

UIS.TextBoxFocusReleased:Connect(
    function()
        Typing = false
    end
)
RunService.RenderStepped:Connect(
    function()
        FOVCircle.Radius = Aimbot.CircleRadius
        FOVCircle.Filled = Aimbot.CircleFilled
        FOVCircle.Color = Aimbot.CircleColor
        FOVCircle.Visible = Aimbot.CircleVisible
        FOVCircle.Transparency = Aimbot.CircleTransparency
        FOVCircle.NumSides = Aimbot.CircleSides
        FOVCircle.Thickness = Aimbot.CircleThickness
        if UIS.TouchEnabled then
        MobileState()
        if Aimbot.Aimbot then
            Aimbot["2"].Visible = true
        else
            Aimbot["2"].Visible = false
            Aimbot.hover = false
            Aimbot.MobileToggle = false
            Aimbot.aim = false
        end
    end
    end
)

RunService.RenderStepped:Connect(
    function()
        if Aimbot.aim and Aimbot.Aimbot then
            GetClosestPlayer()

            if Aimbot.target then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, Aimbot.target.Character[Aimbot.Part].Position)
            --[[
                    if Aimbot.Sensitivity > 0 then
                    Animation =
                        TweenService:Create(
                        Camera,
                        TweenInfo.new(Aimbot.Sensitivity / 100, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
                        {
                            CFrame = CFrame.new(Camera.CFrame.Position, Aimbot.target.Character[Aimbot.Part].Position)
                        }
                    )
                    Animation:Play()
                else
                end
                ]]
            end
        end
    end
)

if UIS.KeyboardEnabled and UIS.MouseEnabled then
    UIS.InputBegan:Connect(
        function(Input)
            if not Typing then
                pcall(
                    function()
                        if Input.KeyCode == Enum.KeyCode[Aimbot.Key] then
                            if Aimbot.Aimbot then
                                Aimbot.aim = not Aimbot.aim

                                if not Aimbot.aim then
                                    CancelLock()
                                end
                            else
                                Aimbot.aim = true
                            end
                        end
                    end
                )

                pcall(
                    function()
                        if Input.UserInputType == Enum.UserInputType[Aimbot.Key] then
                            if Aimbot.Aimbot then
                                Aimbot.aim = not Aimbot.aim

                                if not Aimbot.aim then
                                    CancelLock()
                                end
                            else
                                Aimbot.aim = true
                            end
                        end
                    end
                )
            end
        end
    )

    UIS.InputEnded:Connect(
        function(Input)
            if not Typing then
                if not Aimbot.aim then
                    pcall(
                        function()
                            if Input.KeyCode == Enum.KeyCode[Aimbot.Key] then
                                Aimbot.aim = false
                                CancelLock()
                            end
                        end
                    )

                    pcall(
                        function()
                            if Input.UserInputType == Enum.UserInputType[Aimbot.Key] then
                                Aimbot.aim = false
                                CancelLock()
                            end
                        end
                    )
                end
            end
        end
    )
end

if UIS.TouchEnabled then
    local function Mobile()
        if Aimbot.Aimbot then
            if Aimbot.MobileToggle then
                Aimbot["6"].BackgroundColor3 = Color3.fromRGB(126, 15, 218)
                Aimbot["3d"].Color = Color3.fromRGB(73, 9, 129)
                Aimbot["8"].Image = "rbxassetid://13578337577"
            else
                Aimbot["6"].BackgroundColor3 = Color3.fromRGB(48, 48, 48)
                Aimbot["3d"].Color = Color3.fromRGB(37, 37, 37)
                Aimbot["8"].Image = "rbxassetid://13222004694"
            end
        end
    end

    Aimbot["2"].MouseEnter:Connect(
        function()
            if Aimbot.Hover == false then
                Aimbot.Hover = true
            end
        end
    )

    Aimbot["2"].MouseLeave:Connect(
        function()
            if Aimbot.Hover == true then
                Aimbot.Hover = false
            end
        end
    )

    UIS.InputBegan:Connect(
        function(Input)
            if Typing then
                return
            end

            if Input.UserInputType == Enum.UserInputType.Touch then
                if Aimbot.Hover == false or Aimbot.Aimbot == false then
                    return
                end
                Aimbot["2"].BackgroundColor3 = Color3.fromRGB(61, 61, 61)

                Aimbot.MobileToggle = not Aimbot.MobileToggle

                Mobile()
            end
        end
    )
    UIS.InputEnded:Connect(
        function(Input)
            if Typing then
                return
            end
            if Input.UserInputType == Enum.UserInputType.Touch then
                if Aimbot.Hover == false or Aimbot.Aimbot == false then
                    return
                end
                Aimbot["2"].BackgroundColor3 = Color3.fromRGB(39, 39, 39)

                Aimbot.Hover = false
            end
        end
    )
end

return Aimbot
