local time = 0.0

local function BulletSinCos(bul)

    
    local amp = 30

    bul.ym = math.sin(time) --* amp
    bul.xm = 2


    time = time + 0.002

    bul:ActCode()
    
end

ModCS.Bullet.Act[25] = BulletSinCos