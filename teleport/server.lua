QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('bankg', '/bankg [Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
		local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
			local coords = GetEntityCoords(target)
			TriggerClientEvent('client:banka', source, coords)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla bankaya gönderildi.", 'success')
			else
			 TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	TriggerClientEvent('client:banka', source)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla bankaya ışınlandın.", 'success')
	end
end, 'admin')

QBCore.Commands.Add('hasg', '/hasg[Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
        local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
            local coords = GetEntityCoords(target)
            TriggerClientEvent('client:hastane', source, coords)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla bankaya gönderildi.", 'success')
			else
            TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	TriggerClientEvent('client:hastane', source)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla hastaneye ışınlandın.", 'success')
	end
end, 'admin')

QBCore.Commands.Add('iskg', '/iskg [Oyuncu ID]', {}, false, function(source, targetPlayer)
	if targetPlayer[1] then
        if tonumber(targetPlayer[1]) then
        local target = GetPlayerPed(tonumber(targetPlayer[1]))
			if target ~= 0 then
            local coords = GetEntityCoords(target)
            TriggerClientEvent('client:iskele', source, coords)
			TriggerClientEvent('QBCore:Notify', source, "Oyuncu başarıyla iskeleye gönderildi.", 'success')
			else
            TriggerClientEvent('QBCore:Notify', source, "Oyuncu ID bulunamadı.", 'error')
			end
		end
	else
	TriggerClientEvent('client:iskele', source)
	TriggerClientEvent('QBCore:Notify', source, "Başarıyla iskeleye ışınlandın.", 'success')
	end
end, 'admin')


