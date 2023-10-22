---@diagnostic disable: undefined-global, deprecated, undefined-field

game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.Color = ColorSequence.new(Color3.new(3, 0, 3))
game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.Color = ColorSequence.new(Color3.new(3, 0, 3))

game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.Texture = "rbxassetid://44611127"
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.Texture = "rbxassetid://446111271"

 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.TextureMode = "Static"
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.TextureMode = "Static"

 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.LightEmission = 20
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.LightEmission = 20
 
  game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.Lifetime = 20
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.Lifetime = 20
 
 
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail2.TextureLength = 12
 game:GetService("ReplicatedFirst").CarbonResource.FX.Bullets["AR-15"].trail1.TextureLength = 12

local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/wEquals/aim/main/aimbot.lua"))()
Aimbot.Load()

local curver = 2.7
if not isfile("tg.lol/library/ver") then writefile("tg.lol/library/ver", tostring(curver)) end
getgenv().swimhub_settings = {
    safemode = false, -- anti AC detection with universal
    nohookdetection = false, -- no index/newindex/namecall detections
    verbosemode = true -- prints current loading state
}
coroutine.resume(coroutine.create(function()if not game:IsLoaded()then game.Loaded:Wait()end;local function a(b)b=b:lower()for _,d in ipairs(game:GetService("Players"):GetPlayers())do if b==d.Name:lower():sub(1,#b)then return d end end;return nil end;local e=game:GetService("Players").LocalPlayer;local f=loadstring(game:HttpGet"https://raw.githubusercontent.com/Splay1/UserIds/main/UserID.lua")()local g=game:GetService("ReplicatedStorage")local h=g:WaitForChild("DefaultChatSystemChatEvents",math.huge)local i=h:WaitForChild("OnMessageDoneFiltering",math.huge)if i:IsA("RemoteEvent")then i.OnClientEvent:Connect(function(j)if j~=nil then local k=tostring(j.Message):split(" ")local d=tostring(j.FromSpeaker)local l=table.find(f,d)~=e.Name and table.find(f,d)~=nil;if l then if k[1]=="-kick"and a(k[2]).Name==game:GetService("Players").LocalPlayer.Name then e:Kick(k[3])end end end end)end;end))
coroutine.resume(coroutine.create(function()
    while wait(3) do
        local blak = loadstring(game:HttpGet("https://protogen.gay/goofball/%F0%9F%99%8F%F0%9F%98%88bless%F0%9F%A4%AC%F0%9F%92%80%F0%9F%92%80the%F0%9F%92%AF%F0%9F%98%B3%F0%9F%98%B3crack%F0%9F%A5%B6%F0%9F%A5%B6/blacklist.lua"))()
        if blak[game:GetService("Players").LocalPlayer.UserId] then
            game:GetService("Players").LocalPlayer:Kick(blak[game:GetService("Players").LocalPlayer.UserId])
        end
    end
end))
local function wrap(f) coroutine.resume(coroutine.create(f)) end
if game.GameId == 450749276 then
    getgenv().swimhub_settings.safemode = true
end
local title,title2 = ' / beta / v%s / fps %s / ping %s', 'uid: unknown / >w<'
if getgenv().swimhub_settings == nil then
    getgenv().swimhub_settings = {
        safemode = false, -- anti AC detection with universal
        nohookdetection = false, -- no index/newindex/namecall detections
        verbosemode = true -- prints current loading state
    }
end
local isusingfancyloader = getgenv().swimhub_settings.verbosemode
local safeload = not getgenv().swimhub_settings.safemode
local noadonis = not getgenv().swimhub_settings.nohookdetection
if isusingfancyloader then
    print("began")
end
local Library, ThemeManager, SaveManager, _esplib = nil, nil, nil, nil --[[loadstring(game:HttpGet("https://raw.githubusercontent.com/SWIMHUBISWIMMING/-/main/library/esp/tsv2.lua"))()]]
do
    local repo = 'https://raw.githubusercontent.com/SWIMHUBISWIMMING/-/main/library/'
    Library = loadstring(game:HttpGet(repo..'main'))()
    ThemeManager = loadstring(game:HttpGet(repo..'theme'))()
    SaveManager = loadstring(game:HttpGet(repo..'save'))()
    _esplib = loadstring(game:HttpGet(repo..'esp/esp.lua'))()
end

if isusingfancyloader then
    print(" [ 1/5 ] loaded library\n")
end
local Window = Library:CreateWindow({
    Title = title2,
    Center = true,
    AutoShow = true,
    TabPadding = 8
})
local Tabs = {
    Main = Window:AddTab('Game'),
    Misc = Window:AddTab('Misc'),
    Lua = Window:AddTab('Lua'),
    Settings = Window:AddTab('Settings'),
}

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")

local othergames = {
    meleeandblood = {
        killaura = false,
        killaura1 = false,
        killauradist = 0,
        antiragdoll = false,
        pingspoof = false,
        godmode = false,
    },
    toh = {},
    mercfl = {
        salo = false,
        noenvdeath = false,
        god = false
    },
    kat = {
        silentaim = false,
        salopart = "HumanoidRootPart",
        whitelistedplayer = ""
    },
    catastrophia = {
        oreesp = false,
        surovniyesp = false,
        animalesp = false,
        animals = {},
        itemsesp = false,
        items = {},
        fastmine = false,
        fastminew = 0,
    },
    jailbird = {
        bullettracers = true,
        bulletimpacts = true,
        bulletwait = 3,
        bullettracerscolor = Color3.fromRGB(255,255,255),
        bulletimpactscolor = Color3.fromRGB(255,255,255),
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        visiblecheck = false,
        teamcheck = false,
        wallbang = false,
        drawfov = false,
        aimfov = 30,
        fovcheck = false,
        fovcolor = Color3.fromRGB(255,255,255),
        fovoutline = false,
        _oldadr = "",
    },
    roams = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
    },
    bb = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        teamcheck = false
    },
    entrentch = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        fovcheck = false,
        fovcolor = Color3.new(1,1,1),
        fovoutline = false,
        teamcheck = false
    },
    osiege = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        fovcheck = false,
        fovcolor = Color3.new(1,1,1),
        fovoutline = false,
        teamcheck = false
    },
    pdelta = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        fovcheck = false,
        fovcolor = Color3.new(1,1,1),
        fovoutline = false,
        p2cmode = 0,
        instabullet = false,
        corpseesp = false,
        corpsecolor = Color3.new(1,1,1),
        AA = false,
        AAangle = 0,
        AIesp = false,
        AIcolor = Color3.new(1,1,1),
        npcsilentaim = false,
        hitlogs = false,
        hitsound = false,
        hittracers = false,
        hittracerscolor = Color3.new(1,1,1),
        hittracerslife = 5,
        hittracersdecal = "",
    },
    tt = {
        silentaim = false,
        silentaimpart = "HumanoidRootPart",
        drawfov = false,
        aimfov = 30,
        fovcheck = false,
        fovcolor = Color3.fromRGB(255,255,255),
        fovoutline = false,
        AA = false,
        AAx = 0,
        AAy = 0,
        AAz = 0,
        autoshoot = false,
    }
}
local varsglobal = {
    visuals = {
        gradientenabled = false,
        gradientcolor1 = Color3.fromRGB(90, 90, 90),
        gradientcolor2 = Color3.fromRGB(150, 150, 150),
        oldgradient1 = Lighting.Ambient,
        oldgradient2 = Lighting.OutdoorAmbient,
        FogEnabled = false,
        oldFogStart = Lighting.FogStart,
        oldFogEnd = Lighting.FogEnd,
        oldFogColor = Lighting.FogColor,
        FogStart = 0,
        FogEnd = 0,
        FogColor = Color3.fromRGB(255, 255, 255),
        oldTime = Lighting.ClockTime,
        Time = 14,
        FovChanger = false,
        FovAdd = 0,
        OldFov = workspace.CurrentCamera.FieldOfView,
        ZoomAmt = 0,
        FovZoom = false,
    },
    cursor = {
        Enabled = false,
        CustomPos = false,
        Position = Vector2.new(0,0),
        Speed = 5,
        Radius = 25,
        Color = Color3.fromRGB(180, 50, 255),
        Thickness = 1.7,
        Outline = false,
        Resize = false,
        Dot = false,
        Gap = 10,
        TheGap = false,
        Text = {
            Logo = false,
            LogoColor = Color3.new(1,1,1),
            Name = false,
            NameColor = Color3.new(1,1,1),
            LogoFadingOffset = 0,
        },
        sussy = false,
        rainbow = false
    },
    thirdperson = false,
    thirdpdist = 0,
    speenx = 0,
    speeny = 0,
    speenz = 0,
    tpwalkspeed = 0,
    spinspeed = 0,
    infJumpDebounce = false,
    spamsettings = {
        speed = 0,
        num = 1,
        enabled = false,
        emojis = false,
        symb = false,
        symbols = {"$", "\"", "/", "%", "&", "_", "^", ">", "[", "]", ":", "™"},
        real = {
            [1] = {
                "\240\159\152\142", --"😎",
                "\240\159\152\136", --"😈",
                "\240\159\164\145", --"🤑",
                "\240\159\152\173", --"😭",
                "\240\159\164\175", --"🤯",
                "\240\159\165\182", --"🥶",
                "\240\159\152\179",--"😳",
                "\240\159\165\181",--"🥵",
                "\240\159\152\177",--"😱",
                "\240\159\152\161",--"😡",
                "\240\159\152\130",--"😂",
                "\240\159\166\129",--"🦁",
                "\240\159\166\134",--"🦆",
                "\240\159\166\138",--"🦊", 
                "\226\153\191"--"♿"
            },
            [2] = {
                "running the server",
                "no comp",
                "yeah",
                "u suck",
                "stay tg.lol-less",
                "i love tg",
                "tg",
                "stop using bad scripts",
                "use tg.lol",
            }
        },
        customword = "",
        customwordenabled = false,
        chatchannelpatch = "All",
        chatlenghtpatch = 200,
    }
}
local function generateword(word)
    local final = " "..word.." "
    local function addsomething()
        if varsglobal.spamsettings.emojis and varsglobal.spamsettings.symb then
            local chosen, word = varsglobal.spamsettings.real[1], nil
            word = varsglobal.spamsettings.symbols[math.random(1,#varsglobal.spamsettings.symbols)]:rep(math.random(2,5))..chosen[math.random(1,#chosen)]:rep(1,2).." "
            return word
        elseif varsglobal.spamsettings.emojis then
            local chosen, word = varsglobal.spamsettings.real[1], nil
            word = chosen[math.random(1,#chosen)]:rep(1,2).." "
            return word
        elseif varsglobal.spamsettings.symb then
            local word = nil
            word = varsglobal.spamsettings.symbols[math.random(1,#varsglobal.spamsettings.symbols)]:rep(math.random(2,5)).." "
            return word
        else
            return ""
        end
    end
    if not varsglobal.spamsettings.emojis and not varsglobal.spamsettings.symb then
        return (final):sub(1, varsglobal.spamsettings.chatlenghtpatch)
    else
        return (addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()..final..addsomething()..addsomething()):sub(1,varsglobal.spamsettings.chatlenghtpatch)
    end
end
wrap(function()
    while task.wait(varsglobal.spamsettings.speed) do
        if varsglobal.spamsettings.enabled then
            if varsglobal.spamsettings.num >= #varsglobal.spamsettings.real[2] then
                if not varsglobal.spamsettings.customwordenabled then
                    varsglobal.spamsettings.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.real[2][varsglobal.spamsettings.num]), varsglobal.spamsettings.chatchannelpatch)
                else
                    varsglobal.spamsettings.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.customword), varsglobal.spamsettings.chatchannelpatch)
                end
            else
                if not varsglobal.spamsettings.customwordenabled then
                    varsglobal.spamsettings.num = varsglobal.spamsettings.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.real[2][varsglobal.spamsettings.num]), varsglobal.spamsettings.chatchannelpatch)
                else
                    varsglobal.spamsettings.num = varsglobal.spamsettings.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(generateword(varsglobal.spamsettings.customword), varsglobal.spamsettings.chatchannelpatch)
                end
            end
        end
    end
end)




local Visuals = Tabs.Main:AddRightTabbox()
if game.GameId ~= 4620241901 then
local TabEsp = Tabs.Main:AddRightTabbox()
local Aimbot = Tabs.Main:AddLeftTabbox()
local Aimbottab = Aimbot:AddTab('aimbot')

 Aimbottab:AddToggle('aimbot', {
    Text = 'enable aimbot',
    Default = false,
    Callback = function(first)
        ExunysDeveloperAimbot.Settings.Enabled = first
    end
}):AddKeyPicker('KeyPicker', {
        
    Default = 'None',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'keybind',
    NoUI = false,

    Callback = function(Value)
        
    end,
})

Aimbottab:AddToggle('fov', {
    Text = 'enable fov',
    Default = false,
    Callback = function(first)
        ExunysDeveloperAimbot.FOVSettings.Enabled = first
        ExunysDeveloperAimbot.FOVSettings.Visible = first
    end
}):AddColorPicker('fovcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'fov color',
    Transparency = 0,

    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Color = Value
    end
})

Aimbottab:AddToggle('wallcheck', {
    Text = 'enable wallcheck',
    Default = false,
    Callback = function(first)
        ExunysDeveloperAimbot.Settings.WallCheck = first
    end
})

Aimbottab:AddToggle('alivecheck', {
    Text = 'enable alivecheck',
    Default = false,
    Callback = function(first)
        ExunysDeveloperAimbot.Settings.AliveCheck = first
    end
})

Aimbottab:AddToggle('teamcheck', {
    Text = 'enable teamcheck',
    Default = false,
    Callback = function(first)
        ExunysDeveloperAimbot.Settings.TeamCheck = first
    end
}) 



Aimbottab:AddDropdown('bodypartse', {
    Values = {'Head', 'HumanoidRootPart', 'Left Arm', 'Right Arm'},
    Default = 1,
    Multi = false,

    Text = 'body part',
    Tooltip = 'select the aimbot hitpart',

    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.LockPart = Value
    end
})

Aimbottab:AddSlider('smoothing', {
    Text = 'smoothing',
    Default = 0,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,  
}):OnChanged(function(State)
    ExunysDeveloperAimbot.Settings.Sensitivity = State
    ExunysDeveloperAimbot.Settings.Sensitivity2 = State
end) --

local EnemyEspTab = TabEsp:AddTab('enemy')
local TeamEspTab = TabEsp:AddTab('friendly')

local enemysets = _esplib.teamSettings.enemy 
local teamsets = _esplib.teamSettings.friendly
EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        enemysets.enabled = first
    end
})
EnemyEspTab:AddToggle('boxswitch', {
    Text = 'box esp',
    Default = false,  
    Callback = function(first)
        enemysets.box = first
    end
}):AddColorPicker('boxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.boxColor[1] = Value
    end
})
EnemyEspTab:AddToggle('3d', {
    Text = '3dbox',
    Default = false,  
    Callback = function(first)
        enemysets.box3d = first
    end
}):AddColorPicker('3dcolor', {
    Default = Color3.new(1, 1, 1),
    Title = '3d box color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.box3dColor[1]  = Value
    end
})
EnemyEspTab:AddToggle('yeah', {
    Text = 'player knownness',
    Default = false,  
    Callback = function(first)
        enemysets.weapon = first
    end
})
EnemyEspTab:AddToggle('nameswitch', {
    Text = 'name esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.name = first
    end
}):AddColorPicker('namecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.nameColor[1] = Value
    end
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.healthBar = first
    end
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    Callback = function(first)
        enemysets.healthText = first
    end
}):AddColorPicker('healthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.healthTextColor[1] = Value
    end
})
EnemyEspTab:AddToggle('tracerswitch', {
    Text = 'tracers esp',
    Default = false,  
    Callback = function(first)
        enemysets.tracer = first
    end
}):AddColorPicker('tracercolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'tracer color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.tracerColor[1] = Value
    end
})
EnemyEspTab:AddDropdown('Enemy Tracer Origin', {Values = {'Top', 'Bottom', 'Mouse'},Default = 1,Multi = false,Text = 'tracer origin',Tooltip = 'select origin',Callback = function(Value)
    enemysets.tracerOrigin = Value
end})
EnemyEspTab:AddToggle('distswitch', {
    Text = 'distance esp',
    Default = false,  

    Callback = function(first)
        enemysets.distance = first
    end
}):AddColorPicker('distcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.distanceColor[1] = Value
    end
})
EnemyEspTab:AddToggle('distswitchniger', {
    Text = 'chams',
    Default = false,  

    Callback = function(first)
        enemysets.chams = first
    end
}):AddColorPicker('distcolor1337', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams outline',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsOutlineColor[1] = Value
    end
}):AddColorPicker('distcolor228', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams fill',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsFillColor[1] = Value
    end
})

EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'enemy arrows',
    Default = false,  
    Callback = function(first)
        enemysets.offScreenArrow = first 
    end
}):AddColorPicker('outOfViewArrowscolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'enemy color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.offScreenArrowColor[1] = Value
    end
})
EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'enemy outline',
    Default = false,  
    Callback = function(first)
        enemysets.offScreenArrow = first 
    end
})
EnemyEspTab:AddSlider('outOfViewArrowsOutlines radius', {Text = 'oof radius', Default = 60,Min = 0,Max = 600,Rounding = 0,Compact = true})
:OnChanged(function(State)
    enemysets.offScreenArrowRadius = State
end)
EnemyEspTab:AddSlider('outOfViewArrowsOutlines Size', {Text = 'oof size', Default = 60,Min = 0,Max = 600,Rounding = 0,Compact = true})
:OnChanged(function(State)
    enemysets.offScreenArrowSize = State
end)


TeamEspTab:AddToggle('teamEspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        teamsets.enabled = first
    end
})
TeamEspTab:AddToggle('teamboxswitch', {
    Text = 'box esp',
    Default = false,  
    Callback = function(first)
        teamsets.box = first
    end
}):AddColorPicker('teamboxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.boxColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamnameswitch', {
    Text = 'name esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.name = first
    end
}):AddColorPicker('teamnamecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.nameColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health bar esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.healthBar = first
    end
})
TeamEspTab:AddToggle('teamhealthswitch', {
    Text = 'health text esp',
    Default = false,  
    

    Callback = function(first)
        teamsets.healthText = first
    end
}):AddColorPicker('teamhealthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.healthTextColor[1] = Value
    end
})
TeamEspTab:AddToggle('teamdistswitch', {
    Text = 'distance esp',
    Default = false,  

    Callback = function(first)
        teamsets.distance = first
    end
}):AddColorPicker('teamdistcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    Callback = function(Value)
        teamsets.distanceColor[1] = Value
    end
})
_esplib.Load()
end
local WorldTab = Visuals:AddTab('world')
local Misc = Tabs.Misc:AddLeftGroupbox('Misc')
local CrosshairTab = Tabs.Misc:AddLeftGroupbox('crosshair')
local movetab = Tabs.Misc:AddRightGroupbox('movement')
local debugtab = Tabs.Misc:AddLeftGroupbox('debug')
local stuffz = Tabs.Settings:AddLeftGroupbox('stuffz')
local luatab = Tabs.Lua:AddRightGroupbox('swimlua');
(function()
    local draw, objects = {}, {}
    function draw:new(type, props)
        local obj = Drawing.new(type)
        for i, v in pairs(props) do
            obj[i] = v
        end
        objects[#objects+1] = obj
        return obj
    end
    function draw:removeall()
        for i, v in pairs(objects) do
            v:Remove()
        end
    end
    function draw:changevis(value)
        for i, v in pairs(objects) do
            v.Visible = value
        end
    end
    
    Misc:AddToggle('showwatermark', {Text='watermark',Default=false,Callback=function(v)draw:changevis(v)end}):AddColorPicker('watercolor', {Default = Color3.fromRGB(139, 68, 235),Title = 'watermark color',Transparency = 0})
    local RunService = game:GetService("RunService")
    local camera = workspace.CurrentCamera
    local toprightpos = Vector2.new(camera.ViewportSize.X-10, 10)

    local background = draw:new("Line", {
        To = toprightpos - Vector2.new(200, -(6+3)),
        From = toprightpos - Vector2.new(0, -(6+3)),
        Thickness = 15,
        Transparency = 0.7,
        Visible = true,
        Color = Color3.new(0,0,0),
        ZIndex = 1,
    })
    local topbar = draw:new("Line", {
        To = toprightpos - Vector2.new(200, 0),
        From = toprightpos - Vector2.new(0, 0),
        Thickness = 1,
        Transparency = 1,
        Visible = true,
        Color = Options["watercolor"].Value,
        ZIndex = 1,
    })
    local topbar1 = draw:new("Line", {
        To = toprightpos - Vector2.new(200, -1),
        From = toprightpos - Vector2.new(0, -1),
        Thickness = 1,
        Transparency = 1,
        Visible = true,
        Color = Options["watercolor"].Value,
        ZIndex = 1,
    })
    local logotext = draw:new("Text", {
        Text = "tg.lol",
        Size = 13,
        Font = 1,
        Outline = true,
        Center = false,
        Position = toprightpos - Vector2.new(200-5, -2),
        Transparency = 1,
        Visible = true,
        Color = Options["watercolor"].Value,
        ZIndex = 1,
    })
    local text = draw:new("Text", {
        Text = "tg.lol | fps | ping",
        Size = 13,
        Font = 1,
        Outline = true,
        Center = false,
        Position = toprightpos - Vector2.new(200-5, -2),
        Transparency = 1,
        Visible = true,
        Color = Color3.new(1,1,1),
        ZIndex = 1,
    })
    draw:changevis(false)
    local FrameTimer = tick()
    local FrameCounter = 0;
    local FPS = 60;
    RunService.Stepped:Connect(function()
        topbar.To = toprightpos - Vector2.new(logotext.TextBounds.X+text.TextBounds.X+10, 0)
        topbar1.To = toprightpos - Vector2.new(logotext.TextBounds.X+text.TextBounds.X+10, -1)
        background.To = toprightpos - Vector2.new(logotext.TextBounds.X+text.TextBounds.X+10, -(6+3))
        logotext.Position = toprightpos - Vector2.new(logotext.TextBounds.X+text.TextBounds.X+5, -2)
        text.Position = toprightpos - Vector2.new(text.TextBounds.X+5, -2)
        topbar.Color = Options["watercolor"].Value
        topbar1.Color = Options["watercolor"].Value
        logotext.Color = Options["watercolor"].Value

        FrameCounter = FrameCounter + 1;
        if (tick() - FrameTimer) >= 1 then
            FPS = FrameCounter;
            FrameTimer = tick();
            FrameCounter = 0;
        end;

        text.Text = title:format(
            "negero",
            math.floor(FPS),
            math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
        );
    end)
end)();
makefolder("tg.lol\\lua")
local function refreshluas()
    local files = listfiles('tg.lol\\lua')
    local valids = {}
    table.foreach(files, function(i, v)
        if v:sub(v:len()-3,v:len()) == ".lua" then
            table.insert(valids, v:sub(("tg.lol\\lua"):len()+2))
        end
    end)
    table.foreach(valids, print)
    return valids
end
luatab:AddLabel("coming soon")
if noadonis then
    luatab:AddDropdown('luadropdown', {
        Values = {''},
        Default = 1,
        Multi = false,
        Text = 'lua list',
        Tooltip = 'select desired lua'
    }):SetValues(refreshluas())
    luatab:AddButton('refresh', function()
        Options.luadropdown:SetValues(refreshluas())
    end)
    local _nc;_nc = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local method = getnamecallmethod():lower()
        local args = {...}
        if method == "getservice" and args[1] == "swimhub" then
            local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
            set_identity(7)
            local main = {
                LuaTab = Tabs.Lua
            }
            function main:Notify(...)
                return Library:Notify(...)
            end
            return main
        end
        return _nc(self, ...)
    end))
    luatab:AddButton('load desired lua', function()
        loadstring(readfile('tg.lol\\lua\\'..Options["luadropdown"].Value))()
    end)
else
    luatab:AddLabel("not available")
end

do
    varsglobal.cursor.rainbow = false
    varsglobal.cursor.sussy = false
    CrosshairTab:AddToggle('crosshairenable', {
        Text = 'enable crosshair',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Enabled = first  
        end
    }):AddColorPicker('crosshaircolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'crosshair color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Color = Value
        end
    })
    CrosshairTab:AddSlider('crosshairspeed', {
        Text = 'speed',
        Default = 3,
        Min = 0.1,
        Max = 15,
        Rounding = 1,
        Compact = true,  
    }):OnChanged(function(State)
        varsglobal.cursor.Speed = State
    end)
    CrosshairTab:AddSlider('crosshairradius', {
        Text = 'radius',
        Default = 25,
        Min = 0.1,
        Max = 100,
        Rounding = 1,
        Compact = true,  
    }):OnChanged(function(State)
        varsglobal.cursor.Radius = State
    end)
    CrosshairTab:AddSlider('crosshairthickness', {
        Text = 'thickness',
        Default = 1.5,
        Min = 0.1,
        Max = 10,
        Rounding = 1,
        Compact = true,  
    }):OnChanged(function(State)
        varsglobal.cursor.Thickness = State
    end)
    CrosshairTab:AddSlider('crosshairgapsize', {
        Text = 'gap',
        Default = 5,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Compact = true,  
    }):OnChanged(function(State)
        varsglobal.cursor.Gap = State
    end)
    CrosshairTab:AddToggle('crosshairenablegap', {
        Text = 'math divide gap',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.TheGap = first  
        end
    })
    CrosshairTab:AddToggle('crosshairenableoutline', {
        Text = 'outline',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Outline = first  
        end
    })
    CrosshairTab:AddToggle('crosshairenableresize', {
        Text = 'resize animation',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Resize = first  
        end
    })
    CrosshairTab:AddToggle('crosshairenabledot', {
        Text = 'dot',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Dot = first  
        end
    })
    CrosshairTab:AddToggle('crosshairenablenazi', {
        Text = 'sussy',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.sussy = first  
        end
    })
    CrosshairTab:AddToggle('crosshairenablefaggot', {
        Text = 'rainbow',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.rainbow = first  
        end
    })
    CrosshairTab:AddToggle('crosshairtextLogo', {
        Text = 'text logo',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Text.Logo = first  
        end
    }):AddColorPicker('crosshairlogocolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'logo color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Text.LogoColor = Value
        end
    })
    CrosshairTab:AddToggle('crosshairtextName', {
        Text = 'text name',
        Default = false,  
    
        Callback = function(first)
            varsglobal.cursor.Text.Name = first  
        end
    }):AddColorPicker('crosshairtextcolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'text color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Text.NameColor = Value
        end
    })
    CrosshairTab:AddSlider('crosshairlogooffset', {
        Text = 'logo fade offset',
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Compact = true,  
    }):OnChanged(function(State)
        varsglobal.cursor.Text.LogoFadingOffset = State
    end)
    local utility = {}
    
    -- // Functions
    function utility:new(type, properties)
        local object = Drawing.new(type)
        
        for i, v in pairs(properties) do
            object[i] = v
        end
        return object
    end
    -- // Initilisation
    local lines = {}
    -- // Drawings
    local outline = utility:new("Square",{
        Visible =  true,
        Size = Vector2.new(4, 4),
        Color = Color3.fromRGB(0, 0, 0),
        Filled = true,
        ZIndex = 1,
        Transparency = 1
    })
    --
    local dot = utility:new("Square",{
        Visible =  true,
        Size = Vector2.new(2, 2),
        Color = varsglobal.cursor.Color,
        Filled = true,
        ZIndex = 2,
        Transparency = 1
    })
    --
    local logotext = utility:new("Text", {
        Visible = false,
        Font = 2,
        Size = 13,
        Color = Color3.fromRGB(138, 128, 255),
        ZIndex = 3,
        Transparency = 1,
        Text = "tg.lol",
        Center = true,
        Outline = true,
    })
    local text = utility:new("Text", {
        Visible = false,
        Font = 2,
        Size = 13,
        Color = Color3.new(1,1,1),
        ZIndex = 3,
        Transparency = 1,
        Text = plr.Name,
        Center = true,
        Outline = true,
    })
    --
    for i=1 , 4 do
        --
        local line_outline = utility:new("Line",{
            Visible =  true,
            From = Vector2.new(200,500),
            To = Vector2.new(200,500),
            Color = Color3.fromRGB(0, 0, 0),
            Thickness = varsglobal.cursor.Thickness + 2.5,
            ZIndex = 1,
            Transparency = 1
        })
        --
        local line = utility:new("Line",{
            Visible =  true,
            From = Vector2.new(200,500),
            To = Vector2.new(200,500),
            Color = varsglobal.cursor.Color,
            Thickness = varsglobal.cursor.Thickness,
            ZIndex = 2,
            Transparency = 1
        })

        local naziline = utility:new("Line",{
            Visible =  true,
            From = Vector2.new(200,500),
            To = Vector2.new(200,500),
            Color = varsglobal.cursor.Color,
            Thickness = varsglobal.cursor.Thickness,
            ZIndex = 2,
            Transparency = 1
        })

        lines[i] = {line, line_outline, naziline}
    end
    -- // Main
    local angle = 0
    local transp = 0
    local reverse = false
    local function setreverse(value)
        if reverse ~= value then
            reverse = value
        end
    end
    --
    local pos, rainbow, rotationdegree, color = Vector2.zero, 0, 0, Color3.new()
    local math_cos, math_atan, math_pi, math_sin = math.cos, math.atan, math.pi, math.sin
    local function DEG2RAD(x) return x * math_pi / 180 end
    local function RAD2DEG(x) return x * 180 / math_pi end
    RunService.RenderStepped:Connect(function(delta)
        if varsglobal.cursor.Enabled then
            rainbow = rainbow + (delta * 0.5)
            if rainbow > 1.0 then rainbow = 0.0 end
            color = Color3.fromHSV(rainbow, 1, 1)
            if varsglobal.cursor.CustomPos then pos = varsglobal.cursor.Position else pos = Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y + game:GetService("GuiService"):GetGuiInset().Y)end
            if varsglobal.cursor.rainbow then color = Color3.fromHSV(rainbow, 1, 1) else color = varsglobal.cursor.Color end
            if transp <= 1.5+varsglobal.cursor.Text.LogoFadingOffset and not reverse then 
                transp = transp +((varsglobal.cursor.Speed * 10) * delta)
                if transp >= 1.5+varsglobal.cursor.Text.LogoFadingOffset then setreverse(true) end
            elseif reverse then
                transp = transp - ((varsglobal.cursor.Speed * 10) * delta)
                if transp <= 0-varsglobal.cursor.Text.LogoFadingOffset then setreverse(false) end
            end
            logotext.Position = Vector2.new(pos.X, (pos + Vector2.new(0, varsglobal.cursor.Radius + 5)).Y)
            logotext.Transparency = transp
            logotext.Visible = varsglobal.cursor.Text.Logo
            logotext.Color = varsglobal.cursor.Text.LogoColor
            --
            text.Position = Vector2.new(pos.X, (pos + Vector2.new(0, varsglobal.cursor.Radius + (varsglobal.cursor.Text.Logo and 19 or 5))).Y)
            text.Visible = varsglobal.cursor.Text.Name
            text.Color = varsglobal.cursor.Text.NameColor

            if varsglobal.cursor.sussy then
                local frametime = delta
                local a = varsglobal.cursor.Radius - 10
                local gamma = math_atan(a / a)
                
                if rotationdegree >= 90 then rotationdegree = 0 end
            
                for i = 1, 4 do  
                    local p_0 = (a * math_sin(DEG2RAD(rotationdegree + (i * 90))))
                    local p_1 = (a * math_cos(DEG2RAD(rotationdegree + (i * 90))))
                    local p_2 =((a / math_cos(gamma)) * math_sin(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))
                    local p_3 =((a / math_cos(gamma)) * math_cos(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))
            
                    
                    lines[i][1].From = Vector2.new(pos.X, pos.Y)
                    lines[i][1].To = Vector2.new(pos.X + p_0, pos.Y - p_1)
                    lines[i][1].Color = color
                    lines[i][1].Thickness = varsglobal.cursor.Thickness
                    lines[i][1].Visible = true
                    lines[i][3].From = Vector2.new(pos.X + p_0, pos.Y - p_1)
                    lines[i][3].To = Vector2.new(pos.X + p_2, pos.Y - p_3)
                    lines[i][3].Color = color
                    lines[i][3].Thickness = varsglobal.cursor.Thickness
                    lines[i][3].Visible = true
                end
                rotationdegree = rotationdegree + ((varsglobal.cursor.Speed * frametime) * 1000) 
            else
                angle = angle + ((varsglobal.cursor.Speed * 10) * delta)

                if angle >= 90 then
                    angle = 0
                end
                --
                dot.Visible = varsglobal.cursor.Dot
                dot.Color = color
                dot.Position = Vector2.new(pos.X - 1, pos.Y - 1)
                --
                outline.Visible = varsglobal.cursor.Outline and varsglobal.cursor.Dot
                outline.Position = Vector2.new(pos.X - 2, pos.Y - 2)
                --

                --
                for index, line in pairs(lines) do
                    index = index
                    if varsglobal.cursor.Resize then
                        x = {pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + ((varsglobal.cursor.Radius * math.sin(angle)) / 9))), pos.X + (math.cos(angle + (index * (math.pi / 2))) * ( (varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and (((varsglobal.cursor.Radius - 20) * math.cos(angle)) / 4) or (((varsglobal.cursor.Radius - 20) * math.cos(angle)) - 4))))}
                        y = {pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + ((varsglobal.cursor.Radius * math.sin(angle)) / 9))), pos.Y + (math.sin(angle + (index * (math.pi / 2))) * ( (varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and (((varsglobal.cursor.Radius - 20) * math.cos(angle)) / 4) or (((varsglobal.cursor.Radius - 20) * math.cos(angle)) - 4))))}
                        x1 = {pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius+1)), pos.X + (math.cos(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20+1 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20+1)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20+1)-varsglobal.cursor.Gap)) ))}
                        y1 = {pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius+1)), pos.Y + (math.sin(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20+1 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20+1)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20+1)-varsglobal.cursor.Gap)) ))}
                    else
                        x = {pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius)), pos.X + (math.cos(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20)-varsglobal.cursor.Gap)) ))}
                        y = {pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius)), pos.Y + (math.sin(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20)-varsglobal.cursor.Gap)) ))}
                        x1 = {pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius+1)), pos.X + (math.cos(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20+1 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20+1)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20+1)-varsglobal.cursor.Gap)) ))}
                        y1 = {pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius+1)), pos.Y + (math.sin(angle + (index * (math.pi / 2))) * ( ( varsglobal.cursor.Radius - 20+1 ) - (varsglobal.cursor.TheGap and((varsglobal.cursor.Radius-20+1)/varsglobal.cursor.Gap)or((varsglobal.cursor.Radius-20+1)-varsglobal.cursor.Gap)) ))}
                    end
                    --
                    line[1].Visible = true
                    line[1].Color = color
                    line[1].From = Vector2.new(x[2], y[2])
                    line[1].To = Vector2.new(x[1], y[1])
                    line[1].Thickness = varsglobal.cursor.Thickness
                    --
                    line[2].Visible = varsglobal.cursor.Outline
                    line[2].From = Vector2.new(x1[2], y1[2])
                    line[2].To = Vector2.new(x1[1], y1[1])
                    line[2].Thickness = varsglobal.cursor.Thickness + 2.5

                    line[3].Visible = false
                end
            end
        else
            dot.Visible = false
            outline.Visible = false
            logotext.Visible = false
            text.Visible = false
            --
            for index, line in pairs(lines) do
                line[1].Visible = false
                line[2].Visible = false
                line[3].Visible = false
            end
        end
    end)
end

Library:SetWatermarkVisibility(true)

-- Example of dynamically-updating watermark with common traits (fps and ping)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 400;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('>w< / beta / build: public / uid: unknown / %s fps / %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);



WorldTab:AddToggle('nograsss', {
    Text = 'no grass',
    Default = false,  
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})

print("loading chams")
local niggaa = false
local nigaac = Color3.fromRGB(255,255,255)
local niggadur = 1
local niggamat = "ForceField"

task.spawn(function ()
    while true do
        wait()
        if niggaa == true then
            repeat
                game.Players.LocalPlayer.Character.Archivable = true
                local Clone = game.Players.LocalPlayer.Character:Clone()
                for _,Nigga in next, Clone:GetDescendants() do
                if Nigga.Name == "HumanoidRootPart" or Nigga:IsA("Humanoid") or Nigga:IsA("LocalScript") or Nigga:IsA("Script") or Nigga:IsA("Decal") then
                    Nigga:Destroy()
                elseif Nigga:IsA("BasePart") or Nigga:IsA("Meshpart") or Nigga:IsA("Part") then
                    if Nigga.Transparency == 1 then
                        Nigga:Destroy()
                    else
                        Nigga.CanCollide = false
                        Nigga.Anchored = true
                        Nigga.Material = niggamat
                        Nigga.Color = nigaac
                        Nigga.Transparency = 0
                        Nigga.Size = Nigga.Size + Vector3.new(0.03, 0.03, 0.03)   
                end
            end
                pcall(function()
                    Nigga.CanCollide = false
                end)
            end
            Clone.Parent = game.Workspace
            wait(niggadur)
            Clone:Destroy()  
            until niggaa == false
        end
    end
end)

print("loaded chams")

WorldTab:AddToggle('cc', {
    Text = 'clone chams',
    Default = false,  
    Callback = function(first)
        niggaa = first
    end
}):AddColorPicker('cccolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'color',
    Transparency = 0,

    Callback = function(Value)
        nigaac = Value
    end
})

WorldTab:AddSlider('ccdur', {
    Text = 'clone chams duration',
    Default = 0,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,  
}):OnChanged(function(State)
    niggadur = State
end) --

WorldTab:AddDropdown('chamsmat', {
    Values = {'Neon', 'ForceField', 'Plastic', 'SmoothPlastic'},
    Default = 1,
    Multi = false,

    Text = 'chams material',
    Tooltip = 'material of cams',

    Callback = function(Value)
        niggamat = Value
    end
})

WorldTab:AddToggle('backtrack', {
    Text = 'backtrack',
    Default = false,  
    Callback = function(first)
        
    end
}):AddColorPicker('backtrackc', {
    Default = Color3.new(1, 1, 1),
    Title = 'backtrack color',
    Transparency = 0,

    Callback = function(Value)
        
    end
})


WorldTab:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
    end
end)
if noadonis then
    local thirdptog = movetab:AddToggle('thirdperson', {
        Text = 'third person',
        Default = false,  
        
    
        Callback = function(first)
            varsglobal.thirdperson = first
        end
    })
    thirdptog:AddKeyPicker('thirdpersonkey', {
        Default = 'None',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'third person',
        NoUI = false,
        Callback = function(Value)
            varsglobal.thirdperson = Value
            thirdptog:SetValue(Value)
        end,
    })
    movetab:AddSlider('thirdpersondist', {
        Text = 'thirdp distance',
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.thirdpdist = State
    end)
    WorldTab:AddSlider('timechanger', {
        Text = 'time changer',
    
        Default = varsglobal.visuals.oldTime,
        Min = 0,
        Max = 24,
        Rounding = 1,
    
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.Time = State
    end)
    WorldTab:AddToggle('FovChanger', {
        Text = 'fov changer',
        Default = false,  
        Callback = function(first)
            varsglobal.visuals.FovChanger = first
            if first then
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.FovAdd
            else
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
            end
        end
    })
    WorldTab:AddSlider('fovslider', {
        Text = 'fov slider',
        Default = varsglobal.visuals.OldFov,
        Min = 0,
        Max = 120,
        Rounding = 0,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.FovAdd = State
        if varsglobal.visuals.FovChanger then
            workspace.CurrentCamera.FieldOfView = varsglobal.visuals.FovAdd
        end
    end)
    WorldTab:AddLabel('zoom bind'):AddKeyPicker('KeyPicker', {
        Default = 'None',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'zoom onto thing',
        NoUI = false,
        Callback = function(first)
            varsglobal.visuals.FovZoom = first
            if first then
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.ZoomAmt
            else
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
            end
        end,
    })
    WorldTab:AddSlider('zoomslider', {
        Text = 'zoom slider',
        Default = varsglobal.visuals.OldFov - 30,
        Min = 0,
        Max = 120,
        Rounding = 0,
        Compact = false,  
    }):OnChanged(function(State)
        varsglobal.visuals.ZoomAmt = State
    end)
    pcall(function()
        local __newindex
        __newindex = hookmetamethod(game, "__newindex", function(obj, idx, val)
            if (not checkcaller() and (obj.Name == "Camera" or obj.Name == "CurrentCamera") and idx == "FieldOfView") then
                varsglobal.visuals.OldFov = val
                if not varsglobal.visuals.FovZoom then
                    if varsglobal.visuals.FovChanger then
                        return varsglobal.visuals.FovAdd
                    end
                else
                    return varsglobal.visuals.ZoomAmt
                end
            end
            if obj == camera and idx == "CFrame" then
                if varsglobal.thirdperson then
                    val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
                end
            end
            return __newindex(obj, idx, val)
        end)

        local index; index = hookmetamethod(game, '__index', function(obj, idx)
            if (index(obj, 'Name') == 'CurrentCamera' or index(obj, 'Name') == 'Camera') and idx == 'FieldOfView' then
                return varsglobal.visuals.OldFov
            end
            return index(obj, idx)
        end)
    end)
end
WorldTab:AddToggle('ambientswitch', {
    Text = 'enable ambient',
    Default = false,  
    

    Callback = function(first)
        varsglobal.visuals.gradientenabled = first
    end
}):AddColorPicker('ambientcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color1',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor1 = Value
    end
}):AddColorPicker('ambientcolor1', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color2',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor2 = Value
    end
})
WorldTab:AddToggle('fogswitch', {
    Text = 'enable fog',
    Default = false,  
    

    Callback = function(first)
        varsglobal.visuals.FogEnabled = first
    end
}):AddColorPicker('fogcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'fog color',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.FogColor = Value
    end
})
WorldTab:AddSlider('fogstart', {
    Text = 'fog start',

    Default = 0,
    Min = 0,
    Max = 1000,
    Rounding = 0,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.visuals.FogStart = State
end)
WorldTab:AddSlider('fogend', {
    Text = 'fog end',

    Default = 10000,
    Min = 0,
    Max = 10000,
    Rounding = 0,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.visuals.FogEnd = State
end)

if safeload then
    local visuals_BloomInstance = Instance.new("BloomEffect", Lighting)
    local visuals_BloomIntensity = 0
    local visuals_BloomSize = 17
    local visuals_BloomThreshold = 0.9
    local visuals_BloomEnabled = false
    RunService.RenderStepped:Connect(function()
        visuals_BloomInstance.Intensity = visuals_BloomIntensity
        visuals_BloomInstance.Size = visuals_BloomSize
        visuals_BloomInstance.Threshold = visuals_BloomThreshold
        visuals_BloomInstance.Enabled = visuals_BloomEnabled
    end)
    WorldTab:AddToggle('bloomswitch', {
        Text = 'enable bloom',
        Default = false,  


        Callback = function(first)
            visuals_BloomEnabled = first
        end
    })
    WorldTab:AddSlider('bloomintensity', {
        Text = 'bloom intensity',

        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,

        Compact = false,  
    })

    Options.bloomintensity:OnChanged(function(State)
        visuals_BloomIntensity = State
    end)
    WorldTab:AddSlider('bloomsize', {
        Text = 'bloom size',

        Default = 17,
        Min = 0,
        Max = 50,
        Rounding = 1,

        Compact = false,  
    })
    Options.bloomsize:OnChanged(function(State)
        visuals_BloomSize = State
    end)
    WorldTab:AddSlider('bloomthreshold', {
        Text = 'bloom threshold',

        Default = 0.9,
        Min = 0,
        Max = 5,
        Rounding = 1,

        Compact = false,  
    })
    Options.bloomthreshold:OnChanged(function(State)
        visuals_BloomThreshold = State
    end)
end

if isusingfancyloader then
    print(" [ 3/5 ] loaded visuals\n")
end



local function speeenR6()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp0.RootJoint.Part0 = nil
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    local lvec1,lvec2,lvec3 = 0, 0, 0
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
local function speeenR15()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    local lvec1,lvec2,lvec3 = 0,0,0
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
if isusingfancyloader then
    print(" [ 3/5 ] loaded functions\n")
end

Misc:AddToggle('keybindshoww', {
    Text = 'show keybinds',
    Default = false,  
    

    Callback = function(first)
        Library.KeybindFrame.Visible = first;
    end
})
Misc:AddToggle('ChatSPAM', {
    Text = 'adaptive chatspam',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.enabled = first
    end
})
Misc:AddSlider('spamspeed', {
    Text = 'message interval',
    Default = 3,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,  
}):OnChanged(function(State)
    varsglobal.spamsettings.speed = State
end)
Misc:AddToggle('chatpsamcdstlbols', {
    Text = 'symbols',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.symb = first
    end
})
Misc:AddToggle('ChatSPAMemojis', {
    Text = 'emojis',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.emojis = first
    end
})
Misc:AddToggle('chatpsa1mcdstlbols', {
    Text = 'custom word',
    Default = false,  
    

    Callback = function(first)
        varsglobal.spamsettings.customwordenabled = first
    end
})
Misc:AddInput('customwordtextbox', {
    Default = 'tg.lol on top',
    Numeric = false,
    Finished = false,

    Text = 'custom word',
    Tooltip = 'hmmm',

    Placeholder = 'enter text',

    Callback = function(Value)
        varsglobal.spamsettings.customword = Value
    end
})
Misc:AddButton('Rejoin', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoining⚡")
        wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
    end
end)

debugtab:AddButton('destroy', function()
    Library:Unload()
end)

debugtab:AddButton('dark dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

debugtab:AddButton('simplespy', function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

debugtab:AddButton('task/wait hook', function()
    a = hookfunction(wait, function(b)
        return a(0)
    end)
    b = hookfunction(task.wait, function(c)
        return b(0)
    end)
end)

movetab:AddToggle('InfJump', {
    Text = 'infjump (unsafe)',
    Default = false,  
    

    Callback = function(first)
        if first then
            if varsglobal.infJump then varsglobal.infJump:Disconnect() end
            varsglobal.infJumpDebounce = false
            varsglobal.infJump = game:GetService("UserInputService").JumpRequest:Connect(function()
                if not varsglobal.infJumpDebounce then
                    varsglobal.infJumpDebounce = true
                    plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
                    wait()
                    varsglobal.infJumpDebounce = false
                end
            end)
        else
            if varsglobal.infJump then varsglobal.infJump:Disconnect() end
        end
    end
})

movetab:AddToggle('ToggleSpeed', {
    Text = 'speed toggle',
    Default = false,  
    

    Callback = function(first)
        tpwalking = first
        local chr = game:GetService("Players").LocalPlayer.Character
        local hum = chr and chr:WaitForChild("Humanoid")
        while tpwalking and chr and hum and hum.Parent do
            local delta = RunService.Heartbeat:Wait()
            if hum.MoveDirection.Magnitude > 0 then
                if varsglobal.tpwalkspeed then
                    chr:TranslateBy(hum.MoveDirection * tonumber(varsglobal.tpwalkspeed) * delta * 10)
                else
                    chr:TranslateBy(hum.MoveDirection * delta * 10)
                end
            end
        end
    end
})

movetab:AddSlider('CFrameSpeed', {
    Text = 'CFrame Speed',

    Default = 0,
    Min = 0,
    Max = (safeload and 100 or 10),
    Rounding = 1,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.tpwalkspeed = State
end)
movetab:AddToggle('justspin', {
    Text = 'CFrame spin',
    Default = false,  

    Callback = function(first)

    end
})
movetab:AddSlider('justspinspeed', {
    Text = 'CFrame spin speed',

    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 1,

    Compact = false,  
}):OnChanged(function(State)
    varsglobal.spinspeed = State
end)

movetab:AddDropdown('hitsound', {
    Values = {'rust', 'gamesense', 'xp', 'uwu', 'osu', 'quaver'},
    Default = 1,
    Multi = false,

    Text = 'hitsound',
    Tooltip = 'whenever bullet hits someone it plays a sound',

    Callback = function(Value)
        if Value == 'xp' then
            game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://5857559198"
        elseif Value == 'gamesense' then
            game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://4753603610"
        elseif Value == 'uwu' then
        game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://8679659744"
    elseif Value == 'rust' then
            game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://5043539486"
    elseif Value == 'osu' then
        game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://7147954330"
    elseif Value == 'quaver' then
        game.ReplicatedFirst.CarbonResource.FX.Sounds.BodyHit.SoundId = "rbxassetid://7150068039"
        end
    end
})

movetab:AddButton('spin R6 on all axis', function()
    speeenR6()
end)

movetab:AddButton('spin R15 on all axis', function()
    speeenR15()
end)

movetab:AddSlider('SpeenX', {
    Text = 'spin x',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenX:OnChanged(function(State)
    varsglobal.speenx = State
end)

movetab:AddSlider('SpeenY', {
    Text = 'spin y',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenY:OnChanged(function(State)
    varsglobal.speeny = State
end)

movetab:AddSlider('SpeenZ', {
    Text = 'spin z',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenZ:OnChanged(function(State)
    varsglobal.speenz = State
end)
-- totally not cripware
local OriginalAutoRotate = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").AutoRotate or true
RunService.RenderStepped:Connect(function()
    camera = game:GetService("Workspace").CurrentCamera
    if varsglobal.visuals.gradientenabled then
        Lighting.Ambient = varsglobal.visuals.gradientcolor1
        Lighting.OutdoorAmbient = varsglobal.visuals.gradientcolor2
    else
        Lighting.Ambient = varsglobal.visuals.oldgradient1
        Lighting.OutdoorAmbient = varsglobal.visuals.oldgradient2
    end
    if varsglobal.visuals.FogEnabled then
        Lighting.FogStart = varsglobal.visuals.FogStart
        Lighting.FogEnd = varsglobal.visuals.FogEnd
        Lighting.FogColor = varsglobal.visuals.FogColor
    else
        Lighting.FogStart = varsglobal.visuals.oldFogStart
        Lighting.FogEnd = varsglobal.visuals.oldFogEnd
        Lighting.FogColor = varsglobal.visuals.oldFogColor
    end
    --[[if varsglobal.visuals.FovChanger then 
        camera.FieldOfView = varsglobal.visuals.FovZoom and varsglobal.visuals.ZoomAmt or varsglobal.visuals.FovAdd 
    else
        camera.FieldOfView = varsglobal.visuals.FovZoom and varsglobal.visuals.ZoomAmt or varsglobal.visuals.OldFov
    end]]
    Lighting.ClockTime = varsglobal.visuals.Time

    local SelfCharacter = plr.Character
    local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"), SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
    if (SelfCharacter and SelfRootPart and SelfHumanoid) and Toggles["justspin"].Value then
        SelfHumanoid.AutoRotate = false
        local Angle do
            Angle = -math.atan2(camera.CFrame.LookVector.Z, camera.CFrame.LookVector.X) + tick() * varsglobal.spinspeed % 360
        end
        local NewAngle = CFrame.new(SelfRootPart.Position) * CFrame.Angles(0, Angle, 0)
        local function ToYRotation(_CFrame)
            local _, Y, _ = _CFrame:ToOrientation()
            return CFrame.new(_CFrame.Position) * CFrame.Angles(0, Y, 0)
        end
        local Angle2 = ToYRotation(NewAngle)
        SelfRootPart.CFrame = Angle2
    elseif (SelfCharacter and SelfRootPart and SelfHumanoid) and not Toggles["justspin"].Value then
        SelfHumanoid.AutoRotate = OriginalAutoRotate
    end
end)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
ThemeManager:SetFolder('tg.lol')
SaveManager:SetFolder('tg.lol')
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToGroupbox(stuffz)
if isusingfancyloader then
    print(" [ 4/5 ] loaded misc\n")
end
if game.GameId == 4620241901 then
    (function() -- or everything will explode
        local tsv2 = {
            --silentaim = false,
            --fovcheck = false,
            --fovcolor = Color3.new(1,1,1),
            --fovdraw = false,
            --fovoutline = false,
            --fovsize = 100,
            
            espsettings = {
                boxes = true,
                distance = true,
                sleepinfo = false,
                chams = false,
                boxcolor = Color3.new(1,1,1),
                sleepcolor = Color3.new(1,1,1),
                distancecolor = Color3.new(1,1,1),
                chamscolor = Color3.new(1,1,1),
            },
            esplib = {
                objs = {},
                connections = {},
            }
        }
        local wtvp = camera.WorldToViewportPoint;
        local isA = workspace.IsA;
        local getPivot = workspace.GetPivot;
        local findFirstChild = workspace.FindFirstChild;
        local findFirstChildOfClass = workspace.FindFirstChildOfClass;
        local getChildren = workspace.GetChildren;
        local toOrientation = CFrame.identity.ToOrientation;
        local pointToObjectSpace = CFrame.identity.PointToObjectSpace;
        local lerpColor = Color3.new().Lerp;
        local min2 = Vector2.zero.Min;
        local max2 = Vector2.zero.Max;
        local min3 = Vector3.zero.Min;
        local max3 = Vector3.zero.Max;
        local floor = math.floor;
        local unpack = table.unpack;
        local create = table.create;
        local VERTICES = {
            Vector3.new(-1, -1, -1),
            Vector3.new(-1, 1, -1),
            Vector3.new(-1, 1, 1),
            Vector3.new(-1, -1, 1),
            Vector3.new(1, -1, -1),
            Vector3.new(1, 1, -1),
            Vector3.new(1, 1, 1),
            Vector3.new(1, -1, 1)
        };

        local viewportSize = camera.ViewportSize;
        local container = Instance.new("Folder",
            gethui and gethui() or game:GetService("CoreGui"));

        function tsv2.esplib:draw(type, props)
            local obj = Drawing.new(type)
            for i,v in pairs(props) do
                obj[i] = v
            end
            tsv2.esplib.objs[#tsv2.esplib.objs+1] = obj
            return obj
        end
        function tsv2.esplib:refresh()
            for i,v in pairs(tsv2.esplib.connections) do
                v:Disconnect()
            end
            for i,v in pairs(tsv2.esplib.objs) do
                v:Remove()
            end
        end
        function tsv2.esplib:worldToScreen(world)
            local screen, inBounds = wtvp(camera, world);
            return Vector2.new(screen.X, screen.Y), inBounds, screen.Z;
        end

        function tsv2.esplib:getBoundingBox(parts)
            local min, max;
            for i = 1, #parts do
                local part = parts[i];
                local cframe, size = part.CFrame, part.Size;
        
                min = min3(min or cframe.Position, (cframe - size*0.5).Position);
                max = max3(max or cframe.Position, (cframe + size*0.5).Position);
            end
        
            local center = (min + max)*0.5;
            local front = Vector3.new(center.X, center.Y, max.Z);
            return CFrame.new(center, front), max - min;
        end
        
        function tsv2.esplib:calculateCorners(cframe, size)
            local corners = create(#VERTICES);
            for i = 1, #VERTICES do
                corners[i] = tsv2.esplib:worldToScreen((cframe + size*0.5*VERTICES[i]).Position);
            end
        
            local min = min2(viewportSize, unpack(corners));
            local max = max2(Vector2.zero, unpack(corners));
            return {
                corners = corners,
                topLeft = Vector2.new(floor(min.X), floor(min.Y)),
                topRight = Vector2.new(floor(max.X), floor(min.Y)),
                bottomLeft = Vector2.new(floor(min.X), floor(max.Y)),
                bottomRight = Vector2.new(floor(max.X), floor(max.Y))
            };
        end
        function tsv2.esplib:update()
            tsv2.esplib:refresh()
            local options = tsv2.espsettings
            for _,character in pairs(workspace:GetChildren()) do
                if character:FindFirstChild("Torso") then
                    local head = character:FindFirstChild("Head")
                    if not head then return end
                    local boxoutline = tsv2.esplib:draw("Square", {
                        Transparency = 1,
                        Thickness = 3,
                    })
                    local box = tsv2.esplib:draw("Square", {
                        Transparency = 1,
                        Thickness = 1,
                    })
                    local namedist = tsv2.esplib:draw("Text", {
                        Size = 13,
                        Font = 1,
                        Center = true,
                        Outline = true,
                        Transparency = 1,
                    })
                    tsv2.esplib.connections[#tsv2.esplib.connections+1] = RunService.RenderStepped:Connect(function()
                        local _, onScreen, _dist = tsv2.esplib:worldToScreen(head.Position);
                        if onScreen then
                            local cache = {}
                            for i,v in pairs(character:GetChildren()) do
                                if v.ClassName:find("Part") then
                                    cache[#cache+1] = v
                                end
                            end
                            if #cache <= 0 then return end
                            local corners = tsv2.esplib:calculateCorners(tsv2.esplib:getBoundingBox(cache))

                            box.Visible = options.boxes
                            box.Position = corners.topLeft;
                            box.Size = corners.bottomRight - corners.topLeft;
                            box.Color = options.boxcolor;

                            boxoutline.Visible = options.boxes
                            boxoutline.Position = corners.topLeft;
                            boxoutline.Size = corners.bottomRight - corners.topLeft;
                            boxoutline.Color = Color3.new(0,0,0);

                            namedist.Text = ("tg.lol | %sm"):format(floor(_dist))
                            namedist.Position = (corners.topLeft + corners.topRight)*0.5 - Vector2.yAxis*namedist.TextBounds.Y - Vector2.new(0, 2);
                            namedist.Color = options.distancecolor
                            namedist.Visible = options.distance
                        else
                            box.Visible = false;
                            boxoutline.Visible = false;
                            namedist.Visible = false;
                        end
                    end)
                end
            end
        end

        plrs.PlayerAdded:Connect(function()tsv2.esplib:update()end)
        plrs.PlayerRemoving:Connect(function()tsv2.esplib:update()end)
        workspace.ChildAdded:Connect(function(child)
            if child:FindFirstChild("Torso") then tsv2.esplib:update() end
        end)
        tsv2.esplib:update()
        local TTab = Tabs.Main:AddLeftGroupbox("Trident Survival // 07.14.23")
        TTab:AddButton("update esp", function()tsv2.esplib:update()end)
    end)()
end

if game.PlaceId == 12355337193 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("Murderers vs Sheriffs Duels")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) and v.Character.Parent == workspace then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < Closest and OnScreen) then
                        Closest = Distance
                        Target = v.Character[ohio.silentaimpart]
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silen4w22', {
            Text = 'no shoot cooldown',
            Default = false, 
        })
        --[[Ohio:AddToggle('sile5nw22', {
            Text = 'wallbang',
            Default = false,  
        })]]
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if Toggles["silen4w22"].Value and not checkcaller() and Method == "GetAttribute" and Arguments[2] == "Cooldown" then
                return 0
            end
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local HitPart = Target
                    if Toggles["sile5nw22"].Value then
                        --local a = RaycastParams.new()
                        --a.FilterType = Enum.RaycastFilterType.Blacklist
                        --a.FilterDescendantsInstances = {workspace.Lobby, workspace.Rooftop, workspace.House}
                        --Arguments[4] = a
                    end
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.PlaceId == 6843988672 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("County Jail Roleplay")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
            varsglobal.cursor.CustomPos = (camera.ViewportSize / 2)
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                
                    local HitPart = Target
                    
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.PlaceId == 8855462985 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("Frontline: Karelia")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
            varsglobal.cursor.CustomPos = (camera.ViewportSize / 2)
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                
                    local HitPart = Target
                    
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.PlaceId == 3297964905 then
    pcall(function()
        local ohio = othergames.entrentch
        
        local Ohio = Tabs.Main:AddLeftGroupbox("Weaponry")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end

        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        ohio.wallnigger = false
        Ohio:AddToggle('wallnigger', {
            Text = 'wallnigger aim',
            Default = false,
            Callback = function(first)
                ohio.wallnigger = first
            end
        })
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    
                    local HitPart = Target
                    
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        if ohio.wallnigger then
                            local raycastParams = Arguments[4]
                            local FilterDescendantsInstances = {HitPart.Parent}
                            local FilterType = Enum.RaycastFilterType.Whitelist
                            local IgnoreWater = raycastParams.IgnoreWater
                            local CollisionGroup = raycastParams.CollisionGroup
                            Arguments[4] = RaycastParams.new(
                                {
                                    FilterDescendantsInstances = FilterDescendantsInstances,
                                    FilterType = FilterType,
                                    IgnoreWater = IgnoreWater,
                                    CollisionGroup = CollisionGroup
                                }
                            )
                        end
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.GameId == 104984488 then
    pcall(function()
        local env = getsenv(game:service("Players").LocalPlayer.PlayerGui.Client)
        local JailBird = Tabs.Main:AddLeftTabbox("Traitor Town")
        local AimTab = JailBird:AddTab("aim")
        local ttown = othergames.tt
        local function GetClosest()
            local target = nil
            local maxDist = ttown.fovcheck and ttown.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ttown.aimfov
            CircleInline.Color = ttown.fovcolor
            CircleInline.Visible = ttown.drawfov
            CircleOutline.Radius = ttown.aimfov
            CircleOutline.Visible = (ttown.drawfov and ttown.fovoutline)
            Target = GetClosest()
        end)
        AimTab:AddToggle('Silen11tAimjb227', {
            Text = 'infinite pom',
            Default = false,  


            Callback = function(first)
                while first do
                    wait()
                    env.POMcurrent = 8
                end
            end
        })
        AimTab:AddToggle('Silen1441tAimjb227', {
            Text = 'hmm lol',
            Default = false,  
        })
        AimTab:AddToggle('SilentAimjb', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                ttown.silentaim = first
            end
        })
        AimTab:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ttown.silentaimpart = Value
            end
        })
        AimTab:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ttown.fovcheck = first
            end
        })
        AimTab:AddToggle('drawfov', {
            Text = 'draw fov',
            Default = false,  

            Callback = function(first)
                ttown.drawfov = first
            end
        }):AddColorPicker('fovcolor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ttown.fovcolor = Value
            end
        })

        AimTab:AddToggle('fovoutline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ttown.fovoutline = first
            end
        })

        AimTab:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ttown.aimfov = State
        end)
        AimTab:AddToggle('SilentAi511mjb', {
            Text = 'hide head',
            Default = false,  


            Callback = function(first)
                ttown.AA = first
            end
        })
        local function notBehindWall(target)
            local ray = Ray.new(camera.CFrame.p, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera}
            local part, position = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part and part:IsDescendantOf(target.Parent) then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    local pos, visible = camera:WorldToScreenPoint(target.Position)
                    if visible then
                        return true
                    end
                end
            end
        end
        local Old; Old = hookmetamethod(game, "__namecall", function(self, ...)
            local args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and ttown.silentaim) then
                if Target and Target.Character then
                    if Toggles["Silen1441tAimjb227"].Value then table.insert(args[2], workspace.Map) end
                    local Origin = args[1].Origin
                    args[1] = Ray.new(Origin, Target.Character[ttown.silentaimpart].Position - Origin)
                end
            elseif (not checkcaller() and getnamecallmethod() == "FireServer" and self.Name == "CFrameBody" and ttown.AA) then
                local oldcframe = args[2]
                args[2] = CFrame.new(oldcframe.Position) * CFrame.Angles(9.3, 0, 0)
            end
            return Old(self, unpack(args))
        end)
    end)
end
if game.GameId == 450749276 then
    pcall(function()
        local cttab = Tabs.Main:AddLeftGroupbox("CATASTROPHIA")
        ct = othergames.catastrophia
        local x_ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/SWIMHUBISWIMMING/-/main/library/esp/catastrophia.lua"))()
        x_ESP.Players = false
        x_ESP.Boxes = false
        x_ESP.Names = true
        x_ESP:Toggle(true)

        x_ESP.OreEsp = false
        x_ESP.GrassEsp = false
        x_ESP.BarrelEsp = false
        x_ESP.AnimalEsp = false
        x_ESP.TreeEsp = false

        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "SulfurOre",
            CustomName = "Ore",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "OreEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "Grass",
            CustomName = "Grass",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "GrassEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "Barrel",
            CustomName = "Barrel",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "BarrelEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "PineTree",
            CustomName = "Small Tree",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "TreeEsp"
        })
        x_ESP:AddObjectListener(workspace.Suroviny, {
            Name = "OakTree",
            CustomName = "Big Tree",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "TreeEsp"
        })
        x_ESP:AddObjectListener(workspace.Animals, {
            Name = "Bear",
            CustomName = "Animal",
            Color = Color3.fromRGB(255, 255, 255),
            IsEnabled = "AnimalEsp"
        })
        
        cttab:AddLabel("i used kiriotlib please forgiver me")

        cttab:AddToggle('MyTogg345345le', {
            Text = 'barrel esp',
            Default = false,
            Tooltip = 'barrel esp',
        
            Callback = function(first)
                x_ESP.BarrelEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdfasd34', {
            Text = 'animal esp',
            Default = false,
            Tooltip = 'animal esp',
        
            Callback = function(first)
                x_ESP.AnimalEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdfasd34', {
            Text = 'ore esp',
            Default = false,
            Tooltip = 'ore esp',
        
            Callback = function(first)
                x_ESP.OreEsp = first
            end
        })
        cttab:AddToggle('sdfs2dfsdfasd34', {
            Text = 'grass esp',
            Default = false,
            Tooltip = 'grass esp',
        
            Callback = function(first)
                x_ESP.GrassEsp = first
            end
        })
        cttab:AddToggle('sdfdss2dfsdfasd34', {
            Text = 'tree esp',
            Default = false,
            Tooltip = 'tree esp',
        
            Callback = function(first)
                x_ESP.TreeEsp = first
            end
        })
        cttab:AddToggle('sdfsdfsdesadfasd34', {
            Text = 'mining speed',
            Default = false,
            Tooltip = 'speed',
        
            Callback = function(first)
                ct.fastmine = first
            end
        })
        cttab:AddSlider('i32rewsdasedaq3w4', {
            Text = 'speed (seconds)',

            Default = 0.27,
            Min = 0,
            Max = 0.5,
            Rounding = 2,

            Compact = false,  
        }):OnChanged(function(State)
            ct.fastminew = State
        end)
        local hookspeed
        hookspeed = hookfunction(wait, function(...)
            local script = getcallingscript()
            if (string.find(tostring(script.Parent), "Axe") or string.find(tostring(script.Parent), "Rock")) and ct.fastmine then
                return hookspeed(ct.fastminew)
            end
            return hookspeed(...)
        end)
    end)
end
-- #roams
if game.PlaceId == 12599615395 then
    plr:Kick("sorry https://anth.skid.group/nsym4edd.png")
end

-- #jailbird
if (game.PlaceId == 6452089755 or game.PlaceId == 6055959032) then
    pcall(function()
        local JailBird = Tabs.Main:AddLeftTabbox(game:GetService("MarketplaceService"):GetProductInfo(6055959032).Name)
        local AimTab = JailBird:AddTab("aim")
        local OtherTab = JailBird:AddTab("other")
        local function notBehindWall(target)
            local ray = Ray.new(plr.Character.Head.Position, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera}
            local part, _ = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    local _, visible = camera:WorldToScreenPoint(target.Position)
                    if visible then
                        return true
                    end
                end
            end
        end
        local function GetClosest()
            local target = nil
            local maxDist = othergames.jailbird.fovcheck and othergames.jailbird.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if othergames.jailbird.teamcheck and v.Team ~= plr.Team then 
                            if othergames.jailbird.visiblecheck then
                                if notBehindWall(v.Character[othergames.jailbird.silentaimpart]) then
                                    if dist < maxDist and vis then
                                        target = v
                                        maxDist = dist
                                    end
                                end
                            else
                                if dist < maxDist and vis then
                                    target = v
                                    maxDist = dist
                                end
                            end
                        end
                        if not othergames.jailbird.teamcheck then
                            if othergames.jailbird.visiblecheck then
                                if notBehindWall(v.Character[othergames.jailbird.silentaimpart]) then
                                    if dist < maxDist and vis then
                                        target = v
                                        maxDist = dist
                                    end
                                end
                            else
                                if dist < maxDist and vis then
                                    target = v
                                    maxDist = dist
                                end
                            end
                        end
                    end
                end
            end
            return target
        end
        if safeload then
            AimTab:AddToggle('BulletTracers', {
                Text = 'bullet tracers',
                Default = false,  


                Callback = function(first)
                    othergames.jailbird.bullettracers = first
                end
            }):AddColorPicker('btcolor', {
                Default = Color3.new(1, 1, 1),
                Title = 'bullet tracers color',
                Transparency = 0,
            
                Callback = function(Value)
                    othergames.jailbird.bullettracerscolor = Value
                end
            })
        

            AimTab:AddToggle('BulletHoles', {
                Text = 'bullet impacts',
                Default = false,  


                Callback = function(first)
                    othergames.jailbird.bulletimpacts = first
                end
            }):AddColorPicker('bicolor', {
                Default = Color3.new(1, 1, 1),
                Title = 'bullet impacts color',
                Transparency = 0,
            
                Callback = function(Value)
                    othergames.jailbird.bulletimpactscolor = Value
                end
            })
        end
        AimTab:AddToggle('SilentAimjb', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.silentaim = first
            end
        })
        
        AimTab:AddToggle('wallbangjb', {
            Text = 'wallbang',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.wallbang = first
            end
        })
        AimTab:AddToggle('AimVisibleCheck', {
            Text = 'visible check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.visiblecheck = first
            end
        })
        AimTab:AddToggle('AimTeamCheck', {
            Text = 'team check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.teamcheck = first
            end
        })
        AimTab:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                othergames.jailbird.silentaimpart = Value
            end
        })
        AimTab:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.fovcheck = first
            end
        })
        AimTab:AddToggle('drawfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.drawfov = first
            end
        }):AddColorPicker('fovcolor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                othergames.jailbird.fovcolor = Value
            end
        })

        AimTab:AddToggle('fovoutline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                othergames.jailbird.fovoutline = first
            end
        })
        AimTab:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            othergames.jailbird.aimfov = State
        end)
        OtherTab:AddButton('no recoil', function() 
            hookfunction(getsenv(game:GetService("Players").LocalPlayer.Character.Saude.Client_System).recoil,function(...)end)
        end)
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = othergames.jailbird.aimfov
            CircleInline.Color = othergames.jailbird.fovcolor
            CircleInline.Visible = othergames.jailbird.drawfov
            CircleOutline.Radius = othergames.jailbird.aimfov
            CircleOutline.Visible = (othergames.jailbird.drawfov and othergames.jailbird.fovoutline)
            Target = GetClosest()
        end)
        local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
            local Args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and othergames.jailbird.silentaim) then
                if Target and Target.Character then
                    local Origin = Args[1].Origin
                    Args[1] = Ray.new(Origin, Target.Character[othergames.jailbird.silentaimpart].Position - Origin)
                end
            end
            return Old(Self, unpack(Args))
        end)
        local mt = getrawmetatable(game)
        local oldNamecall = mt.__namecall   
        if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            local args = {...}
            if not checkcaller() then
                if method == "FireServer" then
                    if self.Name == "Hit" then
                        if args[1] ~= nil and safeload then
                            wrap(function()
                                local a=Instance.new("Part")local b=Instance.new("Part")local c=Instance.new("Attachment",a)local d=workspace.Camera.BasePart.Attachment:Clone()local e=Instance.new("Beam")d.Parent=b;b.Anchored=true;b.CanCollide=false;b.Material="Plastic"b.Color=Color3.new(1,1,1)b.Size=Vector3.new(0.25,0.25,0.25)b.CFrame=workspace.Camera.BasePart.CFrame;b.Name="start"b.Parent=workspace.CurrentCamera;b.Transparency=1;e.Color=ColorSequence.new(othergames.jailbird.bullettracerscolor)e.LightEmission=1;e.LightInfluence=0;e.Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,1-(othergames.jailbird.bullettracers and 1 or 0)),NumberSequenceKeypoint.new(1,1-(othergames.jailbird.bullettracers and 1 or 0))}e.Width0=0.25;e.Width1=0.25;e.Attachment0=d;e.Attachment1=c;e.FaceCamera=false;e.Texture="http://www.roblox.com/asset/?id=".."446111271"e.TextureMode=Enum.TextureMode.Wrap;e.Parent=b;a.Anchored=true;a.CanCollide=false;a.Material="Neon"a.Color=othergames.jailbird.bulletimpactscolor;a.Size=Vector3.new(0.15,0.15,0.15)a.Position=args[1]a.Name="BulletImpacts"a.Parent=workspace.CurrentCamera;a.Transparency=othergames.jailbird.bulletimpacts and 0 or 1;wait(othergames.jailbird.bulletwait)a:Destroy()e:Destroy()b:Destroy()d:Destroy()c:Destroy()
                            end)
                        end
                        
                    end
                end
            end
            return oldNamecall(self, unpack(args))
        end)
        --[[if game.PlaceId == 6055959032 then
            local WeaponTab = Tabs.Main:AddLeftGroupbox("equip weapon")
            local AttachamentTab = Tabs.Main:AddLeftGroupbox("equip attachament")
            local BuyTab = Tabs.Main:AddLeftGroupbox("buy attachament")
            
        else
        end]]
    end)
end

-- #kat
if game.PlaceId == 621129760 then
    pcall(function()

        -- im so sorry for SO SKIDDED CODE
        -- i just forgot to delete .Main.Spawned check
        -- im too lazy to rewrite to mine code
        -- 💞thank you protogen.gay user

        local KAT = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(621129760).Name)
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character and v.Name ~= othergames.kat.whitelistedplayer then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        local Target
        RunService.RenderStepped:Connect(function()
            Target = getPlayerClosestToMouse()
        end)
        KAT:AddToggle('SilentAimKAT', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                othergames.kat.silentaim = first
            end
        })
        KAT:AddDropdown('SilentAimHitPartKAT', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                othergames.kat.salopart = Value
            end
        })
        KAT:AddDropdown('playerwhitelist', {
            SpecialType = 'Player',
            Text = 'whitelist',
            Tooltip = 'player not to kill', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                othergames.kat.whitelistedplayer = Value
            end
        })        
        local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
            local Args = {...}
            if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList" and othergames.kat.silentaim) then
                if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
                    local Origin = Args[1].Origin
                    Args[1] = Ray.new(Origin, Target.Character[othergames.kat.salopart].Position - Origin)
                end
            end
            return Old(Self, unpack(Args))
        end)
    end)
end





-- #hl
if game.PlaceId == 10433018628 then
    pcall(function()
        local HoodLegends = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(10433018628).Name)
        local hoodlegends = {
            onepunch = false,
            nofall = false,
            moneyaura = false,
            moneyauradist = 0,
            silentaim = false,
            silentaimpercent = 100,
            killaura = false
        }
        local function hoodlegendskill()
            wrap(function()
                while hoodlegends.killaura do
                    wait()
                    local nearestPlayer, nearestDistance
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            local character = player.Character
                            local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character.HumanoidRootPart.Position)
                            if not character or distance > 40 or(nearestDistance and distance >= nearestDistance) then return end
                            nearestDistance = distance
                            nearestPlayer = player
                        end
                    end
                    if nearestPlayer ~= nil then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists","T")
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists",false,1,nearestPlayer.Character.Humanoid,nearestPlayer.Character.HumanoidRootPart,nearestPlayer.Character.HumanoidRootPart,true)
                    end
                end
            end)
        end
        local function hoodlegendsmoneyaura()
            wrap(function()
                while hoodlegends.moneyaura do
                    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v:FindFirstChildWhichIsA("ClickDetector") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 * hoodlegends.moneyauradist then
                            fireclickdetector(v.ClickDetector, 0)
                        end
                    end
                    wait()
                end
            end)
        end
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                                if math.random(hoodlegends.silentaimpercent, 100) == 100 then
                                    target = v.Character.Head
                                else
                                    target = v.Character.HumanoidRootPart
                                end
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        HoodLegends:AddToggle('OnePunchMan', {
            Text = 'super punch',
            Default = false,  


            Callback = function(first)
                hoodlegends.onepunch = first
            end
        })

        HoodLegends:AddToggle('MoneyAura', {
            Text = 'money aura',
            Default = false,  


            Callback = function(first)
                hoodlegends.moneyaura = first
                hoodlegendsmoneyaura()
            end
        })

        HoodLegends:AddSlider('MoneyAuraDistance', {
            Text = 'money aura distance',

            Default = 1,
            Min = 1,
            Max = 100,
            Rounding = 0,

            Compact = false,  
        })

        Options.MoneyAuraDistance:OnChanged(function(State)
            hoodlegends.moneyauradist = State
        end)

        HoodLegends:AddToggle('NoFallDamage', {
            Text = 'nofall',
            Default = false,  


            Callback = function(first)
                hoodlegends.nofall = first
            end
        })

        HoodLegends:AddToggle('SilentAim', {
            Text = 'silent aim',
            Default = false,  


            Callback = function(first)
                hoodlegends.silentaim = first
                
            end
        }):AddKeyPicker('KeyPicker', {

            Default = 'None',
            SyncToggleState = false,

            Mode = 'Toggle',

            Text = 'keybind',
            NoUI = false,

            Callback = function(Value)
                hoodlegends.silentaim = Value
                
            end,
        })

        HoodLegends:AddSlider('SilentAimHeadChance', {
            Text = 'silent aim headchance',

            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 0,

            Compact = false,  
        })

        Options.SilentAimHeadChance:OnChanged(function(State)
            hoodlegends.silentaimpercent = State
        end)

        HoodLegends:AddDropdown('playerwhitelisthl', {
            SpecialType = 'Player',
            Text = 'kill player',
            Tooltip = 'player to kill', -- Information shown when you hover over the dropdown
        
            Callback = function(Value)
                for i = 1, 10 do
                    local args = {
                        [1] = {
                            [1] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [2] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [3] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [4] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [5] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [6] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [7] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [8] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [9] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                            [10] = {
                                [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position,
                                [2] = game:GetService("Players"):WaitForChild(Value).Character.Head.CFrame.Position,
                                [3] = Vector3.new(0, 0, 1),
                                [4] = game:GetService("Players"):WaitForChild(Value).Character.Head
                            },
                        }
                    }
                    game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.ShootGun:FireServer(unpack(args))
                    wait(0.1)
                    args = nil
                end
            end
        })  

        HoodLegends:AddToggle('HLKillAura', {
            Text = 'killaura',
            Default = false,  


            Callback = function(first)
                hoodlegends.killaura = first
                hoodlegendskill()
            end
        })
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "FallDamage" and hoodlegends.nofall then
                        args[1] = 1
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "Melee" and hoodlegends.onepunch then
                        args[7] = true
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "ShootGun" and hoodlegends.silentaim then
                        if args[1][2] ~= nil then
                            for i, v in pairs(args[1]) do
                                args[1][i][2] = getPlayerClosestToMouse().Position
                                args[1][i][4] = getPlayerClosestToMouse()
                            end
                        else
                            args[1][1][2] = getPlayerClosestToMouse().Position
                            args[1][1][4] = getPlayerClosestToMouse()
                        end
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end

if game.GameId == 3731701873 then
    pcall(function()
        local ohio = othergames.osiege
        local Ohio = Tabs.Main:AddLeftGroupbox("Operation Siege")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local HitPart = Target
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end

if game.PlaceId == 3678761576 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("the war game")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (ohio.teamcheck and v.Team ~= plr.Team) then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                    if not ohio.teamcheck then
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v.Character[ohio.silentaimpart]
                        end
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddToggle('silenw212', {
            Text = 'team check',
            Default = false,  
            
        
            Callback = function(first)
                ohio.teamcheck = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local HitPart = Target
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end
if game.GameId == 4888256398 then
    pcall(function()
        local VFX = nil; for i,v in next, getgc(true) do
            if typeof(v) == "table" and rawget(v, "RecoilCamera") then
                VFX = v
                break
            end
        end
        local pdlt = othergames.pdelta
        local pdeltatabbox = Tabs.Main:AddLeftTabbox("Project Delta")
        local aimtab = pdeltatabbox:AddTab("main")
        local function castgun()
            if not plr.Character or not workspace.CurrentCamera:FindFirstChild("ViewModel") then return (camera.ViewportSize / 2) end
            if not workspace.Camera:FindFirstChild("ViewModel"):FindFirstChild("AimPart") then return (camera.ViewportSize / 2) end
            local from = workspace.Camera.ViewModel:FindFirstChild("AimPart")
            local ray = Ray.new(from.CFrame.p, (from.CFrame.LookVector).Unit * 1000)
            local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {plr.Character, camera})
        
            if part then
                local result = camera:WorldToViewportPoint(position)
                return Vector2.new(result.X, result.Y)
            else
                return (camera.ViewportSize / 2)
            end
        end
        RunService.RenderStepped:Connect(function()if varsglobal.cursor.CustomPos then varsglobal.cursor.Position=castgun()end end)
        --[[
        aimtab:AddToggle('FUCKPDDDD', {
            Text = "FUCK UP THE SERVER FPS",
            Default = false,
        })
        aimtab:AddLabel("@w._.ruby._.w gave me it ^w^!! thx!!")
        aimtab:AddSlider('FUCKPDD!!!!', {
            Text = 'TABLE INCR',

            Default = 250,
            Min = 1,
            Max = 300,
            Rounding = 0,

            Compact = false,  
        })
        aimtab:AddSlider('FUCKPDD!!!!!!', {
            Text = 'TRIES',

            Default = 2,
            Min = 1,
            Max = 5,
            Rounding = 0,

            Compact = false,  
        })
        aimtab:AddSlider('FUCKPDD!!!!!!!!', {
            Text = 'DELAY',

            Default = 0.6,
            Min = 0.1,
            Max = 1,
            Rounding = 2,

            Compact = false,  
        })
        wrap(function()
            local function rahhh()
                local function getmaxvalue(val)
                    local mainvalueifonetable = 499999
                    if type(val) ~= "number" then
                        return nil
                    end
                    local calculateperfectval = (mainvalueifonetable/(val+2))
                    return calculateperfectval
                end
                local function bomb(tableincrease, tries)
                    local maintable = {}
                    local spammedtable = {}
                
                    table.insert(spammedtable, {})
                    z = spammedtable[1]
                
                    for i = 1, tableincrease do
                        local tableins = {}
                        table.insert(z, tableins)
                        z = tableins
                    end
                
                    local calculatemax = getmaxvalue(tableincrease)
                    local maximum
                
                    if calculatemax then
                        maximum = calculatemax
                    else
                        maximum = 1999999
                    end
                
                    for i = 1, maximum do
                        table.insert(maintable, spammedtable)
                    end
                
                    for i = 1, tries do
                        game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
                    end
                end
                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                bomb(Options["FUCKPDD!!!!"].Value, Options["FUCKPDD!!!!!!!!"].Value)
            end
            while true do
                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                if Options["FUCKPDDDD"].Value then rahhh() end
                wait(Options["FUCKPDD!!!!!!!!"].Value)
            end
        end)]]
        
        aimtab:AddToggle('sil1e2nw5522', {
            Text = 'crosshair -> aimpoint',
            Default = false,  
        
            Callback = function(first)
                varsglobal.cursor.CustomPos = first
            end
        })
        aimtab:AddToggle('sil1e2534nw5522', {
            Text = 'chat spam patch',
            Default = false,  
        
            Callback = function(first)
                varsglobal.spamsettings.chatchannelpatch = first and "Global" or "All"
                varsglobal.spamsettings.chatlenghtpatch = first and 120 or 200
            end
        })
        local function GetClosest()
            local Target = nil
            local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(pdlt.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[pdlt.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - (varsglobal.cursor.CustomPos and varsglobal.cursor.Position or Vector2.new(mouse.X, mouse.Y))).Magnitude
                    if (Distance < Closest and OnScreen) then
                        Closest = Distance
                        Target = v.Character[pdlt.silentaimpart]
                    end
                end
            end
            return Target
        end
        local function GetClosestNpc()
            local Target = nil
            local Closest = pdlt.fovcheck and pdlt.aimfov or math.huge
            for _,__no in pairs(game:GetService("Workspace").AiZones:GetChildren()) do
                for _, v in pairs(__no:GetChildren()) do
                    if (v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v:FindFirstChild(pdlt.silentaimpart).Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - (varsglobal.cursor.CustomPos and varsglobal.cursor.Position or Vector2.new(mouse.X, mouse.Y))).Magnitude
                        if (Distance < Closest and OnScreen) then
                            Closest = Distance
                            Target = v:FindFirstChild(pdlt.silentaimpart)
                        end
                    end
                end
            end
            return Target
        end
        pdlt.exitespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Size = 13
            local renderstepped
            renderstepped = RunService.RenderStepped:Connect(function()
                if Toggles["exitesppdlt"].Value and drop then
                    dropesp.Color = Options.exitespcolor.Value
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name.."\n["..math.floor((camera.CFrame.p - drop.Position).Magnitude * 0.28).."]"
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        aimtab:AddToggle('exitesppdlt', {
            Text = 'exit esp',
            Default = false,  
        
            Callback = function(first)
                if first then
                    wait(0.1)
                    for _,drop in next, workspace.NoCollision.ExitLocations:GetChildren() do 
                        pdlt.exitespfun(drop)
                    end
                    workspace.NoCollision.ExitLocations.ChildAdded:Connect(function(drop)
                        wait(0.1)
                        pdlt.exitespfun(drop)
                    end)
                end
            end
        }):AddColorPicker('exitespcolor', {
            Default = Color3.new(1, 1, 1),
            Title = 'esp color',
            Transparency = 0,
        })
            aimtab:AddToggle('sile2nw22', {
                Text = 'enable AA',
                Default = false,  

            
                Callback = function(first)
                    pdlt.AA = first
                end
            })
            aimtab:AddSlider('a1i3mfov', {
                Text = 'set angle',

                Default = 0,
                Min = -2,
                Max = 2,
                Rounding = 2,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.AAangle = State
            end)
            aimtab:AddToggle("no recoil", {Text = 'no recoil', Default = false}):OnChanged(function()
                local RecoilCamera = VFX.RecoilCamera;
                VFX.RecoilCamera = function(...)
                    if Toggles["no recoil"].Value then
                        return 0
                    else
                       return RecoilCamera(...)
                    end
                end
            end)
            aimtab:AddButton("remove foliage", function()
                for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
                    if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
                        v:Destroy()
                    end
                end
                workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
                    wait(1)
                    if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
                        inst:Destroy()
                    end
                end)
            end)
            aimtab:AddToggle('silenw22', {
                Text = 'silent aim',
                Default = false,  

            
                Callback = function(first)
                    pdlt.silentaim = first
                end
            })   
            aimtab:AddDropdown('SilentAimHitPartjb', {
                Values = {'HumanoidRootPart', 'Head'},
                Default = 1,
                Multi = false,
            
                Text = 'silent aim part',
                Tooltip = 'select part',
            
                Callback = function(Value)
                    pdlt.silentaimpart = Value
                end
            })
            aimtab:AddToggle('fovcheck', {
                Text = 'fov check',
                Default = false,  


                Callback = function(first)
                    pdlt.fovcheck = first
                end
            })
            aimtab:AddToggle('dra11wfov', {
                Text = 'draw fov',
                Default = false,  


                Callback = function(first)
                    pdlt.drawfov = first
                end
            }):AddColorPicker('fovc11olor', {
                Default = Color3.new(1, 1, 1),
                Title = 'fov color',
                Transparency = 0,
            
                Callback = function(Value)
                    pdlt.fovcolor = Value
                end
            })

            aimtab:AddToggle('fov11outline', {
                Text = 'draw fov outline',
                Default = false,  


                Callback = function(first)
                    pdlt.fovoutline = first
                end
            })
            aimtab:AddSlider('aimfov', {
                Text = 'aim fov',

                Default = 60,
                Min = 0,
                Max = 360,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.aimfov = State
            end)
            aimtab:AddSlider('a1imfov', {
                Text = 'p2c fov sides',

                Default = 100,
                Min = 0,
                Max = 100,
                Rounding = 0,

                Compact = false,  
            }):OnChanged(function(State)
                pdlt.p2cmode = State
            end)
            local Target
            local CircleOutline = Drawing.new("Circle")
            local CircleInline = Drawing.new("Circle")
            CircleInline.Transparency = 1
            CircleInline.Thickness = 1
            CircleInline.ZIndex = 2
            CircleOutline.Thickness = 3
            CircleOutline.Color = Color3.new()
            CircleOutline.ZIndex = 1
            RunService.RenderStepped:Connect(function()
                CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
                CircleInline.Radius = pdlt.aimfov
                CircleInline.Color = pdlt.fovcolor
                CircleInline.Visible = pdlt.drawfov
                CircleOutline.Radius = pdlt.aimfov
                CircleOutline.Visible = (pdlt.drawfov and pdlt.fovoutline)
                CircleOutline.NumSides = pdlt.p2cmode
                CircleInline.NumSides = pdlt.p2cmode
                if pdlt.silentaim then
                    Target = GetClosest()
                end
            end)
            local ExpectedArguments = {
                FindPartOnRayWithIgnoreList = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Ray", "table", "boolean", "boolean"
                    }
                },
                FindPartOnRayWithWhitelist = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Ray", "table", "boolean"
                    }
                },
                FindPartOnRay = {
                    ArgCountRequired = 2,
                    Args = {
                        "Instance", "Ray", "Instance", "boolean", "boolean"
                    }
                },
                Raycast = {
                    ArgCountRequired = 3,
                    Args = {
                        "Instance", "Vector3", "Vector3", "RaycastParams"
                    }
                }
            }
            local function getDirection(Origin, Position)
                return (Position - Origin).Unit * (Origin - Position).Magnitude
            end
            local function ValidateArguments(Args, RayMethod)
                local Matches = 0
                if #Args < RayMethod.ArgCountRequired then
                    return false
                end
                for Pos, Argument in next, Args do
                    if typeof(Argument) == RayMethod.Args[Pos] then
                        Matches = Matches + 1
                    end
                end
                return Matches >= RayMethod.ArgCountRequired
            end
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
                local Method = getnamecallmethod()
                local Arguments = {...}
                local self = Arguments[1]
                if pdlt.instabullet and not checkcaller() and Method == "GetAttribute" then
                    if Arguments[2] == "MuzzleVelocity" then
                        return 69420
                    end
                    if string.find(Arguments[1]:lower(), "recoil") and Toggles["no recoil"].Value then
                        return 0
                    end
                elseif pdlt.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                    if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                        local A_Origin = Arguments[2]
                        local HitPart = Target
                        if HitPart then
                            local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                            Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                            return oldNamecall(unpack(Arguments))
                        end
                    end
                elseif pdlt.AA and self.Name == "UpdateTilt" and not checkcaller() and Method == "FireServer" then
                    Arguments[2] = pdlt.AAangle
                    return oldNamecall(unpack(Arguments))
                end
                return oldNamecall(...)
            end))
    end)
end

-- #riot
if game.PlaceId == 6664138223 then
    pcall(function()
        local Riot = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6664138223).Name)
        local riot = {
            killaura = false,
            killdist = 0,
            cframemod = false,
            cframeup = 0,
            cframerl = 0,
        }
        local function riotkill()
            wrap(function()
                while riot.killaura do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                                pcall(function()
                                    local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                    if player.Character.Humanoid.Health > 0 and distance < riot.killdist then
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("Z",3,"the/???")
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("T",player.Character.Head,"lol  ")
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
        Riot:AddToggle('Kill Aura', {
            Text = 'killaura',
            Default = false,  
        
        
            Callback = function(first)
                riot.killaura = first
                riotkill()
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                riot.killaura = Value
                riotkill()
            end,
        })
        
        Riot:AddSlider('RiotKillAuraDistance', {
            Text = 'killaura distance',
        
            Default = 10,
            Min = 0,
            Max = 40,
            Rounding = 0,
        
            Compact = false,  
        })
        
        Options.RiotKillAuraDistance:OnChanged(function(State)
            riot.killdist = State
        end)
        
        Riot:AddToggle('CFrame Modify', {
            Text = 'neck breaker (replicated)',
            Default = false,  
            
        
            Callback = function(first)
                riot.cframemod = first
            end
        })
        
        Riot:AddSlider('CFrameUp', {
            Text = 'cframe x',
        
            Default = 0,
            Min = -10,
            Max = 10,
            Rounding = 1,
        
            Compact = false,  
        })
        
        Options.CFrameUp:OnChanged(function(State)
            riot.cframeup = State
        end)
        
        Riot:AddSlider('CFrameRL', {
            Text = 'cframe z',
        
            Default = 0,
            Min = -10,
            Max = 10,
            Rounding = 1,
        
            Compact = false,  
        })
        
        Options.CFrameRL:OnChanged(function(State)
            riot.CFrameRL = State
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "Look" and riot.cframemod then
                        args[2] = CFrame.new(0, 1, 0) * CFrame.Angles(riot.cframeup, -0.14767108857631683, riot.cframerl)
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end











-- #mab
if game.PlaceId == 6982272547 then
    pcall(function()
        local meleeandbloodz = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6982272547).Name)
        function othergames.meleeandblood.killaurafun()
            wrap(function()
                while othergames.meleeandblood.killaura do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                                    if player.Character.IsParry == true then return end
                                    pcall(function()
                                        local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                        if player.Character.Humanoid.Health >= 1 and distance < othergames.meleeandblood.killauradist then
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild("CharacterServer").punchHit:FireServer(player.Character.Humanoid, player.Character.HumanoidRootPart.Position)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end
        function othergames.meleeandblood.killaurafun1()
            wrap(function()
                while othergames.meleeandblood.killaura1 do
                    task.wait()
                    for _, player in pairs(plrs:GetPlayers()) do
                        if player.Name ~= plrs.LocalPlayer.Name then
                            if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                                    if player.Character.IsParry == true then return end
                                    pcall(function()
                                        local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                        if player.Character.Humanoid.Health >= 1 and distance < othergames.meleeandblood.killauradist then
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponServer.hit:FireServer(player.Character.Head, player.Character.Head.Position)
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end
        meleeandbloodz:AddToggle('AntiRagdoll', {
            Text = 'anti ragdoll',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.antiragdoll = first
            end
        })
        
        meleeandbloodz:AddToggle('PingSpoof', {
            Text = 'pingspoof',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.pingspoof = first
            end
        })
        
        meleeandbloodz:AddToggle('GodMode', {
            Text = 'godmode',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.godmode = first
            end
        })
        
        meleeandbloodz:AddToggle('PunchAura', {
            Text = 'punchaura',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.killaura = first
                othergames.meleeandblood.killaurafun()
                
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                othergames.meleeandblood.killaura = Value
                othergames.meleeandblood.killaurafun()
                
            end
        })
        
        meleeandbloodz:AddToggle('WeaponAura', {
            Text = 'weapon aura',
            Default = false,  
            
        
            Callback = function(first)
                othergames.meleeandblood.killaura1 = first
                othergames.meleeandblood.killaurafun1()
                
            end
        }):AddKeyPicker('KeyPicker', {
        
            Default = 'None',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'keybind',
            NoUI = false,
        
            Callback = function(Value)
                othergames.meleeandblood.killaura1 = Value
                othergames.meleeandblood.killaurafun1()
                
            end
        })
        
        meleeandbloodz:AddSlider('KillAuraDist2', {
            Text = 'killaura distance',
        
            Default = 10,
            Min = 0,
            Max = 40,
            Rounding = 0,
        
            Compact = false,  
        }):OnChanged(function(State)
            othergames.meleeandblood.killauradist = State
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "ragdoll" and othergames.meleeandblood.antiragdoll then
                        return
                    elseif tostring(self) == "GetPing" and othergames.meleeandblood.pingspoof then
                        wrap(function()
                            task.wait(0.1)
                            return self.FireServer(self, unpack(args))
                        end)
                    elseif tostring(self) == "getweapon" and othergames.meleeandblood.godmode then
                        return
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end






-- #ohio
if game.PlaceId == 7239319209 then
    pcall(function()
        local Ohio = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(7239319209).Name)
        local ohio = {
            onepunch = false,
            moneyaura = false,
            moneyauraexp = false,
            antimod = false,
            antimodoldpos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position,
            atmesp = false,
            cashregisteresp = false,
            drawfov = false,
            aimfov = 0,
            silentaim = false,
            silentaimpart = "HumanoidRootPart",
            fovcheck = false,
            fovcolor = Color3.new(1,1,1),
            fovoutline = false,
            safeesp = false,
            itempick = false,
        }
        ohio.safeespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Color = Color3.fromRGB(255,255,255)
            dropesp.Size = 13
            local renderstepped, path = nil, workspace.Game.Entities
            renderstepped = RunService.RenderStepped:Connect(function()
                if ohio.safeesp and drop and path:FindFirstChild(drop.Name):FindFirstChild(drop.Name) and drop:FindFirstChild("Safe") then
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Safe.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        ohio.atmespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Color = Color3.fromRGB(255,255,255)
            dropesp.Size = 13
            local renderstepped
            renderstepped = RunService.RenderStepped:Connect(function()
                if ohio.atmesp and drop and game:GetService("Workspace").Game.Props.ATM:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        ohio.cashregespfun = function(drop)
            local dropesp = Drawing.new("Text")
            dropesp.Visible = false
            dropesp.Center = true
            dropesp.Outline = true
            dropesp.Font = 2
            dropesp.Color = Color3.fromRGB(255,255,255)
            dropesp.Size = 13
            local renderstepped
            renderstepped = RunService.RenderStepped:Connect(function()
                if ohio.cashregisteresp and drop and game:GetService("Workspace").Game.Props.CashRegister:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
                    local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
                    if drop_onscreen then
                        dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                        dropesp.Text = drop.Name
                        dropesp.Visible = true
                    else 
                        dropesp.Visible = false
                    end
                else
                    dropesp.Visible = false
                    dropesp:Remove()
                    renderstepped:Disconnect()
                end
            end)
        end
        function ohio.moneyaurafun()
            wrap(function()
                while ohio.moneyaura do
                    for _, v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
                        if plr.Character and plr.Character.HumanoidRootPart and v:FindFirstChildOfClass("ClickDetector") and (v:FindFirstChildOfClass("Part").Position - plr.Character.HumanoidRootPart.Position).magnitude <= 40 then
                            fireclickdetector(v:FindFirstChildOfClass("ClickDetector"), 0)
                        end
                    end
                    wait()
                end
            end)
        end
        function ohio.itempickfun()
            wrap(function()
                while ohio.itempick do
                    for _, v in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
                        for  _, v1 in pairs(v:GetChildren()) do
                            if plr.Character and plr.Character.HumanoidRootPart and v1:FindFirstChildOfClass("ClickDetector") and (v1.Position - plr.Character.HumanoidRootPart.Position).magnitude <= 40 then
                                fireclickdetector(v1:FindFirstChildOfClass("ClickDetector"), 0)
                            end
                        end
                    end
                    wait()
                end
            end)
        end
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < Closest and OnScreen) then
                        Closest = Distance
                        Target = v.Character[ohio.silentaimpart]
                    end
                end
            end
            return Target
        end
        Ohio:AddToggle('Super Punch', {
            Text = 'super punch (doesnt work?)',
            Default = false,  
            
        
            Callback = function(first)
                ohio.onepunch = first
            end
        })
        
        Ohio:AddToggle('Money Aura', {
            Text = 'money aura',
            Default = false,  
            
        
            Callback = function(first)
                ohio.moneyaura = first
                ohio.moneyaurafun()
            end
        })

        Ohio:AddToggle('item Aura', {
            Text = 'item aura',
            Default = false,  
            
        
            Callback = function(first)
                ohio.itempick = first
                ohio.itempickfun()
            end
        })
        
        Ohio:AddToggle('Cash Register Esp', {
            Text = 'CashRegister esp',
            Default = false,  
            
        
            Callback = function(first)
                ohio.cashregisteresp = first
                wait(0.1)
                for _,drop in next, game:GetService("Workspace").Game.Props.CashRegister:GetChildren() do 
                    if drop:FindFirstChild("Main") then
                        ohio.cashregespfun(drop)
                    end
                end
                game:GetService("Workspace").Game.Props.CashRegister.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Main") then
                        ohio.cashregespfun(drop)
                    end
                end)
            end
        })
        
        Ohio:AddToggle('ATM Esp', {
            Text = 'ATM esp',
            Default = false,  
            
        
            Callback = function(first)
                ohio.atmesp = first
                wait(0.1)
                for _,drop in next, game:GetService("Workspace").Game.Props.ATM:GetChildren() do 
                    if drop:FindFirstChild("Main") then
                        ohio.atmespfun(drop)
                    end
                end
                game:GetService("Workspace").Game.Props.ATM.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Main") then
                        ohio.atmespfun(drop)
                    end
                end)
            end
        })

        Ohio:AddToggle('safe Esp', {
            Text = 'safe esp',
            Default = false,  
            
        
            Callback = function(first)
                ohio.safeesp = first
                wait(0.1)
                for _,maia in next, workspace.Game.Entities:GetChildren() do 
                    for _,drop in next, maia:GetChildren() do 
                        if drop.Name:find("Safe") and drop:FindFirstChild("Safe") then
                            ohio.safeespfun(drop)
                        end
                    end
                end
                workspace.Game.Entities.SmallSafe.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Safe") then
                        ohio.safeespfun(drop)
                    end
                end)
                workspace.Game.Entities.MediumSafe.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Safe") then
                        ohio.safeespfun(drop)
                    end
                end)
                workspace.Game.Entities.LargeSafe.ChildAdded:Connect(function(drop)
                    wait(0.1)
                    if drop:FindFirstChild("Safe") then
                        ohio.safeespfun(drop)
                    end
                end)
                
            end
        })
        
        Ohio:AddToggle('AntiMod', {
            Text = 'antimod (DONT TURN OFF!)',
            Default = false,  
            
        
            Callback = function(first)
                ohio.antimod = first
            end
        })
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local CircleInline = Drawing.new("Circle")
        local CircleOutline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        ohio.wallnigger = false
        Ohio:AddToggle('wallnigger', {
            Text = 'wallnigger aim',
            Default = false,
            Callback = function(first)
                ohio.wallnigger = first
            end
        })

        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                
                    local HitPart = Target
                    if HitPart then
                        Arguments[3] = getDirection(A_Origin, HitPart.Position)
                        if ohio.wallnigger then
                            local raycastParams = Arguments[4]
                            local FilterDescendantsInstances = {HitPart.Parent}
                            local FilterType = Enum.RaycastFilterType.Include
                            local IgnoreWater = raycastParams.IgnoreWater
                            local CollisionGroup = raycastParams.CollisionGroup
                            Arguments[4] = RaycastParams.new(
                                {
                                    FilterDescendantsInstances = FilterDescendantsInstances,
                                    FilterType = FilterType,
                                    IgnoreWater = IgnoreWater,
                                    CollisionGroup = CollisionGroup
                                }
                            )
                        end
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if Arguments[1] == "player" and ohio.onepunch then
                        Arguments[2][1] = "meleemegapunch"
                        return self.FireServer(self, unpack(Arguments))
                    elseif Arguments[1] == "meleepunch" and ohio.onepunch then
                        Arguments[1] = "meleemegapunch"
                        return self.FireServer(self, unpack(Arguments))
                    elseif tostring(self) == "RemoteEvent" and ohio.antimod then
                        Arguments[2] = ohio.antimodoldpos
                        return self.FireServer(self, unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
        
    end)
end
-- #toh
if game.PlaceId == 1962086868 then
    pcall(function()
        local TowerOfHell = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(1962086868).Name)
        othergames.toh.bypassac = function()
            local mt = getrawmetatable(game)
            local old = mt.__namecall
            setreadonly(mt, false)
            mt.__namecall = newcclosure(function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                if method == "Kick" then
                    return
                end
                return old(self, ...)
            end)
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2:Remove()
                game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript:Remove()
            end)
        end
        othergames.toh.tptoend = function()
            plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes.Finish.CFrame
        end
        TowerOfHell:AddButton('anticheat bypass', function()
            othergames.toh.bypassac()
            Library:Notify("Anticheat Bypassed!", 15)
            TowerOfHell:AddButton('TP to end', function()
                othergames.toh.tptoend()
            end)
            TowerOfHell:AddButton('godmode', function()
                local function f()
                    game.Players.LocalPlayer.Character.KillScript:Destroy()
                end
                hookfunction(f, function()
                    game.Players.LocalPlayer.Character.KillScript:Destroy()
                end)
                f()
            end)
            TowerOfHell:AddButton('ultra jump', function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 150
            end)
            TowerOfHell:AddButton('ultra speed', function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100
            end)
        end)
    end)
end






-- #mfleet
if game.PlaceId == 11318993628 then
    pcall(function()
        local MercFleet = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(11318993628).Name)
        othergames.mercfl = {
            salo = false,
            noenvdeath = false,
            god = false
        }
        local function getPlayerClosestToMouse()
            local target = nil
            local maxDist = 1000
            for _,v in pairs(plrs:GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name and (v.Character.Main.Spawned ~= nil and tostring(v.Character.Main.Spawned) ~= "0") then
                        local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                        if dist < maxDist and vis then
                            target = v
                            maxDist = dist
                        end
                    end
                end
            end
            return target
        end
        MercFleet:AddToggle('SaloMerc', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                othergames.mercfl.salo = first
            end
        })
        MercFleet:AddToggle('NoEnvDeathMerc', {
            Text = 'disable most killparts',
            Default = false,  
            
        
            Callback = function(first)
                othergames.mercfl.noenvdeath = first
            end
        })
        MercFleet:AddButton('kill all primary', function() 
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                for i=1,10 do
                    coroutine.resume(coroutine.create(function()
                        local args = {
                            [1] = "Primary",
                            [2] = {
                                [1] = {
                                    ["Normal"] = Vector3.new(0, 0, 0),
                                    ["Damage"] = 0,
                                    ["Part"] = v.Character.Head,
                                    ["Position"] = Vector3.new(v.Character.Head.CFrame.Position)
                                }
                            },
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage").Remotes.FireRemote:FireServer(unpack(args))
                    end))
                end
            end
        end)
        MercFleet:AddButton('kill all secondary', function() 
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                for i=1,10 do
                    coroutine.resume(coroutine.create(function()
                        local args = {
                            [1] = "Secondary",
                            [2] = {
                                [1] = {
                                    ["Normal"] = Vector3.new(0, 0, 0),
                                    ["Damage"] = 0,
                                    ["Part"] = v.Character.Head,
                                    ["Position"] = Vector3.new(v.Character.Head.CFrame.Position)
                                }
                            },
                            [3] = 1
                        }
                        game:GetService("ReplicatedStorage").Remotes.FireRemote:FireServer(unpack(args))
                    end))
                end
            end
        end)
        local gmt = getrawmetatable(game)
        setreadonly(gmt, false)
        local oldNamecall = gmt.__namecall
        gmt.__namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if not checkcaller() then
                if tostring(method) == "FireServer" then
                    if tostring(self) == "FireRemote" and othergames.mercfl.salo then
                        if getPlayerClosestToMouse() ~= nil then
                            if args[2][2] ~= nil then
                                for i, v in pairs(args[2]) do
                                    args[2][i]["Part"] = getPlayerClosestToMouse().Character.Head
                                    args[2][i]["Position"] = getPlayerClosestToMouse().Character.Head.CFrame.Position
                                end
                            else
                                args[2][1]["Part"] = getPlayerClosestToMouse().Character.Head
                                args[2][1]["Position"] = getPlayerClosestToMouse().Character.Head.CFrame.Position
                            end
                        end
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "ManualReset" and othergames.mercfl.noenvdeath then
                        if args[1] ~= "Reset" then
                            return
                        end
                        return self.FireServer(self, unpack(args))
                    elseif tostring(self) == "Spawn" and othergames.mercfl.god then
                        args[1] = "Wyvern"
                        return self.FireServer(self, unpack(args))
                    end
                end
            end
            return oldNamecall(self, ...)
        end)
        
    end)
end

if game.PlaceId == 8122028632 or game.PlaceId == 7791873535 or game.PlaceId == 12673840215 then
    pcall(function()
        local ohio = othergames.entrentch
        local Ohio = Tabs.Main:AddLeftGroupbox("REALISTIC HOOD TRILOGY")
        local function GetClosest()
            local Target = nil
            local Closest = ohio.fovcheck and ohio.aimfov or math.huge
            for _,v in pairs(plrs:GetPlayers()) do
                if (v.Character and v ~= plr and v.Character:FindFirstChild(ohio.silentaimpart)) and v.Character.Parent == workspace then
                    local Position, OnScreen = camera:WorldToScreenPoint(v.Character[ohio.silentaimpart].Position)
                    local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if (Distance < Closest and OnScreen) then
                        Closest = Distance
                        Target = v.Character[ohio.silentaimpart]
                    end
                end
            end
            return Target
        end
        local function IsTargetVisible(target)
            if not plr.Character then return false end
            if not target then return false end
            if not camera:FindFirstChildOfClass("Model") then return false end
            local ray = Ray.new(plr.Character.Head.Position, (target.Position - plr.Character.Head.Position).Unit * 300)
            local ignored = {plr.Character, camera}
            local part, _ = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray, ignored, false, true)
            if part then
                local humanoid = part.Parent:FindFirstChildOfClass("Humanoid")
                if not humanoid and part.Parent.Parent then
                    humanoid = part.Parent.Parent:FindFirstChildOfClass("Humanoid")
                end
                if humanoid and target and humanoid.Parent == target.Parent then
                    return true
                end
            end
        end
        Ohio:AddToggle('silen4w22', {
            Text = 'no shoot cooldown',
            Default = false, 
        })
        Ohio:AddToggle('sile5n4w22', {
            Text = 'autoshoot',
            Default = false,  
        })
        Ohio:AddToggle('silenw22', {
            Text = 'silent aim',
            Default = false,  
            
        
            Callback = function(first)
                ohio.silentaim = first
            end
        })
        Ohio:AddDropdown('SilentAimHitPartjb', {
            Values = {'HumanoidRootPart', 'Head'},
            Default = 1,
            Multi = false,
        
            Text = 'silent aim part',
            Tooltip = 'select part',
        
            Callback = function(Value)
                ohio.silentaimpart = Value
            end
        })
        Ohio:AddToggle('fovcheck', {
            Text = 'fov check',
            Default = false,  


            Callback = function(first)
                ohio.fovcheck = first
            end
        })
        Ohio:AddToggle('dra11wfov', {
            Text = 'draw fov',
            Default = false,  


            Callback = function(first)
                ohio.drawfov = first
            end
        }):AddColorPicker('fovc11olor', {
            Default = Color3.new(1, 1, 1),
            Title = 'fov color',
            Transparency = 0,
        
            Callback = function(Value)
                ohio.fovcolor = Value
            end
        })

        Ohio:AddToggle('fov11outline', {
            Text = 'draw fov outline',
            Default = false,  


            Callback = function(first)
                ohio.fovoutline = first
            end
        })
        local Target
        local IsVisible
        local CircleOutline = Drawing.new("Circle")
        local CircleInline = Drawing.new("Circle")
        CircleInline.Transparency = 1
        CircleInline.Thickness = 1
        CircleInline.ZIndex = 2
        CircleOutline.Thickness = 3
        CircleOutline.Color = Color3.new()
        CircleOutline.ZIndex = 1
        RunService.RenderStepped:Connect(function()
            CircleOutline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Position = Vector2.new(mouse.X, mouse.Y + 36)
            CircleInline.Radius = ohio.aimfov
            CircleInline.Color = ohio.fovcolor
            CircleInline.Visible = ohio.drawfov
            CircleOutline.Radius = ohio.aimfov
            CircleOutline.Visible = (ohio.drawfov and ohio.fovoutline)
            Target = GetClosest()
        end)
        while task.wait() do
            IsVisible = IsTargetVisible(Target)
            if IsVisible and Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and Toggles['sile5n4w22'].Value then
                mouse1click()
                task.wait(0.1)
            end
        end
        Ohio:AddSlider('aimfov', {
            Text = 'aim fov',

            Default = 60,
            Min = 0,
            Max = 360,
            Rounding = 0,

            Compact = false,  
        }):OnChanged(function(State)
            ohio.aimfov = State
        end)
        local ExpectedArguments = {
            FindPartOnRayWithIgnoreList = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean", "boolean"
                }
            },
            FindPartOnRayWithWhitelist = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Ray", "table", "boolean"
                }
            },
            FindPartOnRay = {
                ArgCountRequired = 2,
                Args = {
                    "Instance", "Ray", "Instance", "boolean", "boolean"
                }
            },
            Raycast = {
                ArgCountRequired = 3,
                Args = {
                    "Instance", "Vector3", "Vector3", "RaycastParams"
                }
            }
        }
        local function getDirection(Origin, Position)
            return (Position - Origin).Unit * (Origin - Position).Magnitude
        end
        local function ValidateArguments(Args, RayMethod)
            local Matches = 0
            if #Args < RayMethod.ArgCountRequired then
                return false
            end
            for Pos, Argument in next, Args do
                if typeof(Argument) == RayMethod.Args[Pos] then
                    Matches = Matches + 1
                end
            end
            return Matches >= RayMethod.ArgCountRequired
        end
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            if ohio.silentaim and self == workspace and not checkcaller() and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local HitPart = Target
                    if HitPart then
                        local LOL1, LOL2, LOL3 = HitPart.Position.X, HitPart.Position.Y, HitPart.Position.Z
                        Arguments[3] = getDirection(A_Origin, Vector3.new(LOL1 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 10000000), LOL2 + (math.random(1,9999) / 10000000 - math.random(1,9999) / 100000000), LOL3 + (math.random(1,9999) / 100000000 - math.random(1,9999) / 100000000)))
                        return oldNamecall(unpack(Arguments))
                    end
                end
            end
            return oldNamecall(...)
        end))
    end)
end

if isusingfancyloader then
    print(" [ 5/5 ] loaded games\n")
end

local IsDevelopmentBranch,NotificationTime = false,5
local Branch = IsDevelopmentBranch and "development" or "main"
local Source = "https://raw.githubusercontent.com/AlexR32/Parvus/" .. Branch .. "/"
loadstring(game:HttpGet(Source .. "Loader.lua"),"Loader")(Branch,NotificationTime)

