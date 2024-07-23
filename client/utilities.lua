-- set variables
local Utility = {}

-- load blip function
function Utility.CreateBlip(data, cds)
    local blip = AddBlipForCoord(cds.loc.x, cds.loc.y, cds.loc.z)
    SetBlipSprite(blip, data.id)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.6)
    SetBlipColour(blip, data.colour)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName(data.name)
    EndTextCommandSetBlipName(blip)
    return blip
end

-- return utility functions
return Utility