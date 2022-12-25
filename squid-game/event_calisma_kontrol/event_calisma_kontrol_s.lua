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
function bebek_dondur_arkaya()
    moveObject(oyun_haritasi.bebek_obje,500,-3707.69948, 1797.9, 265.96185,0,0,180)
    for k,v in pairs(evente_katilan_oyuncular) do 
        triggerClientEvent(v,"goz:sesi",v)
    end
    dondurme_timer2=setTimer(function()
    bebek_dondur()
    moveObject(oyun_haritasi.bebek_obje,500,-3706.96948, 1798.34399, 265.96185,0,0,-180)
    end,3000,1)
end
function bebek_dondur()
    print(eventdurum)
    if eventdurum then
        local dondurme_sure=math.random(2,6)
        for k,v in pairs(evente_katilan_oyuncular) do 
            setElementData(v,"bebek_donme_sure",dondurme_sure)
        end
        dondurme_sure=dondurme_sure*1000
        dondurme_timer=setTimer(bebek_dondur_arkaya,dondurme_sure,1)
    end
end
function oyuncuyu_oldur()
    if not getElementData(source,"sq:elenen:oyuncu") then 
        setElementData(source,"sq:elenen:oyuncu",true)
        setTimer(function(source)
            killPed(source)
            removeElementData(source,"sq:elenen:oyuncu")
            for k,v in pairs(evente_katilan_oyuncular) do 
                triggerClientEvent(v,"silah:sesi",v)
            end
        end,1200,1,source)
    end
end
addEvent("oyuncuyu:öldür",true)
addEventHandler("oyuncuyu:öldür",root,oyuncuyu_oldur)
function timerleri_durdur()
    if isTimer(dondurme_timer2) then 
        killTimer(dondurme_timer2)
    end
    if isTimer(dondurme_timer) then 
        killTimer(dondurme_timer)
    end
    if isTimer(oyun_zamani) then 
        killTimer(oyun_zamani)
    end
end
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