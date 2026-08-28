local function getCore()
    return exports['qb-core']:GetCoreObject()
end

local function getPhoneNumber(player)
    local playerData = player and player.PlayerData
    local charinfo = playerData and playerData.charinfo
    return charinfo and charinfo.phone or nil
end

Gravity.RegisterServerProvider('phone', 'qb-phone', {
    generatePhoneNumber = function()
        local QBCore = getCore()
        return QBCore.Functions.CreatePhoneNumber()
    end,
    getPhoneNumberBySource = function(source)
        local QBCore = getCore()
        return getPhoneNumber(QBCore.Functions.GetPlayer(source))
    end,
    getPhoneNumberByIdentifier = function(identifier)
        local QBCore = getCore()
        local player = QBCore.Functions.GetPlayerByCitizenId(identifier)
            or QBCore.Functions.GetOfflinePlayerByCitizenId(identifier)

        return getPhoneNumber(player)
    end,
    getSourceByPhone = function(phoneNumber)
        local QBCore = getCore()
        local player = QBCore.Functions.GetPlayerByPhone(phoneNumber)
        return player and player.PlayerData and player.PlayerData.source or nil
    end,
})
