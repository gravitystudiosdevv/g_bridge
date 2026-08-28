Gravity.RegisterClientProvider('hud', 'jg-hud', {
    show = function() exports['jg-hud']:toggleHud(true) end,
    hide = function() exports['jg-hud']:toggleHud(false) end,
    setVehicleControlVisible = function(visible) exports['jg-hud']:toggleVehicleControl(visible) end,
})
