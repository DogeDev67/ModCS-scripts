
local function slashSword(bul)

    local id = bul.id
    if ModCS.Player.direct == 2.0 then
        bul.x = ModCS.Player.x + 8
    else
        bul.x = ModCS.Player.x - 8
    end
    bul.y = ModCS.Player.y



    bul:ActCode()
end

ModCS.Bullet.Act[25] = slashSword