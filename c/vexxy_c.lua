RegisterCommand('gme', function(source, args, rawCommand)
    local message = table.concat(args, ' ')
    if message ~= '' then
        TriggerServerEvent('chatMessage', '^*GLOBAL ME ^7' .. GetPlayerName(source) .. '^0: ' .. message)
    else
        TriggerEvent('chatMessage', '^1Error: ^7Please provide a message.')
    end
end, false)

RegisterCommand('help', function()
    TriggerEvent('chatMessage', '^1Command: ^7/gme')
    TriggerEvent('chatMessage', '^3Description: ^7Global Me Command')
end, false)
