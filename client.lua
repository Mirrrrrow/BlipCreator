RegisterNetEvent('blipcreator:addBlip')
AddEventHandler('blipcreator:addBlip', function(position,sprite,colour,name,cb)
    if not position or not sprite or not colour or not name then return end
    local blip = AddBlipForCoord(position)

    SetBlipSprite(blip, sprite)
    SetBlipScale(blip, size)
    SetBlipDisplay(blip, 2)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, colour)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    if cb then cb(blip) end
end)