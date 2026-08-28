Gravity.RegisterClientProvider('hud', 'cs_hud', {
    show = function() exports.cs_hud:setVisible(true) end,
    hide = function() exports.cs_hud:setVisible(false) end,
    isSeatbeltOn = function() return exports.cs_hud:isBuckled() end,
    getHarness = function()
        return { active = exports.cs_hud:hasHarness(), durability = exports.cs_hud:harnessDurability() }
    end,
})
