local shoot_cooldown = 0
local max_shoot_cooldown = 80
local bul_id = 4
local spurMode = false


ModCS.Arms.Shoot[2] = function ()
    

	-- Set the Bullet ID variable based on the weapon level


    if ModCS.Key.Shoot(true) then
        
        if shoot_cooldown > max_shoot_cooldown then
            if (ModCS.Player.IsLookingUp()) then
                if (ModCS.Player.direct == 0) then
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x - 1, ModCS.Player.y - 8, 1)
                else
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x + 1, ModCS.Player.y - 8, 1)
                end
            elseif (ModCS.Player.IsLookingDown()) then
                if (ModCS.Player.direct == 0) then
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x - 1, ModCS.Player.y + 8, 3)
                else
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x + 1, ModCS.Player.y + 8, 3)
                end
            else
                if (ModCS.Player.direct == 0) then
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x - 6, ModCS.Player.y + 3, 0)
                else
                    ModCS.Bullet.Spawn(bul_id, ModCS.Player.x + 6, ModCS.Player.y + 3, 2)

                end
            end
            if spurMode == false then
                max_shoot_cooldown = max_shoot_cooldown * 0.5
            end
            shoot_cooldown = 0
        end

    else
        max_shoot_cooldown = 80
        spurMode = false
        bul_id = 4
    end
end




function ModCS.Game.Act()
    shoot_cooldown = shoot_cooldown + 1
    if spurMode == false then
        if max_shoot_cooldown < 3 then
            bul_id = 37
            spurMode = true
            max_shoot_cooldown = 3
        end
    else
        max_shoot_cooldown = 10
    end
end