Gravity.RegisterClientProvider('hud', 'mHud', {
    show = function() TriggerEvent('mHud:ShowHud') end,
    hide = function() TriggerEvent('mHud:HideHud') end,
})
