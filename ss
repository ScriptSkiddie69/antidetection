local functions = {}


functions.Start = function()
local a = game.CoreGui.Execution
a.Name = "ControlModule"
a.Parent = game.Players.LocalPlayer.PlayerScripts.PlayerModule
a.DescendantAdded:Connect(function(h)
if h ~= nil then
    h.Name = "Gamepad"
end
end)
end

functions.Init = function()
game.CoreGui.BridgeService.Parent = game.Lighting
end
functions.End = function()
game.Lighting.BridgeService.Parent = game.CoreGui
end

return functions
