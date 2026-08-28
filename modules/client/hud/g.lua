Gravity.RegisterClientProvider('hud', 'g_hud', {
    show = function() exports.g_hud:ShowHud() end,
    hide = function() exports.g_hud:HideHud() end,
    toggle = function()
        if exports.g_hud:IsHudVisible() then exports.g_hud:HideHud() else exports.g_hud:ShowHud() end
    end,
    isVisible = function() return exports.g_hud:IsHudVisible() end,
    openSettings = function() exports.g_hud:OpenEditor() end,
    closeSettings = function() exports.g_hud:CloseEditor() end,
    applyTheme = function(name) exports.g_hud:ApplyTheme(name) end,
    setElementVisible = function(id, visible) exports.g_hud:SetElementVisible(id, visible) end,
    setValue = function(key, value) exports.g_hud:SetCustomValue(key, value) end,
})
