jumpsLeft = 1
canDoubleJump = true

GMoney = 0


function ModCS.Game.Act()

        if ModCS.Player.TouchFloor() == false then
            if canDoubleJump == true then
                if ModCS.Key.Jump(false) and jumpsLeft > 0 then
                    ModCS.Player.ym = -1300
                    jumpsLeft = jumpsLeft - 1
                    ModCS.Sound.Play(56)
                    for i = 1, 3, 1 do
                        ModCS.Npc.Spawn(4, ModCS.Player.x, ModCS.Player.y, 0)
                        
                    end
                end
            end
            

        else
            
            jumpsLeft = 1

        end
    end





