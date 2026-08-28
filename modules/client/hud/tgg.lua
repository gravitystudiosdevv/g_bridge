Gravity.RegisterClientProvider('hud', 'tgg-hud', {
    show = function() exports['tgg-hud']:ToggleHud(true) end,
    hide = function() exports['tgg-hud']:ToggleHud(false) end,
    toggle = function() exports['tgg-hud']:ToggleHud() end,
    isSeatbeltOn = function() return exports['tgg-hud']:IsSeatbeltOn() end,
    setSeatbelt = function(state, options)
        options = options or {}
        exports['tgg-hud']:ToggleSeatbeltIndicator(options.visible ~= false, state, options.color or '#ffffff')
    end,
})
