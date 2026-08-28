local activeMenuData

RegisterNetEvent('qb-clothing:client:onMenuClose', function()
    local menuData = activeMenuData
    activeMenuData = nil

    if menuData and type(menuData.onSubmit) == 'function' then
        menuData.onSubmit()
    end
end)

Gravity.RegisterClientProvider('appearance', 'qb-clothing', {
    open = function(data)
        data = data or {}
        activeMenuData = data

        if data.isPedMenu then
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        else
            TriggerEvent('qb-clothing:client:openMenu')
        end

        return true
    end,
    set = function(appearance)
        TriggerEvent('qb-clothing:client:loadPlayerClothing', appearance, PlayerPedId())
        return true
    end,
    setPed = function(ped, appearance)
        TriggerEvent('qb-clothing:client:loadPlayerClothing', appearance, ped)
        return true
    end,
    setClothing = function(clothing)
        TriggerEvent('qb-clothing:client:loadOutfit', { outfitData = clothing })
        return true
    end,
})
