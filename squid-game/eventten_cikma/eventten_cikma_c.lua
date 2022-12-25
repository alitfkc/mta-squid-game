------------------------------------------------------------------------------
-------------------THIS SCRIPT BELONGS TO META SCRIPTS------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Beyonder#0711---------------------------------
-------------------------------------------------------------------------------
------------------DISCORD SERVER : https://discord.gg/e4f9uUbzys---------------
-------------------------------------------------------------------------------
----------------------WEBSITE : http://metascripts.org/------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Gangsta#6869----------------------------------
-------------------------------------------------------------------------------
---------------------BU SCRİPT META SCRİPTS'E AİTTİR---------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Beyonder#0711---------------------------------
-------------------------------------------------------------------------------
------------------DISCORD SERVER : https://discord.gg/e4f9uUbzys---------------
-------------------------------------------------------------------------------
----------------------WEBSITE : http://metascripts.org/------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Gangsta#6869----------------------------------
-------------------------------------------------------------------------------
function eventten_cikma()
    if getElementData(source,"squid_game") then 
        setElementData(localPlayer,"squid_game",false)
        removeEventHandler("onClientKey", root, eventte_tus_engelleme)
        removeEventHandler("onClientPlayerDamage",localPlayer,eventte_hasar_yeme)
        removeEventHandler("onClientPlayerWasted",localPlayer,olunce_eventten_cikma)
        removeEventHandler("onClientPreRender",root,event_calisma_render_kontrol)
        triggerServerEvent("squid_game_tablodan_oyuncu_silme",localPlayer)
        for k,v in pairs(yasaklanacak_kontroller) do 
            toggleControl(v,true)
        end
    end
end
function eventte_hasar_yeme()
    if getElementData(localPlayer,"squid_game") then 
        cancelEvent()
    end
end
function olunce_eventten_cikma()
    eventten_cikma()
    local yertablo=getElementData(localPlayer,"sq:event:onceki:pozisyon:ve:skin")
    setTimer(function() 
        triggerServerEvent("position:degis",localPlayer,yertablo[1],yertablo[2],yertablo[3])
        triggerServerEvent("skin:degis",localPlayer,yertablo[4])
    end,6000,1)
end
function event_bitti()
    sarki_durum=false 
    local yertablo=getElementData(localPlayer,"sq:event:onceki:pozisyon:ve:skin")
    eventten_cikma()
    setTimer(function()
        triggerServerEvent("dimension:degis",localPlayer,0)
        triggerServerEvent("position:degis",localPlayer,yertablo[1],yertablo[2],yertablo[3])
        triggerServerEvent("skin:degis",localPlayer,yertablo[4])
    end,1000,1)
end
addEvent("event:bitti",true)
addEventHandler("event:bitti",localPlayer,event_bitti)
------------------------------------------------------------------------------
-------------------THIS SCRIPT BELONGS TO META SCRIPTS------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Beyonder#0711---------------------------------
-------------------------------------------------------------------------------
------------------DISCORD SERVER : https://discord.gg/e4f9uUbzys---------------
-------------------------------------------------------------------------------
----------------------WEBSITE : http://metascripts.org/------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Gangsta#6869----------------------------------
-------------------------------------------------------------------------------
---------------------BU SCRİPT META SCRİPTS'E AİTTİR---------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Beyonder#0711---------------------------------
-------------------------------------------------------------------------------
------------------DISCORD SERVER : https://discord.gg/e4f9uUbzys---------------
-------------------------------------------------------------------------------
----------------------WEBSITE : http://metascripts.org/------------------------
-------------------------------------------------------------------------------
-----------------------DISCORD : Gangsta#6869----------------------------------
-------------------------------------------------------------------------------