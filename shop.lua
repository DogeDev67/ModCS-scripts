local shop_rect = ModCS.Rect.Create(0, 0, 104, 130)
local shop_surface = ModCS.Surface.Create(38, "shopPanel")
local max_selection = 2
local selection = 0
local spacing = 10

local showShop = true

local grey = ModCS.Color.Create(50, 50, 100)

function ModCS.Game.Draw()
    if showShop then
        shop_rect:Put(200, 20, 38)
        ModCS.Color.Box(grey, 206, 25 + spacing * selection, 93, 10)
        ModCS.PutText("Accelerator: 90", 206, 25)
    end


end

function ModCS.Game.Act()

    if showShop then
        if ModCS.Key.Up() and selection > 0 then
            selection = selection - 1
        elseif ModCS.Key.Down() and selection < max_selection then
            selection = selection + 1
        end    
    end

end


function ToggleShop()
    showShop = not showShop
end