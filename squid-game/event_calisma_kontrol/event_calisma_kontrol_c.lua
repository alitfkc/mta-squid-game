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
bebek_donme_durum=false
sarki_durum=false
local kazanma_durum=false
local sarki_hizi=1
function event_calisma_render_kontrol()
    speedx, speedy, speedz = getElementVelocity ( localPlayer )
    actualspeed = (speedx^2 + speedy^2 + speedz^2)^(0.5) -- can be: math.sqrt(speedx^2 + speedy^2 + speedz^2)
    kmh = actualspeed * 180
    local ox,oy,oz=getElementPosition(localPlayer)
    local brx,bry,brz=getElementRotation(getElementData(localPlayer,"bebek_elementi"))
    local event_durum=getElementData(localPlayer,"sq:event:durum")
    if brz==0 then 
        bebek_donme_durum=true
        if  sarki_durum and event_durum then 
            --destroyElement(sarki)
            sarki_durum=false 
        end
    else
        bebek_donme_durum=false 
        if  sarki_durum==false and event_durum then 
            sarki=playSound("sesler/bebek_sesi.mp3")
            dondurme_sure=getElementData(localPlayer,"bebek_donme_sure")
            if dondurme_sure==2 then 
                sarki_hizi=2.15
            elseif dondurme_sure==3 then 
                sarki_hizi=1.6
            elseif dondurme_sure==4 then 
                sarki_hizi=1.2
            elseif dondurme_sure==5 then 
                sarki_hizi=1
            elseif dondurme_sure==6 then 
                sarki_hizi=0.85
            end
            setSoundSpeed(sarki,sarki_hizi)
            sarki_durum=true 
        end
    end
    if kmh>1  and bebek_donme_durum  and oy>=1689 and oy<=1795 then -- bebek döndüğünde oyuncuyu öldürmek için
        triggerServerEvent("oyuncuyu:öldür",localPlayer)
    end
    if ox>=-3738 and ox<=-3677 and oy>=1679 and oy<=1805  and oz>=256 and oz<=292  then --oyuncu bir şekilde alanı terk ederse ölür
    else
        triggerServerEvent("oyuncuyu:öldür",localPlayer)
    end
    if oy>=1795 and oy<=1804 then 
        if not kazanma_durum then
            triggerServerEvent("event:kazanan",localPlayer)
            kazanma_durum=true 
            setTimer(function()
                kazanma_durum=false
            end,1000,1)
        end
    end
end 
function goz_sesi()
    playSound("sesler/goz_sesi.mp3")
end
addEvent("goz:sesi",true)
addEventHandler("goz:sesi",localPlayer,goz_sesi)
function silah_sesi()
    playSound("sesler/silah_sesi.mp3")
end
addEvent("silah:sesi",true)
addEventHandler("silah:sesi",localPlayer,silah_sesi)

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
