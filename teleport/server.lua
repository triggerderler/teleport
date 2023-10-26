QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('bankg', '/bankg [Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
		local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
			local coords = GetEntityCoords(target)
			SetEntityCoords(target, cfg.banka, true)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla bankaya gönderildi.", 'success')
			else
			 TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	SetEntityHeading(source, cfg.heading)
	SetEntityCoords(source, cfg.banka, true)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla bankaya ışınlandın.", 'success')
	end
end, 'admin')

QBCore.Commands.Add('hasg', '/hasg[Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
        local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
            local coords = GetEntityCoords(target)
            SetEntityCoords(target, cfg.hastane, true)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla hastaneye gönderildi.", 'success')
			else
            TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	SetEntityHeading(source, cfg.heading2)
	SetEntityCoords(source, cfg.hastane, true)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla hastaneye ışınlandın.", 'success')
	end
end, 'admin')

QBCore.Commands.Add('iskg', '/iskg [Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
        local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
            local coords = GetEntityCoords(target)
            SetEntityCoords(target, cfg.iskele, true)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla iskeleye gönderildi.", 'success')
			else
            TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	SetEntityCoords(source, cfg.iskele, true)
	SetEntityHeading(source, cfg.heading3)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla iskeleye ışınlandın.", 'success')
	end
end, 'admin')
