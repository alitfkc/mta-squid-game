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
function event_bitis_kontrol()
    setTimer(function()
        for k,v in pairs(evente_katilan_oyuncular) do 
            return
        end
        setTimer(function()
            eventdurum=false
            oyuncusayisi=0
            for k,v in pairs(getElementsByType("player")) do
                setElementData(v,"f1:sq:event:oyuncu:sayisi",oyuncusayisi)
            end
        end,2000,1)
        timerleri_durdur()
        setElementPosition(oyun_haritasi.bebek_obje,-3706.96948, 1798.34399, 265.96185)
        setElementRotation(oyun_haritasi.bebek_obje,0,0,180)
        triggerClientEvent(root,"ust_yazi",root,"'Squid Game' Eventini kimse kazanamadı","info")
    end,500,1)
end

function event_oyuncu_olme()
    if getElementData(source,"squid_game") then 
        event_bitis_kontrol()
    end
end
addEventHandler("onPlayerWasted",root,event_oyuncu_olme)
function event_zorla_bitir(oyuncu)
    accountname = getAccountName (getPlayerAccount(oyuncu))
    if not isObjectInACLGroup ( "user." .. accountname, aclGetGroup ( eventi_durdurma_yetki ) ) then 
        return 
    end
    for k,v in pairs(evente_katilan_oyuncular) do
        triggerClientEvent(v,"event:bitti",v) 
    end
    setTimer(function()
        eventdurum=false
        oyuncusayisi=0
        for k,v in pairs(getElementsByType("player")) do
            setElementData(v,"f1:sq:event:oyuncu:sayisi",oyuncusayisi)
        end
    end,1700,1)
    timerleri_durdur()
    setElementPosition(oyun_haritasi.bebek_obje,-3706.96948, 1798.34399, 265.96185)
    setElementRotation(oyun_haritasi.bebek_obje,0,0,180)
    setTimer(function()
        for k,v in pairs(evente_katilan_oyuncular) do
            table.remove(evente_katilan_oyuncular,k)
        end
    end,2000,1)
end
addCommandHandler("sqbitir",event_zorla_bitir)
function event_kazanildi()
    local oyuncu_adi=string.gsub(getPlayerName(source), "#%x%x%x%x%x%x", "") 
    oyuncuyu_odullendir(source,oyuncusayisi)
    triggerClientEvent(root,"ust_yazi",root,"'Squid Game' eventini "..oyuncu_adi.." kazanmıştır.","info")
    for k,v in pairs(evente_katilan_oyuncular) do
        triggerClientEvent(v,"event:bitti",v) 
    end
    setTimer(function()
        eventdurum=false
        oyuncusayisi=0
        for k,v in pairs(getElementsByType("player")) do
            setElementData(v,"f1:sq:event:oyuncu:sayisi",oyuncusayisi)
        end
    end,1700,1)
    timerleri_durdur()
    setElementPosition(oyun_haritasi.bebek_obje,-3706.96948, 1798.34399, 265.96185)
    setElementRotation(oyun_haritasi.bebek_obje,0,0,180)
    setTimer(function()
        for k,v in pairs(evente_katilan_oyuncular) do
            table.remove(evente_katilan_oyuncular,k)
        end
    end,2000,1)
end
addEvent("event:kazanan",true)
addEventHandler("event:kazanan",root,event_kazanildi)
function oyuncuyu_odullendir(oyuncu,oyuncu_sayisi)
    if oyuncu_sayisi>=odul_1_min_kisi_sayisi then 
        givePlayerMoney(oyuncu,odul_1)
    elseif oyuncu_sayisi>=odul_2_min_kisi_sayisi then 
        for k,v in pairs(odul_2) do 
            giveWeapon(oyuncu,v,9999,true)
        end
    elseif oyuncu_sayisi>=odul_3_min_kisi_sayisi then 
        for k,v in pairs(odul_3) do 
            giveWeapon(oyuncu,v,9999,true)
        end
    end
end
function sure_dolunca_event_bitir()
    for k,v in pairs(evente_katilan_oyuncular) do
        triggerClientEvent(v,"event:bitti",v) 
    end
    setTimer(function()
        eventdurum=false
        oyuncusayisi=0
        for k,v in pairs(getElementsByType("player")) do
            setElementData(v,"f1:sq:event:oyuncu:sayisi",oyuncusayisi)
        end
    end,1700,1)
    timerleri_durdur()
    setElementPosition(oyun_haritasi.bebek_obje,-3706.96948, 1798.34399, 265.96185)
    setElementRotation(oyun_haritasi.bebek_obje,0,0,180)
    setTimer(function()
        for k,v in pairs(evente_katilan_oyuncular) do
            table.remove(evente_katilan_oyuncular,k)
        end
    end,2000,1)
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