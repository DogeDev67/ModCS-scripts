local current_room = {x =0, y =0}

function ModCS.Game.Act()

    if ModCS.Player.x > ModCS.Camera.GetXPos() + 320 then
        current_room.x = current_room.x + 1
    end



    ModCS.Camera.x = current_room.x * 320 
end