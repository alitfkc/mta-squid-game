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
local event_baslama_sure_aktif=false
function event_baslatma()
    if oyuncusayisi>=oyun_baslama_min_oyuncu_sayisi then 
        local event_baslama_suresi=event_baslama_sure/1000-- metinde süreyi saniye cinsinden göstermek için 1000'e böldüm
        if not eventdurum then 
            if not event_baslama_sure_aktif then 
                triggerClientEvent(root,"ust_yazi",root,"Squid Game başlıyor, katılmak için  son "..event_baslama_suresi.." saniye  /sq veya F1>Oyunlar ","info")
                setTimer(event_baslangic,event_baslama_sure,1)
                event_baslama_sure_aktif=true
            end
        end
    end
end
function event_baslangic()
    event_baslama_sure_aktif=false
    eventdurum=true
    for k,v in pairs(evente_katilan_oyuncular) do
        if isPedInVehicle(v) then 
            removePedFromVehicle(v)
        end 
        local ox,oy,oz=getElementPosition(v)
        local oyuncu_skin=getElementModel(v)
        local oyuncuyertablo={ox,oy,oz,oyuncu_skin}
        setElementData(v,"sq:event:onceki:pozisyon:ve:skin",oyuncuyertablo)
        oyuncu_skin=tostring(oyuncu_skin)
        setElementData(v,"sq:event:skin",oyuncu_skin)
        local event_durum=false
        setElementData(v,"sq:event:durum",event_durum)
        local skin=math.random(oyuncu_skin1,oyuncu_skin4)
        local dogma_x=math.random(-3737,-3678)
        local dogma_y=math.random(1682,1688)
        setElementDimension(v,event_dimens)
        setElementModel(v,skin)
        setElementPosition(v,dogma_x,dogma_y, 266.86185)
        setElementRotation(v,0,0,0)
        setElementFrozen(v,true)
        setTimer(function(v)
            setElementFrozen(v,false)
        end,4000,1,v)
        triggerClientEvent(v,"eventi_aktif_et",v)
        setElementData(v,"bebek_elementi",oyun_haritasi.bebek_obje)
    end
    setTimer(function()
        local event_durum=true
        for k,v in pairs(evente_katilan_oyuncular) do
            setElementData(v,"sq:event:durum",eventdurum)
        end
        bebek_dondur()
        oyun_zamani=setTimer(function()
            sure_dolunca_event_bitir()
            triggerClientEvent(root,"ust_yazi",root,"Süre doldu 'Squid Game' Eventini kimse kazanamadı","info")
        end,oyun_suresi,1)
    end,4000,1)
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
