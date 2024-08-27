hasDeathCounter = false
deaths = 0

function ModCS.Game.DrawBelowFade()
    if hasDeathCounter and ModCS.Game.GetMode() == 3.0 then
        ModCS.PutText("Deaths: " .. tostring(deaths), 135, 0)
        
    end


end