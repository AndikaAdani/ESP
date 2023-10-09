local Player = game.Players.LocalPlayer

local function CharacterAdded(char)
    local hl = Instance.new("Highlight", char)
    hl.FillTransparency = 0.4
    hl.OutlineTransparency = 0.5
    hl.FillColor = game.Players[char.Name].Team.TeamColor.Color
end

local function PlayerAdded(player)
	player.CharacterAdded:Connect(CharacterAdded)
	local char = player.Character
	if char then
		CharacterAdded(char)
	end
end

game.Players.PlayerAdded:Connect(PlayerAdded)

for i,v in pairs(game.Players:GetPlayers()) do
	PlayerAdded(v)
end