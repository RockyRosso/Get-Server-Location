local ServerLocation = require(script.ServerLocation) -- You can name the script whatever you want

game.Players.PlayerAdded:Connect(function(player)
    ServerLocation:GetLocation()
end)
