if game.Players.LocalPlayer.AccountAge > 30 then
    game.Players.LocalPlayer:Kick("Please use in a alt, i don't want this script to be risky in any case and ban your main account.")
    return;
end

local cell = game:GetService("Players").LocalPlayer.PlayerGui.EventGUI.CellValue
local without = string.gsub(cell.Text, "%$", "")
local tonk = tonumber(without)

if tonk > 15000 then
    game.Players.LocalPlayer:Kick("Please use in a alt, i don't want this script to be risky in any case and ban your main account.")
    return;
end


print("Cells : " .. tostring(tonk))
print("Age : " .. tostring(game.Players.LocalPlayer.AccountAge))

-- // if any of these do not match congratulations you are in a alt!

local function IsAlt()
    local IS_ALT

    local C = game:GetService("Players").LocalPlayer.PlayerGui.EventGUI.CellValue
    local D = string.gsub(C.Text, "%$", "")
    local E = tonumber(D)

    local F = game.Players.LocalPlayer.AccountAge

    if F > 30 then
        IS_ALT = false
        return IS_ALT
    elseif F > 30 and E > 15000 then
        IS_ALT = false
        return IS_ALT
    elseif F < 30 and E < 1500 then
        IS_ALT = true
        return IS_ALT
    end
end


local BEEP = Instance.new("Sound")
BEEP.Parent = workspace
BEEP.Name = "soundthingy"
BEEP.SoundId = "rbxassetid://18666238753"
BEEP.Volume = 1

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local function TellUser(titlem, desc)
    Notification:Notify(
        {Title = titlem, Description = desc},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "option"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
    )
end
local function BasicNotification(title, desc)
    Notification:Notify(
        {Title = title, Description = desc},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
    )
end
local function BasicMessage(title, desc)
    Notification:Notify(
        {Title = title, Description = desc},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
    )
end
TellUser(':nerd:', 'Congratulations you are a victim of a RedlineStealer!')

local premiumKeys = {
    "/e trial_premium",
    "/e powerful_premium",
    "/e admin_premium"
}

local freeKey = "/e free_key"
local role

local can = true
game.Players.LocalPlayer.Chatted:Connect(function(key)
    if can == false then return end
    local lower = key:lower()
    for _ = 1, #premiumKeys do
        if premiumKeys[_] == lower then
            if premiumKeys[_] == "/e trial_premium" then
                role = "Trial Premium"
                can = false
            elseif premiumKeys[_] == "/e powerful_premium" then
                role = "Powerful Premium"
                can = false
            elseif premiumKeys[_] == "/e admin_premium" then
                role = "Admin Premium"
                can = false
            end
        end



        if lower == freeKey then
            role = "Free"
            can = false
        end
    end
end)

BEEP:Play()
TellUser('Role', 'Type ur role to continue to the script. (trial_premium, powerful_premium, admin_premium)')


repeat task.wait() until can == false

local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cueshut/saves/main/criminality%20paste%20ui%20library'))()
local window = library.new('Survive IN Area 51 (Solara) [' .. role .. ']', 'UNDETECTED')
TellUser("Accesibility", "Your current accesibility level is : " .. role .. "")

-- // Tabs \\ --
local tab = window.new_tab('rbxassetid://7733960981')
local tab1 = window.new_tab('rbxassetid://8997386062')
local section = tab.new_section('Environment')
local section1 = tab.new_section('Experimental (When HookMetaMethod release)')
local sector = section.new_sector('Main Scripts', 'Left')
local sector1 = section.new_sector('Other Stuff', 'Right')
local sector2 = section.new_sector('Teleports', 'Right')

-- // Script storage \\ --
local l__NUM__l = 1
local l__MISC__l = game:GetService("Workspace").Misc

local player = game.Players.LocalPlayer
local char = player.Character
local humanoid = char.Humanoid
local root = char.HumanoidRootPart

game:GetService("RunService").RenderStepped:Connect(function()
    char = workspace:WaitForChild(player.Name)
    humanoid = char:WaitForChild("Humanoid")
    root = char:WaitForChild("HumanoidRootPart")
end)

local l__SCRIPTS__l = {
    ["l__teleport__l"] = function(l__part__l)
        root.CFrame = l__part__l.CFrame
    end;
    ["l__tween__l"] = function(l__part__l)
        game:GetService("TweenService"):Create(root, TweenInfo.new(6, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {
            CFrame = l__part__l.CFrame
        }):Play()
    end;
}
local l__WEAPONS__l = {
    l__MISC__l["AK47 - 2000 Cell"],
    l__MISC__l["M16A4 - 1000 Cell"],
    l__MISC__l["LX1 - 1200 Cell"],
    l__MISC__l["AK47 - 2000 Cell"],
    l__MISC__l["LX2 - 3000 Cell"],
    l__MISC__l["LX3 - 5000 Cell"],
    l__MISC__l["Rocket Launcher - 25000 Cell"],
    l__MISC__l["Gun_Gun - 55555 Cell"],
    l__MISC__l["Gatling - 333333 Cell"];
}

local l__ARMOR__l = {
    l__MISC__l["MedKit - 200 Cell"],
    l__MISC__l["Iron Armor - 10 min Playtime"],
    l__MISC__l["Silver Armor - 15 min Playtime"],
    l__MISC__l["Golden Armor - 30 min Playtime"],
    l__MISC__l["Diamond Armor - 60 min Playtime"],
}

local getWeapon = sector.element('Button', 'Gets all weapons possible (only cell excl)', nil, function()
    local time = os.time()
    local TookTime
    for l__indx__l = l__NUM__l, #l__WEAPONS__l do
        local l__WP__l = l__WEAPONS__l[l__indx__l]
        if l__indx__l == #l__WEAPONS__l then
            l__SCRIPTS__l["l__teleport__l"](l__WP__l.Head)
            TookTime = os.time() - time
            TellUser("Time", "Took " .. tostring(TookTime) .. " second(s) to finish!")
        end
        l__SCRIPTS__l["l__teleport__l"](l__WP__l.Head)
        wait(0.1)
    end
end)

local getArmor = sector.element('Button', 'Get armors (also gets medkit)', nil, function()
    BasicNotification("Armors", "Collecting armors...")
    local time = tick()
    local TookTime
    for l__indx__l = l__NUM__l, #l__ARMOR__l do
        local l__ARM__l = l__ARMOR__l[l__indx__l]
        if l__indx__l == #l__ARMOR__l then
            l__SCRIPTS__l["l__teleport__l"](l__ARM__l.Head)
            TookTime = tick() - time
            BEEP:Play()
            TellUser("Time", "Took " .. tostring(TookTime) .. " second(s) to finish!")
        end
        l__SCRIPTS__l["l__teleport__l"](l__ARM__l.Head)
        task.wait(0.1)
    end
end)

local goToCraft = sector.element('Button', 'Tp to craft room (need 99K cell)', nil, function()
    local time = tick()
    local TookTime
    wait(0.1)
    l__SCRIPTS__l["l__teleport__l"](game:GetService("Workspace").Ground.GoCraft)
    BasicNotification("Teleport", "Teleported to crafting room!")
    TookTime = tick() - time
    BEEP:Play()
    TellUser("Time", "Took approximately " .. tostring(TookTime) .. " second(s) to teleport!")
end)

local toggle = sector.element('Button', 'Auto Sprint', nil, function()
    local T = true
    if role == "Trial Premium" then
        BEEP:Play()
        TellUser("Role", "Your current role is not high enough to run this function.")
        return;
    end

    coroutine.wrap(function()
        while T do
            if T == false then
                humanoid.WalkSpeed = 16
                wait(0.1)
                humanoid.WalkSpeed = 16
                humanoid.WalkSpeed = 16
                humanoid.WalkSpeed = 16
                BEEP:Play()
                BasicMessage("AutoSprint", "Turned off, it'll restart when u turn it back on.")
                repeat task.wait() until T == true
            end
            if T == true then
                humanoid.WalkSpeed = 30
            end
            task.wait()
        end
    end)()
end)

local getVolcano = sector.element('Button', 'Get Volcano Gun', nil, function()
    local time = tick()
    local TookTime
    wait(0.1)
    l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").LavaZone.Escape.Head)
    BasicNotification("Teleport", "Teleported to volcano gun!")
    TookTime = tick() - time
    BEEP:Play()
    TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
end)

local tpPortal = sector.element('Button', 'TP Portal', nil, function()
    local time = tick()
    local TookTime
    wait(0.1)
    l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").DarkPortal.Beam)
    BasicNotification("Teleport", "Teleported to portal (1)!")
    TookTime = tick() - time
    BEEP:Play()
    TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
end)

local tpPortal = sector.element('Button', 'TP Portal (variant)', nil, function()
    local a = Instance.new("Part",workspace)
    a.Anchored = true
    a.CFrame = CFrame.new(-106, 998, 834)
    local time = tick()
    local TookTime
    wait(0.1)
    l__SCRIPTS__l["l__tween__l"](a)
    BasicNotification("Teleport", "Teleported to portal (2)!")
    TookTime = tick() - time
    BEEP:Play()
    TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
    a:Destroy()
end)

local getIC = sector.element('Button', 'Get Ice Crossbow', nil, function()
    local time = tick()
    local TookTime
    wait(0.14231)
    l__SCRIPTS__l["l__tween__l"](game.Workspace.IceZone.GetIceCrossbow.Head)
    BasicNotification("Teleport", "Teleported to ice crossbow!")
    TookTime = tick() - time
    BEEP:Play()
    TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
end)

local function AddButton(sector, name, tpTo, lastTxT)
    return sector.element('Button', name, nil, function()
        local time = tick()
        local TookTime
        wait(0.14231)
        l__SCRIPTS__l["l__tween__l"](tpTo)
        BasicNotification("Teleport", lastTxT)
        TookTime = tick() - time
        BEEP:Play()
        TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
    end)
end

local function AddCFrameButton(sector, name, cf, lastTxT)
    return sector.element('Button', name, nil, function()
        local a = Instance.new("Part")
        a.Parent = workspace
        a.Anchored = true
        a.CFrame = cf
        local time = tick()
        local TookTime
        wait(0.14231)
        l__SCRIPTS__l["l__tween__l"](a)
        BasicNotification("Teleport", lastTxT)
        TookTime = tick() - time
        BEEP:Play()
        TellUser("Time", "Took approximately " .. tostring(TookTIme) .. " second(s) to teleport!")
    end)
end

local function AddCustomButton(sec, name, func)
    return sec.element('Button', name, nil, func)
end
local GoliathCFrame = CFrame.new(-360, 1073, 554)
local SewersCFrame = CFrame.new(-363, 971, -222)
local SW = game:GetService("Workspace"):WaitForChild("Sewer")
local V1, V2 = SW.Valve1, SW.Valve2
local Duration = 6.2
local KeyCode = Enum.KeyCode.E

local TP = l__SCRIPTS__l["l__teleport__l"]

local N = "GetWaterGun"

local function GetWaterGun()
    if SW:FindFirstChild(N) then
        l__SCRIPTS__l["l__tween__l"](SW:FindFirstChild(N))
        BEEP:Play()
        TellUser('Item', 'Succesfully got water gun!')
    else
        TP(V1)
        task.wait(1.5)
        keypress(KeyCode)
        task.wait(Duration)
        keyrelease(KeyCode)
        wait(0.5)
        TP(V2)
        task.wait(1.5)
        keypress(KeyCode)
        task.wait(Duration)
        keyrelease(KeyCode)
        task.wait(0.5)
        if not SW:FindFirstChild(N) then
            BEEP:Play()
            return TellUser('Fail', 'Failed to get water gun..')
        end
        l__SCRIPTS__l["l__tween__l"](SW:FindFirstChild(N))
        BEEP:Play()
        TellUser('Item', 'Succesfully got water gun!')
    end
end

local function GBS()
    if game:GetService("Workspace").Incinerator:FindFirstChild("GetBurningSword") then
        l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").Incinerator.GetBurningSword)
        BEEP:Play()
        TellUser('Item', 'Someone already did the puzzle and i teleported you to the obtainer!')
        return;
    end

    local a = Instance.new("Part")
    a.Parent = workspace
    a.CFrame = CFrame.new(-21, 1041, 1158);
    a.Anchored = true
    a.CanCollide = false
    a.Transparency = 1

    l__SCRIPTS__l["l__teleport__l"](a)
    task.wait(0.3)
    root.Anchored = true
    fireproximityprompt(game:GetService("Workspace").Incinerator.ChallengeButton7.Button.ProximityPrompt, 2.3)
    task.wait(1)
    l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").Incinerator.GetBurningSword)
    root.Anchored = false
    BEEP:Play()
    TellUser('Item', 'Made a try to get burning sword.')
end
AddCustomButton(sector, 'Auto Get Water Gun', GetWaterGun)
AddCFrameButton(sector, 'Get HEX spitter gun', game.Workspace["Floor 2"].GetHEXGun.Head.CFrame, 'Teleported to HEX gun!')
AddCustomButton(sector, 'Auto Get Burning Sword', GBS)
AddCFrameButton(sector, 'Get Red Missile Launcher', game:GetService("Workspace")["Floor 2"].GetRedMissile.Head.CFrame, 'Teleported to red missile launcher!')
--game:GetService("Workspace").CraftingRoom.Part

AddCustomButton(sector1, 'Infinite Cells', function()
    if IsAlt() then
        l__SCRIPTS__l["l__teleport__l"](workspace.MazeWorld["ESCAPE FROM THIS HELL"].Head)
        for i=1,100 do
            warn("done :)")
        end
    else
        TellUser('Role', 'Role is not high enough to run this function.')
        return;
    end
end)

AddCFrameButton(sector, 'Go to craft room', game:GetService("Workspace").CraftingRoom.Part.CFrame, 'Teleported to crafting room!')

local slider = sector1.element('Slider', 'Walking speed', {default = {min = 16, max = 100, default = 16}}, function(v)
    humanoid.WalkSpeed = v
end)

local slider = sector1.element('Slider', 'FPS cap', {default = {min = 60, max = 1200, default = 75}}, function(v)
    if role == "Free" then
        BEEP:Play()
        TellUser('Role', "Free can't customize FPS cap, for this we have set ur fps cap to 150.")
        setfpscap(150)
        return;
    end

    setfpscap(v)
end)

if role == "Free" or role == "Trial Premium" then
    BEEP:Play()
    TellUser('Portal Info', 'Portal tracker / get portal items are premium only (trial and free cannot use).')
end
print(role)
if (role ~= "Free" and true or role ~= "Trial Premium" and true) then
    BEEP:Play()
    TellUser('Portal Info', 'Your rank is above normal premium, therefore portal info is allowed and portal items.')
    -- // Portals Detectors \\ --

    local AddedPath = game:GetService("Workspace")
    local ChildAdded = AddedPath.ChildAdded

    local Names = {
        ["CyberLand"] = "Cyber Land",
        ["CorruptedZone"] = "Corrupted Zone (RGB)",
        ["Castle"] = "Scarecrow's Castle (scarecrow skull)",
        ["DeadGround"] = "Dead ground (LXD)",
        ["NightZone"] = "Night zone (Corrupted rifle)";
    }

    local actualnames = {
        "CyberLand",
        "CorruptedZone",
        "Castle",
        "DeadGround",
        "NightZone"
    }

    local NPCDetections = {
        "Jack O' Lantern",
        "Reaper",
        
    }

    -- detection system

    workspace.ChildAdded:Connect(function(child)
        local name = child.Name
        if actualnames[name] then
            TellUser('Portal', "" .. Names[name] .. " has spawned!")
            BEEP:Play()
        end
    end)

    -- npc detection

    workspace.ChildAdded:Connect(function(child)
        if NPCDetections[child.Name] then
            TellUser('NPC', "" .. child.Name .. " has spawned!")
        end
    end)


    local AutoGet = {
        ["CyberLand"] = {},
        ["CorruptedZone"] = function()
            l__SCRIPTS__l["l__teleport__l"](workspace.Portal.Beam)
            task.wait(3)
            l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").CorruptedZone["RGB - 9999 Cell"].Head)
        end;
        ["Castle"] = function()
            l__SCRIPTS__l["l__teleport__l"](workspace.Portal.Beam)
            task.wait(3)
            l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").GetScarecrowSkull)
        end;
        ["DeadGround"] = function()
            if workspace:FindFirstChild("DeadGround") then
                if not workspace.DeadGround:FindFirstChild(" ") then
                    l__SCRIPTS__l["l__teleport__l"](game:GetService("Workspace").Portal.Beam)
                    task.wait(10)
                    l__SCRIPTS__l["l__tween__l"](workspace.DeadGround["LXD - 9999 Cell"].Head)
                    return;
                end
            end
        end;
        ["NightZone"] = function()
            if workspace:FindFirstChild("NightZone") then
                l__SCRIPTS__l["l__teleport__l"](workspace.Portal.Beam);
                task.wait(10)
                l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").NightCity.Exit.Head)
            end
        end;
        ["MazeWorld"] = function()
            if workspace:FindFirstChild("MazeWorld") then
                l__SCRIPTS__l["l__teleport__l"](workspace.Portal.Beam);
                task.wait(4)
                l__SCRIPTS__l["l__tween__l"](game:GetService("Workspace").MazeWorld["ESCAPE FROM THIS HELL"].Head)
            end
        end;
    }

    AddCustomButton(sector1, 'Get RGB (corrupted zone needs to be spawned)', AutoGet["CorruptedZone"])
    AddCustomButton(sector1, 'Get Scarecrow skull (castle need to spawn)', AutoGet["Castle"])
    AddCustomButton(sector1, 'Get LXD (tentacle needs to die)', AutoGet["DeadGround"])
    AddCustomButton(sector1, 'Get double LX3 (maze world need to spawn)', AutoGet["MazeWorld"])
    AddCustomButton(sector1, 'Get corrupted rifle', AutoGet["NightZone"])
    AddCFrameButton(sector1, 'Get LXW', game:GetService("Workspace").Exit.CFrame, 'Succesfully got LXW!')
end
