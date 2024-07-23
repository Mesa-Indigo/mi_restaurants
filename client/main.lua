-- variables


-- local functions
function LoadBlips()
    for _, restaurant in pairs(Data.Rest) do
        local blipData = restaurant.blip

        -- Create the blip
        local blip = AddBlipForCoord(blipData.loc.x, blipData.loc.y, 0)

        -- Set blip properties
        SetBlipSprite(blip, blipData.spr)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.6)
        SetBlipColour(blip, blipData.clr)
        SetBlipAsShortRange(blip, true)

        -- Set blip name
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipData.label)
        EndTextCommandSetBlipName(blip)
    end
end

LoadBlips()