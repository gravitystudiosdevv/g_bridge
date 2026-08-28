Gravity.RegisterClientProvider('hud', 'envi-hud', {
    show = function() exports['envi-hud']:ToggleHUD(true) end,
    hide = function() exports['envi-hud']:ToggleHUD(false) end,
    addStress = function(amount) exports['envi-hud']:AddStress(amount) end,
    removeStress = function(amount) exports['envi-hud']:RemoveStress(amount) end,
    setSeatbelt = function(state) exports['envi-hud']:ToggleSeatbeltUI(state) end,
    isSeatbeltOn = function() return exports['envi-hud']:GetSeatbeltStatus() end,
})
