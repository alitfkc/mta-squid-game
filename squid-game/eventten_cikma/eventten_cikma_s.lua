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
function oyuncu_oyundan_cikma()
    if getElementData(source,"squid_game") then 
        for k,v in pairs(evente_katilan_oyuncular) do 
            if v==source then 
                table.remove(evente_katilan_oyuncular,k)
                oyuncusayisi=oyuncusayisi-1
                event_bitis_kontrol()
                for k,v in pairs(getElementsByType("player")) do
                    setElementData(v,"f1:sq:event:oyuncu:sayisi",oyuncusayisi)
                end
                break
            end
        end
    end
end
function tablodan_oyuncu_silme()
    for k,v in pairs(evente_katilan_oyuncular) do 
        if v==source then 
            table.remove(evente_katilan_oyuncular,k)
            break
        end
    end
end
addEventHandler ( "onPlayerQuit", root,oyuncu_oyundan_cikma )
addEvent("squid_game_tablodan_oyuncu_silme",true)
addEventHandler("squid_game_tablodan_oyuncu_silme",root,tablodan_oyuncu_silme)
function dimens_degis(dimens)
    setElementDimension(source,dimens)
end
addEvent("dimension:degis",true)
addEventHandler("dimension:degis",root,dimens_degis)
function position_degis(x,y,z)
    setElementPosition(source,x,y,z)
end
addEvent("position:degis",true)
addEventHandler("position:degis",root,position_degis)
function skin_degis(skin)
    setElementModel(source,skin)
end
addEvent("skin:degis",true)
addEventHandler("skin:degis",root,skin_degis)
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
