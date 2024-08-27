require("player")
require("HUD")
require("shop")

function ModCS.Tsc.Command.EDJ() --Enable Double Jump
	
    canDoubleJump = true

end

function ModCS.Tsc.Command.DDJ() --Disable Double Jump
	
    canDoubleJump = false

end
 

--function ModCS.Tsc.Command.HDJ() --Has Double Jump
--	local event = ModCS.Tsc.GetArgument(1)


--	if (canDoubleJump == true) then
--		ModCS.Tsc.Jump(event)
--	end
--end

--function ModCS.Tsc.Command.EDC() --Enable Death Counter
	
--    hasDeathCounter = true

--end

--function ModCS.Tsc.Command.IDC() --Increase Death Counter
	
--    deaths = deaths + 1

--end

function ModCS.Tsc.Command.RCD() --ReCover Double jump

    jumpsLeft = jumpsLeft + 1

end

function ModCS.Tsc.Command.ADM() -- ADd Money
	local val = ModCS.Tsc.GetArgument(1)

    GMoney = GMoney + val

end

function ModCS.Tsc.Command.SBM() -- SuBtract Money
	local val = ModCS.Tsc.GetArgument(1)

    GMoney = GMoney - val

end

function ModCS.Tsc.Command.SEM() -- SEt Money
	local val = ModCS.Tsc.GetArgument(1)

    GMoney = val

end

function ModCS.Tsc.Command.TSH() -- Toggle SHop

    ToggleShop()

end