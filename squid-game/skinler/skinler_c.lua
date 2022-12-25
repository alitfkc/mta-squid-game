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
function SkinYukle()
    local txd = engineLoadTXD ('skinler/daire_muhafiz.txd')
    engineImportTXD(txd,muhafiz_skin_id)
    local dff = engineLoadDFF('skinler/daire_muhafiz.dff',muhafiz_skin_id)
    engineReplaceModel(dff,muhafiz_skin_id)

    local txd1 = engineLoadTXD ('skinler/skin1.txd')
    engineImportTXD(txd1,oyuncu_skin1)
    local dff1 = engineLoadDFF('skinler/skin1.dff',oyuncu_skin1)
    engineReplaceModel(dff1,oyuncu_skin1)

    local txd2 = engineLoadTXD ('skinler/skin2.txd')
    engineImportTXD(txd2,oyuncu_skin2)
    local dff2 = engineLoadDFF('skinler/skin2.dff',oyuncu_skin2)
    engineReplaceModel(dff2,oyuncu_skin2)

    local txd3 = engineLoadTXD ('skinler/skin3.txd')
    engineImportTXD(txd3,oyuncu_skin3)
    local dff3 = engineLoadDFF('skinler/skin3.dff',oyuncu_skin3)
    engineReplaceModel(dff3,oyuncu_skin3)

    local txd4 = engineLoadTXD ('skinler/skin4.txd')
    engineImportTXD(txd4,oyuncu_skin4)
    local dff4 = engineLoadDFF('skinler/skin4.dff',oyuncu_skin4)
    engineReplaceModel(dff4,oyuncu_skin4)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),SkinYukle)
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

