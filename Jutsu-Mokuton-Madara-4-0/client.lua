function TextooMokuton(p)
		addEventHandler ("onClientRender", getRootElement(), Dxmokutoon)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),Dxmokutoon) end,8000,1)
end
addEvent ("CrearTextooMokuton", true)
addEventHandler ("CrearTextooMokuton", root, TextooMokuton)

local dotonColor = tocolor(151,97,2, 255)

function Dxmokutoon ()
		dxDrawText("!Mokuton Jukai Koutan¡", 212, 611, 820, 646, dotonColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end


function createSonidoMokuton(thePlayer)
setTimer (
        function ( )
		local sound = playSound("Plantas.mp3",false)
		setSoundVolume(sound, 1) 
        end
        ,4000, 1
)
setTimer (
        function ( )
		local sound = playSound("Mokuton2.mp3",false)
		setSoundVolume(sound, 1) 
        end
        ,500, 1
)
setTimer (
        function ( )
		local sound = playSound("Sellos.mp3",false)
		setSoundVolume(sound, 1) 
        end
        ,100, 1
)		
end

addEvent ("createSonidoMokutoon", true)
addEventHandler ("createSonidoMokutoon", root, createSonidoMokuton)