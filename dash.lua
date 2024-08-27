
local dashCooldown = 0 --ignore
local maxDashCooldown = 40 --How many frames after dashing you can't dash

function ModCS.Game.Act()
    if ModCS.Game.CanControl() then --check if player is allowed to move

        if ModCS.Key.Shift() and dashCooldown > maxDashCooldown then

            dash(ModCS.Player.direct) --dash to the direction the player is facing
            
        end
    end
    dashCooldown = dashCooldown + 1

    if dashCooldown < 10 then  --Makes the player stay in the air  for 10 frames
        ModCS.Player.ym = 0
    end
end

function dash(direction)
    local dashSpeed = 10000 --2300
    local smokeAmount = 2

    ModCS.Player.y = ModCS.Player.y + 1


    if direction == 2.0 then
        ModCS.Player.xm = dashSpeed
    elseif direction == 0.0 then
        ModCS.Player.xm = -dashSpeed
        
    end

    dashCooldown = 0 --start cooldown

    --spawn smokes
    for i = 1, smokeAmount, 1 do
        ModCS.Npc.Spawn(4, ModCS.Player.x, ModCS.Player.y + 8, 0)
    end
end