

if GetObjectName(GetMyHero()) ~= "Soraka" then return end


local SorakaMenu = Menu("Soraka", "Soraka")

SorakaMenu:SubMenu("AutoMode", "AutoMode")
SorakaMenu.AutoMode:Boolean("W", "Auto W", true)
SorakaMenu.AutoMode:Slider("MHP", "My HP to use W", 300,0,1000,50)
SorakaMenu.AutoMode:Slider("AHP", "Ally HP to use W", 300,0,1000,50)

OnTick(function (myHero)
 


--Auto W on ally
   
        if SorakaMenu.AutoMode.W:Value() and ValidTarget(ally, 2000) and GetCurrentHP(myHero) >= SorakaMenu.AutoMode.MHP:Value() and GetCurrentHP(ally) <= SorakaMenu.AutoMode.AHP:Value() then
            CastTargetSpell(ally, _W)
        end
    
end)
