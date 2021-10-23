local QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) 
    QBCore = obj 
end)

RegisterServerEvent('rdrp_rccars:get')
AddEventHandler('rdrp_rccars:get', function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("rccar", 1)
end)

QBCore.Functions.CreateUseableItem("rccar", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent('rdrp_rccars:rcCar', source)
    end
end)