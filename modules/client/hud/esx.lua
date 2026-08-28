Gravity.RegisterClientProvider('hud', 'esx_hud', {
    setSeatbelt = function(state) exports.esx_hud:SeatbeltState(state) end,
    setValue = function(key, value)
        if key ~= 'cruise' then return false end
        exports.esx_hud:CruiseControlState(value == true)
    end,
})
