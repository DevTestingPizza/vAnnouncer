--- [there's nothing here that needs configuring, so you're best off not touching this!]-------
RegisterServerEvent('va:getPlayerIdentifiers')
AddEventHandler('va:getPlayerIdentifiers', function()
    local playerIdentifiers = GetPlayerIdentifiers(source)
    if playerIdentifiers == nil then
        playerIdentifiers = {"null"}
    end
    TriggerClientEvent('va:setPlayerIdentifiers', source, playerIdentifiers)
end)
RegisterCommand('automessage', function(source)
    TriggerClientEvent('va:toggleAutoMessage', source)
end)
-----------------------------------------------------------------------------------------------