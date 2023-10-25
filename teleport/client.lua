

RegisterNetEvent('client:banka', function()
	local player = PlayerPedId()
	SetEntityCoords(player, cfg.banka, true)
	SetEntityHeading(player, cfg.heading)
end)

RegisterNetEvent('client:hastane', function()
	local player = PlayerPedId()
	SetEntityCoords(player, cfg.hastane, true)
	SetEntityHeading(player, cfg.heading2)
end)

RegisterNetEvent('client:iskele', function()
	local player = PlayerPedId()
	SetEntityCoords(player, cfg.iskele, true)
	SetEntityHeading(player, cfg.heading3)
end)
