local function sendLogoHudConfig()
    SendNUIMessage({
        action = "setConfig",
        position = Config.Position,
        widthVW = Config.WidthVW,
        minWidth = Config.MinWidth,
        maxWidth = Config.MaxWidth,
        opacity = Config.Opacity
    })
end

Citizen.CreateThread(function()
    Citizen.Wait(100)
    sendLogoHudConfig()
end)

AddEventHandler('onClientResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    Citizen.Wait(50)
    sendLogoHudConfig()
end)