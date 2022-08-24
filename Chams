--[[
    PLEASE READ:
    Made by shippy hater#5405
    I would appreciate if you left credits, but you dont have to. It just keeps me motivated to keep making these scripts.
]]

-->>>>>>> SETTINGS

local teamCheck = true
local color1 = Color3.new(1,1,1) -- If this is changed it could look at bit wierd. I recommend letting this one stay the way it is.
local color2 = Color3.fromHex("9B494A")
local hitboxes = {
	['Head'] = 'Cylinder',
	['Left Arm'] = 'Box',
	['Right Arm'] = 'Box',
	['Left Leg'] = 'Box',
	['Right Leg'] = 'Box',
	['Torso'] = 'Box',
	['Left Arm'] = 'Box',
	['LeftFoot'] = 'Box',
	['LeftHand'] = 'Box',
	['LeftLowerArm'] = 'Box',
	['LeftLowerLeg'] = 'Box',
	['LeftUpperArm'] = 'Box',
	['LeftUpperLeg'] = 'Box',
	['LowerTorso'] = 'Box',
	['RightFoot'] = 'Box',
	['RightHand'] = 'Box',
	['RightHand'] = 'Box',
	['RightLowerArm'] = 'Box',
	['RightLowerLeg'] = 'Box',
	['RightUpperArm'] = 'Box',
	['RightUpperLeg'] = 'Box',
	['UpperTorso'] = 'Box'
}

--<<<<<<< DO NOT EDIT ANYTHING BELOW HERE

-->>>>>>> Variables
local players = game:GetService('Players')
local lp = players.LocalPlayer
--<<<<<<<

game:GetService('RunService').RenderStepped:Connect(function()
	-- Running function every frame
	for _, player in pairs(players:GetPlayers()) do
		-- Getting all the players
		if player ~= lp and player.Character and player.Character:FindFirstChild('Humanoid') and player.Character:FindFirstChild('HumanoidRootPart') and player.Character:FindFirstChild('Head') and player.Character.Humanoid.Health > 0 then
			-- Checking if the player has base body parts
			local character = player.Character
			if character:FindFirstChild('CHAMS_u5i^9ovEu{/3s^^5fY{FA5>SyMr;j(UJ5q=G=7s6kya>Sf=^B^OV&1{%:UM:T*R') then
				-->>>>>>> Enabling / Disabling chams based on team
				if teamCheck == true then
					-- Checking if the team check setting is on
					for _, obj in pairs(character:GetChildren()) do
						if player.Team == lp.Team then
							-- Checking if the player is on our team
							if obj:FindFirstChildWhichIsA('BoxHandleAdornment') or obj:FindFirstChildWhichIsA('CylinderHandleAdornment') then
								-- Making sure he has chams
								for _, handle in pairs(obj:GetChildren()) do
									-- Getting all objects in the character part
									if handle:IsA('BoxHandleAdornment') or handle:IsA('CylinderHandleAdornment') then
										-- Checking for cham part
										handle.Transparency = 1 -- Making it invisible
									end
								end
							end
						else
							-- Player is not on our team
							if obj:FindFirstChildWhichIsA('BoxHandleAdornment') or obj:FindFirstChildWhichIsA('CylinderHandleAdornment') then
								-- Making sure he has chams
								for _, handle in pairs(obj:GetChildren()) do
									-- Getting all objects in the character part
									if handle:IsA('BoxHandleAdornment') or handle:IsA('CylinderHandleAdornment') then
										-- Checking for cham part
										if handle.Name == 'ok50' then -- Checking for visible only part
											handle.Transparency = 0.5 -- Making it visible
										else
											handle.Transparency = 0.75 -- Making it visible
										end
									end
								end
							end
						end
					end
				end
                --<<<<<<<
			end
			-->>>>>> Checking if chams already exist in the character
			if not character:FindFirstChild('CHAMS_u5i^9ovEu{/3s^^5fY{FA5>SyMr;j(UJ5q=G=7s6kya>Sf=^B^OV&1{%:UM:T*R') then
				local checkvalue = Instance.new('BoolValue')
				checkvalue.Parent = character
				checkvalue.Name = 'CHAMS_u5i^9ovEu{/3s^^5fY{FA5>SyMr;j(UJ5q=G=7s6kya>Sf=^B^OV&1{%:UM:T*R'
				--<<<<<<<

				for _, obj in pairs(character:GetChildren()) do
					-- Each object in the player's character
					if obj:IsA('BasePart') then
						-- Checking if its a part
						if hitboxes[obj.Name] and hitboxes[obj.Name] == 'Box' then
							-- Making sure the part is not the Head or the HumanoidRootPart
							-->>>>>> Adding chams
							local handle = Instance.new('BoxHandleAdornment',obj)
							handle.Size = obj.Size
							handle.ZIndex = 2
							handle.Color3 = color1
							handle.Transparency = 0.75
							handle.Adornee = obj
							handle.AlwaysOnTop = true
							handle.Parent = obj
							handle.Name = 'ok75'
							local handle2 = Instance.new('BoxHandleAdornment',obj)
							handle2.Size = obj.Size + Vector3.new(0.05,0.05,0.05)
							handle2.Color3 = color2
							handle2.Transparency = 0.5
							handle2.Adornee = obj
							handle2.AlwaysOnTop = true
							handle2.Parent = obj
							handle2.Name = 'ok75'
							--<<<<<<<
						elseif hitboxes[obj.Name] and hitboxes[obj.Name] == 'Cylinder' then
							-- Checking for Head
							-->>>>>>> Creating a rotated part cause of roblox's wierd Adornment system
							local part = Instance.new('Part',obj)
							part.Size = Vector3.new(0.01,0.01,0.01)
							part.Position = obj.Position
							part.Transparency = 1
							part.Name = 'Fixed'
							part.Orientation = Vector3.new(90, 0, 0)
							local weld = Instance.new('WeldConstraint',obj)
							weld.Part0 = obj
							weld.Part1 = part
							--<<<<<<<
							-->>>>>>> Adding chams
							local handle = Instance.new('CylinderHandleAdornment',obj)
							handle.Height = 1.25
							handle.Radius = 0.65
							handle.ZIndex = 2
							handle.Color3 = color1
							handle.Transparency = 0.75
							handle.Adornee = part
							handle.AlwaysOnTop = true
							handle.Parent = obj
							handle.Name = 'ok75'
							local handle2 = Instance.new('CylinderHandleAdornment',obj)
							handle2.Height = 1.3
							handle2.Radius = 0.7
							handle2.Color3 = color2
							handle2.Transparency = 0.5
							handle2.Adornee = part
							handle2.AlwaysOnTop = true
							handle2.Parent = obj
							handle2.Name = 'ok75'
							--<<<<<<<
						end
					end
				end
			end
		end
	end
end)
