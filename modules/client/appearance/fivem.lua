Gravity.RegisterClientProvider('appearance', 'fivem-appearance', {
    open = function(data)
        if data.onSubmit or data.onCancel or data.config then
            local config = data.config or {
                ped = true,
                headBlend = true,
                faceFeatures = true,
                headOverlays = true,
                components = true,
                props = true,
                tattoos = true,
            }
            exports['fivem-appearance']:startPlayerCustomization(function(appearance)
                if appearance then
                    if data.onSubmit then data.onSubmit(appearance) end
                elseif data.onCancel then
                    data.onCancel()
                end
            end, config)
            return true
        end

        TriggerEvent('fivem-appearance:client:openClothingShopMenu', data.isPedMenu or false)
        return true
    end,
    get = function() return exports['fivem-appearance']:getPedAppearance(PlayerPedId()) end,
    set = function(appearance) exports['fivem-appearance']:setPlayerAppearance(appearance) return true end,
    setPed = function(ped, appearance) exports['fivem-appearance']:setPedAppearance(ped, appearance) return true end,
    setClothing = function(clothing)
        exports['fivem-appearance']:setPedComponents(PlayerPedId(), clothing.components or {})
        exports['fivem-appearance']:setPedProps(PlayerPedId(), clothing.props or {})
        return true
    end,
})
