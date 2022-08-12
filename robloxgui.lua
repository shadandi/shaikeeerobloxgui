local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Shaikeee script", "Ocean")


--Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")


MainSection:NewButton("Fly", "makes you fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/nvRuWgUx"))()
end)

MainSection:NewButton("Back/front flip", "flips - x, c , b=lnfinity jump", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YdnhLtkv", true))()
end)


MainSection:NewToggle("SuperHuman", "Go fast and jump high", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayers.Character.Humanoid.JumpHigh = 350
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpHigh = 50
    end
end)

MainSection:NewButton("Infinite Yield", "FE Admin Command", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

--Local Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Speed!!!", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


PlayerSection:NewSlider("JumpPower", "Jump High!!!", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpHigh = 50
end)
