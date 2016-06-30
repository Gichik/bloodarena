LinkLuaModifier( "modifier_power_over_spirits", "modifiers/modifier_power_over_spirits.lua", LUA_MODIFIER_MOTION_NONE )

function SetAbilityBlur(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,0)
local ability = hero:AddAbility("phantom_assassin_blur")
ability:SetLevel(1)
hero:AddAbility("ShadowStrike")
hero:AddAbility("PhantomStrike")
hero:AddAbility("WindWalk") 
end


function SetAbilityDragonBlood(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,0)
local ability = hero:AddAbility("dragon_knight_dragon_blood")
ability:SetLevel(1)
hero:AddAbility("DragonTail")
hero:AddAbility("BlinkStrike")
hero:AddAbility("BerserkersCall") 
end

function SetAbilityDispersion(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,0)
local ability = hero:AddAbility("spectre_dispersion")
ability:SetLevel(1)
hero:AddAbility("BerserkersCallD")
hero:AddAbility("PhantomStrikeD")
hero:AddAbility("ManaShield") 
end

function SetAbilityExterior(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,0)
local ability = hero:AddAbility("tiny_craggy_exterior")
ability:SetLevel(1)
hero:AddAbility("StormBolt")
hero:AddAbility("BatteryAssault")
hero:AddAbility("OpenWounds") 
end
---------------------second stages--------------------

function SetAbilityShadowStrike(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("queenofpain_shadow_strike")
ability:SetLevel(1)
hero:AddAbility("PoisonSting")
hero:AddAbility("ViperNethertoxin")
end

function SetAbilityPhantomStrike(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("phantom_assassin_phantom_strike")
ability:SetLevel(1)
hero:AddAbility("Frostmourne")
hero:AddAbility("TimeLock")
end

function SetAbilityWindWalk(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("clinkz_wind_walk")
ability:SetLevel(1)
hero:AddAbility("ShurikenToss")
hero:AddAbility("Jinada")
end

function SetAbilityDragonTail(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("dragon_knight_dragon_tail")
ability:SetLevel(1)
hero:AddAbility("Shukuchi")
hero:AddAbility("Totem")
end

function SetAbilityBlinkStrike(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("riki_blink_strike")
ability:SetLevel(1)
hero:AddAbility("Invisibility")
hero:AddAbility("EssenceShift")
end

function SetAbilityBerserkersCall(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("axe_berserkers_call")
ability:SetLevel(1)
hero:AddAbility("CounterHelix")
hero:AddAbility("MomentOfCourage")
end

function SetAbilityBerserkersCallD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("axe_berserkers_call")
ability:SetLevel(1)
hero:AddAbility("CounterHelixD")
hero:AddAbility("MomentOfCourageD")
end

function SetAbilityPhantomStrikeD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("phantom_assassin_phantom_strike")
ability:SetLevel(1)
hero:AddAbility("EssenceShiftD")
hero:AddAbility("TotemD")
end

function SetAbilityManaShield(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("medusa_mana_shield")
ability:SetLevel(1)
hero:AddAbility("VampiricAura")
hero:AddAbility("TimeLockD")
end

function SetAbilityStormBolt(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("sven_storm_bolt")
ability:SetLevel(1)
hero:AddAbility("Overpower")
hero:AddAbility("ManaBreak")
end

function SetAbilityBatteryAssault(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("rattletrap_battery_assault")
ability:SetLevel(1)
hero:AddAbility("PressTheAttack")
hero:AddAbility("MomentOfCourageE")
end

function SetAbilityOpenWounds(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,1)
local ability = hero:AddAbility("life_stealer_open_wounds")
ability:SetLevel(1)
hero:AddAbility("InnerBeast")
hero:AddAbility("Rage")
end
---------------------third stages--------------------

function SetAbilityPoisonSting(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("venomancer_poison_sting")
ability:SetLevel(1)
hero:AddAbility("CullingBlade")
hero:AddAbility("AmplifyDamage")
end

function SetAbilityViperNethertoxin(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("viper_nethertoxin")
ability:SetLevel(1)
hero:AddAbility("AmplifyDamage")
hero:AddAbility("Rupture")
end

function SetAbilityFrostmourne(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("abaddon_frostmourne")
ability:SetLevel(1)
hero:AddAbility("Duel")
hero:AddAbility("BattleTrance")
end

function SetAbilityTimeLock(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("faceless_void_time_lock")
ability:SetLevel(1)
hero:AddAbility("BattleTrance")
hero:AddAbility("AmplifyDamage")
end

function SetAbilityShurikenToss(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("bounty_hunter_shuriken_toss")
ability:SetLevel(1)
hero:AddAbility("CoupDeGrace")
hero:AddAbility("PrimalRoar")
end

function SetAbilityJinada(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("bounty_hunter_jinada")
ability:SetLevel(1)
hero:AddAbility("PrimalRoar")
hero:AddAbility("InsatiableHunger")
end

function SetAbilityShukuchi(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("weaver_shukuchi")
ability:SetLevel(1)
hero:AddAbility("ElderDragonForm")
hero:AddAbility("Enrage")
end

function SetAbilityTotem(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("earthshaker_enchant_totem")
ability:SetLevel(1)
hero:AddAbility("Enrage")
hero:AddAbility("AmplifyDamage")
end

function SetAbilityInvisibility(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("riki_permanent_invisibility")
ability:SetLevel(1)
hero:AddAbility("BattleTrance")
hero:AddAbility("Marksmanship")
end

function SetAbilityEssenceShift(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("slark_essence_shift")
ability:SetLevel(1)
hero:AddAbility("Marksmanship")
hero:AddAbility("InsatiableHunger")
end

function SetAbilityCounterHelix(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("axe_counter_helix")
ability:SetLevel(1)
hero:AddAbility("GodsStrength")
hero:AddAbility("Duel")
end

function SetAbilityMomentOfCourage(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("legion_commander_moment_of_courage")
ability:SetLevel(1)
hero:AddAbility("Duel")
hero:AddAbility("BorrowedTime")
end

function SetAbilityTimeLockD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("faceless_void_time_lock")
ability:SetLevel(1)
hero:AddAbility("AmplifyDamage")
hero:AddAbility("BattleTrance")
end

function SetAbilityTotemD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("earthshaker_enchant_totem")
ability:SetLevel(1)
hero:AddAbility("Reincarnation")
hero:AddAbility("Warpath")
end

function SetAbilityEssenceShiftD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("slark_essence_shift")
ability:SetLevel(1)
hero:AddAbility("BattleTrance")
hero:AddAbility("Reincarnation")
end

function SetAbilityCounterHelixD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("axe_counter_helix")
ability:SetLevel(1)
hero:AddAbility("CullingBlade")
hero:AddAbility("BorrowedTime")
end

function SetAbilityMomentOfCourageD(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("legion_commander_moment_of_courage")
ability:SetLevel(1)
hero:AddAbility("Enrage")
hero:AddAbility("CullingBlade")
end

function SetAbilityVampiricAura(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("skeleton_king_vampiric_aura")
ability:SetLevel(1)
hero:AddAbility("CoupDeGrace")
hero:AddAbility("AmplifyDamage")
end

function SetAbilityOverpower(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("ursa_overpower")
ability:SetLevel(1)
hero:AddAbility("GodsStrength")
hero:AddAbility("Sunder")
end

function SetAbilityManaBreak(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("antimage_mana_break")
ability:SetLevel(1)
hero:AddAbility("Sunder")
hero:AddAbility("ManaVoid")
end

function SetAbilityPressTheAttack(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("legion_commander_press_the_attack")
ability:SetLevel(1)
hero:AddAbility("AmplifyDamage")
hero:AddAbility("Duel")
end

function SetAbilityMomentOfCourageE(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("legion_commander_moment_of_courage")
ability:SetLevel(1)
hero:AddAbility("Duel")
hero:AddAbility("Marksmanship")
end

function SetAbilityInnerBeast(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("beastmaster_inner_beast")
ability:SetLevel(1)
hero:AddAbility("CoupDeGrace")
hero:AddAbility("BorrowedTime")
end

function SetAbilityRage(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,2)
local ability = hero:AddAbility("life_stealer_rage")
ability:SetLevel(1)
hero:AddAbility("BorrowedTime")
hero:AddAbility("StoneGaze")
end
---------------------end stages--------------------

function SetAbilityCullingBlade(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("axe_culling_blade")
ability:SetLevel(1)
end

function SetAbilityAmplifyDamage(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("slardar_amplify_damage")
ability:SetLevel(1)
end

function SetAbilityRupture(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("bloodseeker_rupture")
ability:SetLevel(1)
end

function SetAbilityDuel(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("legion_commander_duel")
ability:SetLevel(1)
end

function SetAbilityBattleTrance(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("troll_warlord_battle_trance")
ability:SetLevel(1)
end

function SetAbilityCoupDeGrace(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("phantom_assassin_coup_de_grace")
ability:SetLevel(1)
end

function SetAbilityPrimalRoar(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("beastmaster_primal_roar")
ability:SetLevel(1)
end

function SetAbilityInsatiableHunger(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("broodmother_insatiable_hunger")
ability:SetLevel(1)
end

function SetAbilityElderDragonForm(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("dragon_knight_elder_dragon_form")
ability:SetLevel(1)
end

function SetAbilityEnrage(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("ursa_enrage")
ability:SetLevel(1)
end

function SetAbilityMarksmanship(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("drow_ranger_marksmanship_custom")
ability:SetLevel(1)
end

function SetAbilityGodsStrength(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("sven_gods_strength")
ability:SetLevel(1)
end

function SetAbilityBorrowedTime(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("abaddon_borrowed_time")
ability:SetLevel(1)
end

function SetAbilityWarpath(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("bristleback_warpath")
ability:SetLevel(1)
end

function SetAbilityReincarnation(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("skeleton_king_reincarnation")
ability:SetLevel(1)
end

function SetAbilitySunder(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("terrorblade_sunder")
ability:SetLevel(1)
end

function SetAbilityManaVoid(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("antimage_mana_void")
ability:SetLevel(1)
end

function SetAbilityStoneGaze(data)
local hero = data.caster
RemoveAbilitiOfChoise(hero,3)
local ability = hero:AddAbility("medusa_stone_gaze")
ability:SetLevel(1)
end

function RemoveAbilitiOfChoise(hero,number)
for i = number, 5 do
	local ability = hero:GetAbilityByIndex(i)
	if ability ~= nil and ability:GetAbilityName() ~= "attribute_bonus" then
		hero:RemoveAbility(ability:GetAbilityName())
	end
end
end