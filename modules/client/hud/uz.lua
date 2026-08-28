Gravity.RegisterClientProvider('hud', 'uz_PureHud', {
    -- This resource names the argument after the hidden state, not visibility.
    show = function() exports.uz_PureHud:SetHudVisibility(false) end,
    hide = function() exports.uz_PureHud:SetHudVisibility(true) end,
})
