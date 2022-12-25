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
oyun_haritasi={}
oyun_haritasi.oyun_alani_obje=createObject(oyun_alani_obje_id,-3707.78979, 1729.99048, 265.86185)
oyun_haritasi.bebek_obje=createObject(bebek_kafa_obje_id,-3706.96948, 1798.34399, 265.96185,0,0,180)
setObjectScale(oyun_haritasi.bebek_obje,bebek_obje_boyut)
oyun_haritasi.bebek_govde_obje=createObject(bebek_govde_obje_id,-3706.96948, 1798.34399, 265.86185,0,0,180)
setObjectScale(oyun_haritasi.bebek_govde_obje,bebek_obje_boyut)
oyun_haritasi.bebek_arka_agac=createObject(834,-3706.69580, 1800.54993, 268.26185)
oyun_haritasi.bebek_arka_agac_dal1=createObject(844,-3704.69580, 1800.54993, 271.26185,0,0,30)
oyun_haritasi.bebek_arka_agac_dal2=createObject(844,-3706.69580, 1799.74993, 272.26185,0,270,30)
oyun_haritasi.bebek_arka_agac_dal3=createObject(844,-3708.69580, 1799.74993, 272.26185,270,180,30)
for k,v in pairs(oyun_haritasi) do 
    setElementDimension(v,event_dimens)
end
muhafiz_pedler_tablo.muhafiz_ped1=createPed(muhafiz_skin_id,-3710.49414, 1797.77405, 266.86185)
setElementRotation(muhafiz_pedler_tablo.muhafiz_ped1,0,0,180)
muhafiz_pedler_tablo.muhafiz_ped2=createPed(muhafiz_skin_id,-3704.34424, 1797.77405, 266.86185)
setElementRotation(muhafiz_pedler_tablo.muhafiz_ped2,0,0,180)
for k,v in pairs(muhafiz_pedler_tablo) do 
    giveWeapon(v,31,9999,true)
    setElementFrozen(v,true)
    setElementData(v,"ped_hasar_engelleyici",true)
    setElementDimension(v,event_dimens)
end 
local bitis_cizgi_sayac=0
local bitis_cizgi_x=-3737.15
while bitis_cizgi_sayac<60 do 
    bitis_cizgi_sayac=bitis_cizgi_sayac+1
    bitis_cizgi=createObject(1434,bitis_cizgi_x,1795.54016, 265.16185)
    bitis_cizgi_x=bitis_cizgi_x+1,18
    setElementFrozen(bitis_cizgi,true)
    setElementDimension(bitis_cizgi,event_dimens)
end
local baslangic_cizgi_sayac=0
local baslangic_cizgi_x=-3737.15
while baslangic_cizgi_sayac<60 do 
    baslangic_cizgi_sayac=baslangic_cizgi_sayac+1
    baslangic_cizgi=createObject(1434,baslangic_cizgi_x,1689.195, 265.16185)
    baslangic_cizgi_x=baslangic_cizgi_x+1,18
    setElementFrozen(baslangic_cizgi,true)
    setElementDimension(baslangic_cizgi,event_dimens)
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