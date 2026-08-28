Gravity.RegisterClientProvider('hud', 'ak4y-hud', {
    show = function() exports['ak4y-hud']:toggleHud(true) end,
    hide = function() exports['ak4y-hud']:toggleHud(false) end,
    getStress = function() return exports['ak4y-hud']:GetStress() end,
    getNitro = function() return exports['ak4y-hud']:GetNitro() end,
})
