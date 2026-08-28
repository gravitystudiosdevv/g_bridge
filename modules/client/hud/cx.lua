Gravity.RegisterClientProvider('hud', 'cx-hud', {
    show = function() exports['cx-hud']:showHud() end,
    hide = function() exports['cx-hud']:hideHud() end,
})
