local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CHEESY-UI", "DarkTheme")

-- Windows and sections xd
local Main = Window:NewTab("Main")
local Betas = Window:NewTab("Betas")

local Section1_1 = Main:NewSection("Main") -- Main Section
local Section2_1 = Main:NewSection("Keybinds") -- Credits Section

local Section1_2 = Main:NewSection("Betas") -- Betas Section

-- Colors the thingy
local colors = {
    SchemeColor = Color3.fromRGB(255, 251, 0),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(230, 206, 103),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.Tab, function()
	Library:ToggleUI()
end)


-- The actual scripts


Section:NewKeybind("Fly (h)", "i love kentucky fried chicken!!!", Enum.KeyCode.H, function()
	if not fly then
        fly = true
        while fly do
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
            game.Players.LocalPlayer.Character.Head.Velocity = workspace.CurrentCamera.CFrame.LookVector*60 + Vector3.new(0,10,0)
            wait()
        end
    else
        fly = false
    end
end)



Section1_1:NewSlider("WalkSpeed", "vrooom", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section1_1:NewSlider("JumpPower", "Gotta blast!", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkJumpower = s
end)



Section1_2:NewToggle("Fake Headless", "oooo im rich ooooo", function(state)
    
    if state then
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.face.Transparency = 1
    else
        game.Players.LocalPlayer.Character.Head.Transparency = 0
        game.Players.LocalPlayer.Character.Head.face.Transparency = 0
    end
end)

Section1_2:NewToggle("Invisible (R6 Only)", "im a ghooost oooooo", function(state)
    
    if state then
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.face.Transparency = 1
        game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
        game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
        game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
        game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
        game.Players.LocalPlayer.Character["Torso"].Transparency = 1
    else
        game.Players.LocalPlayer.Character.Head.Transparency = 0
        game.Players.LocalPlayer.Character.Head.face.Transparency = 0
        game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
        game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
        game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
        game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
        game.Players.LocalPlayer.Character["Torso"].Transparency = 0
    end
end)


Section:NewButton("Naked 😳", "(Stays until reset)", function()
    game.Players.LocalPlayer.Character.Shirt:Destroy()
    game.Players.LocalPlayer.Character.Pants:Destroy()
end)






Section2_1:NewLabel("Tab to toggle UI")

