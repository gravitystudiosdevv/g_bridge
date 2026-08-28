Gravity.RegisterClientProvider('hud', 'jgs-hud', {
    show = function() exports['jgs-hud']:showHUD() end,
    hide = function() exports['jgs-hud']:hideHUD() end,
})
