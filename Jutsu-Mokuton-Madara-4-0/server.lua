--addCommandHandler("mokuton-madarasd",function( sourcePlayer )
--if (getTickCount ( ) - tiempo > 5000) then
--tiempo = getTickCount ( )
--local x, y, z = getElementPosition ( sourcePlayer )
--objeto = createObject ( 616, x + 12, y, z - 60, 0, 0, 0 )
--setTimer (destroyElement, 12000, 1, objeto)
--moveObject ( objeto, 11000, x + 12, y, z - 5  )
--setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )



local tiempo = 3500
 
addCommandHandler("mokuton-madara",function( sourcePlayer )
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,151,97,2,false) return end
if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(sourcePlayer)), aclGetGroup("Jutsus.madera")) then
if (getTickCount ( ) - tiempo > 5000) then
if exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,65) then
exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,65)
triggerClientEvent (sourcePlayer, "CrearTextooMokuton", sourcePlayer)
triggerClientEvent (sourcePlayer, "createSonidoMokutoon", sourcePlayer)
outputChatBox("!Mokuton Jukai Koutan¡",sourcePlayer,151,97,2,false)
tiempo = getTickCount ( )
local x, y, z = getElementPosition ( sourcePlayer )
objeto = createObject ( 616, x + 12, y, z - 60, 0, 0, 0 )
objeto1 = createObject ( 617, x + 12, y, z - 60, 0, 0, 0 )
objeto2 = createObject ( 669, x + 12, y, z - 60, 0, 0, 0 )
objeto3 = createObject ( 615, x + 12, y, z - 60, 0, 0, 0 )
objeto4 = createObject ( 656, x + 12, y, z - 60, 0, 0, 0 )
objeto5 = createObject ( 616, x + 12, y, z - 60, 0, 0, 0 )
moveObject ( objeto, 7000, x + 12, y, z - 5  )
moveObject ( objeto1, 7000, x + 10, y, z - 5  )
moveObject ( objeto2, 7000, x + 8, y + 4, z - 5  )
moveObject ( objeto3, 7000, x + 12, y + 8, z - 5  )
moveObject ( objeto4, 7000, x + 4, y - 8, z - 5  )
moveObject ( objeto5, 7000, x + 6, y - 4, z - 5  )
setTimer (destroyElement, 12000, 1, objeto)
setTimer (destroyElement, 12000, 1, objeto1)
setTimer (destroyElement, 12000, 1, objeto2)
setTimer (destroyElement, 12000, 1, objeto3)
setTimer (destroyElement, 12000, 1, objeto4)
setTimer (destroyElement, 12000, 1, objeto5)
setTimer (
        function ( )
            createExplosion ( x + 10, y, z + 0, 3 )
			createExplosion ( x + 10, y, z + 0, 3 )
        end
        ,8200, 1
    )
setTimer (
        function ( )
            createExplosion ( x + 10, y, z + 0, 3 )
			createExplosion ( x + 10, y, z + 0, 3 )
			createExplosion ( x + 9, y, z + 0, 3 )
			createExplosion ( x + 8, y, z + 0, 3 )
        end
        ,9000, 1
    )
setTimer (
        function ( )
            createExplosion ( x + 10, y, z + 0, 3 )
			createExplosion ( x + 10, y, z + 0, 3 )
        end
        ,10000, 1
    )
setPedAnimation( sourcePlayer , "bomber", "bom_plant", -1, true, false, false )
setTimer (
        function ( )
            setPedAnimation ( sourcePlayer )
        end
        ,2000, 1
    )
else
outputChatBox("No tiene chakra suficiente!",sourcePlayer,151,97,2,false)
end
else
outputChatBox("Debes esperar 5 segundos para poder utilizar este jutsu!",sourcePlayer,255,0,0,false)
end
else
outputChatBox("No puedes utilizar el elemento mokuton!",sourcePlayer,151,97,2,false)
end 
end)








