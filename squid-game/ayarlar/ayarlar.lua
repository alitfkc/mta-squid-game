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
oyun_baslama_min_oyuncu_sayisi=1
oyun_baslama_max_oyuncu_sayisi=40
event_baslama_sure=10
bebek_kafa_obje_id=1856
bebek_govde_obje_id=1855
event_dimens=2403 --eventin olacağı dimens
oyun_alani_obje_id=1854
butons = {   --yasaklanacak tuşlar
    {"squid_game", -- görevin datası
       {
       ["F1"] = true, -- iptal edilcek tuş
       ["F2"] = true,
       ["F3"] = true,
       ["F4"] = true,
       ["F5"] = true,
       ["F6"] = true,
       ["F7"] = true,
       ["F8"] = true,
       ["F9"] = true,
       ["F10"] = true,
       ["b"] = true,
       ["h"] = true,
       ["j"] = true,
       }  
    },   
}
yasaklanacak_kontroller={"fire", "aim_weapon", "next_weapon", "previous_weapon",  "enter_exit"}
muhafiz_skin_id=185
oyuncu_skin1=43 --oyuncu skinlerini oluştururken 1. skin en küçük ve en büyük skin ile ardışık ilerleyece şekilde yapınız. Örn:skin1=43 skin2=44 skin3=45 skin=46
oyuncu_skin2=44
oyuncu_skin3=45
oyuncu_skin4=46

oyun_suresi=40

afis_gosterme_durum=true -- sc başladığında her giren oyuncuya 1 kez afiş gösterir false yaparak kapatabilirsiniz

bebek_obje_boyut=1.5 --Bebek objesi boyut

eventi_durdurma_yetki="Yetki" --Event durdurma komutu /sqbitir

--Kişi sayısına göre verilecek ödüller
odul_1_min_kisi_sayisi=5
odul_1=50000 --Oyuncuya verilecek para

odul_2_min_kisi_sayisi=10
odul_2={5,41}--Buraya silah id'si girin

odul_3_min_kisi_sayisi=20
odul_3={8,44,42}

--Evente katılan oyuncu sayısı ve eventin durumu kurcalamayınız.
evente_katilan_oyuncular={}
oyuncusayisi=0
eventdurum=false
muhafiz_pedler_tablo={}
dondurme_timer=nil
event_baslama_sure=event_baslama_sure*1000 --kodlama milisaniye ile çalıştığı için saniyeyi 1000 ile çarptım
oyun_suresi=oyun_suresi*1000 -- kodlama milisaniye ile çalıştığı için saniyeyi 1000 ile çarptım



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