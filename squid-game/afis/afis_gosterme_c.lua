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
addEventHandler("onClientResourceStart",resourceRoot,function()
    local ekrang,ekranw=guiGetScreenSize()
    main=guiCreateWindow((ekrang-770)/2,(ekranw-452.25)/2,770,452.25,"Atatürk Gaming",false)
    --BAŞLIK
    resim=guiCreateStaticImage(10,25,750,422.25,'afis/sq_afis.jpeg',false,main)
    --kapatmabuton=guiCreateButton(360,30,50,30,"Kapat",false,main)
    yazi=guiCreateLabel(10,0,250,25,"Afişi kapatmak için resme tıkla",false,main)
    guiSetFont(yazi,"default-bold-small")
    guiLabelSetColor(yazi,255,0,0)
    yazi1=guiCreateLabel(590,0,250,25,"Afişi kapatmak için resme tıkla",false,main)
    guiSetFont(yazi1,"default-bold-small")
    guiLabelSetColor(yazi1,255,0,0)
    guiSetVisible(main,false)
end)
function panelac()
    if guiGetVisible(main) then 
        guiSetVisible(main,false)
        showCursor(false)
    else
        guiSetVisible(main,true)
        showCursor(true)
    end
end
addEvent("sq_event_afis_ac",true)
addEventHandler("sq_event_afis_ac",localPlayer,panelac)
addEventHandler("onClientGUIClick",resourceRoot,function()
    if source== resim then 
        guiSetVisible(main,false)
        showCursor(false)
    end
end)
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