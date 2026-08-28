local qbHud = {
    addStress = function(amount) TriggerServerEvent('hud:server:GainStress', amount) end,
    removeStress = function(amount) TriggerServerEvent('hud:server:RelieveStress', amount) end,
}

Gravity.RegisterClientProvider('hud', 'qb-hud', qbHud)
Gravity.RegisterClientProvider('hud', 'ps-hud', qbHud)
