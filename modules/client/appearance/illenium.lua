Gravity.RegisterClientProvider('appearance', 'illenium-appearance', {
    open = function(data)
        if data.onSubmit or data.onCancel then
            TriggerEvent('esx_skin:openSaveableMenu', function()
                local appearance = exports['illenium-appearance']:getPedAppearance(PlayerPedId())
                if data.onSubmit then data.onSubmit(appearance) end
            end, function()
                if data.onCancel then data.onCancel() end
            end)
            return true
        end

        TriggerEvent('illenium-appearance:client:openClothingShopMenu', data.isPedMenu or false)
        return true
    end,
    get = function() return exports['illenium-appearance']:getPedAppearance(PlayerPedId()) end,
    set = function(appearance) exports['illenium-appearance']:setPlayerAppearance(appearance) return true end,
    setPed = function(ped, appearance) exports['illenium-appearance']:setPedAppearance(ped, appearance) return true end,
    setClothing = function(clothing)
        exports['illenium-appearance']:setPedComponents(PlayerPedId(), clothing.components or {})
        exports['illenium-appearance']:setPedProps(PlayerPedId(), clothing.props or {})
        return true
    end,
})
