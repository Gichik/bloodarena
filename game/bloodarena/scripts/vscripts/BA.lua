
--numberOfResp = 0
--heroDie = 0
resolution = 0
xp = 10
gold = 10

playerBG1 = nil
playerBG2 = nil
playerBG3 = nil

playerGG1 = nil
playerGG2 = nil
playerGG3 = nil

pointGG1 = nil
pointGG2 = nil
pointGG3 = nil
pointBG1 = nil
pointBG2 = nil
pointBG3 = nil

pointDireArena1 = nil
pointDireArena2 = nil
pointDireArena3 = nil
pointRadArena1 = nil
pointRadArena2 = nil
pointRadArena3 = nil


function BA:InitGameMode()

	local MapName = GetMapName()
	GameRules:SetCustomGameTeamMaxPlayers( DOTA_TEAM_GOODGUYS, 3 )
	GameRules:SetCustomGameTeamMaxPlayers( DOTA_TEAM_BADGUYS, 3 )
	GameRules:SetSameHeroSelectionEnabled( true )
		
	GameRules:SetTimeOfDay( 0.5 )
	GameRules:SetHeroRespawnEnabled( true )
	GameRules:SetUseUniversalShopMode( true )
	GameRules:SetHeroSelectionTime( 20.0 )
	GameRules:SetPreGameTime( 20.0 )
	GameRules:SetPostGameTime( 60.0 )
	GameRules:SetTreeRegrowTime( 60.0 )
	GameRules:SetHeroMinimapIconScale( 0.7 )
	GameRules:SetCreepMinimapIconScale( 0.7 )
	GameRules:SetRuneMinimapIconScale( 0.7 )
	GameRules:SetGoldTickTime( 60.0 )
	GameRules:SetGoldPerTick( 0 )
	GameRules:GetGameModeEntity():SetRemoveIllusionsOnDeath( true )
	GameRules:GetGameModeEntity():SetTopBarTeamValuesOverride( true )
	GameRules:GetGameModeEntity():SetTopBarTeamValuesVisible( false )
	GameRules:GetGameModeEntity():SetBuybackEnabled( false )
	GameRules:GetGameModeEntity():SetRecommendedItemsDisabled( true )	

	GameRules.DropTable = LoadKeyValues("scripts/kv/item_drops.kv")
	
	
print("------------------------------------game start----------------------------------------")	
--   Say(nil, "game start", false)

	ListenToGameEvent('game_rules_state_change', Dynamic_Wrap(BA, 'OnGameRulesStateChange'), self)
--	ListenToGameEvent('npc_spawned', Dynamic_Wrap(BA, 'OnNPCSpawned'), self)	
    ListenToGameEvent('entity_killed', Dynamic_Wrap(BA, 'OnEntityKilled'), self)
	ListenToGameEvent("dota_player_killed", Dynamic_Wrap(BA, "OnHeroKilled"), self)
	
	pointGG1 = Entities:FindByName( nil, "spawnGG1"):GetAbsOrigin()
	pointGG2 = Entities:FindByName( nil, "spawnGG2"):GetAbsOrigin()
	pointGG3 = Entities:FindByName( nil, "spawnGG3"):GetAbsOrigin()
	pointBG1 = Entities:FindByName( nil, "spawnBG1"):GetAbsOrigin()
	pointBG2 = Entities:FindByName( nil, "spawnBG2"):GetAbsOrigin()
	pointBG3 = Entities:FindByName( nil, "spawnBG3"):GetAbsOrigin()

	pointDireArena1 = Entities:FindByName( nil, "spawn_arena_dire1"):GetAbsOrigin()
	pointDireArena2 = Entities:FindByName( nil, "spawn_arena_dire2"):GetAbsOrigin()
	pointDireArena3 = Entities:FindByName( nil, "spawn_arena_dire3"):GetAbsOrigin()
	pointRadArena1 = Entities:FindByName( nil, "spawn_arena_rad1"):GetAbsOrigin()
	pointRadArena2 = Entities:FindByName( nil, "spawn_arena_rad2"):GetAbsOrigin()
	pointRadArena3 = Entities:FindByName( nil, "spawn_arena_rad3"):GetAbsOrigin()
		
	local pointDireExp1 = Entities:FindByName( nil, "spawnDirExp1"):GetAbsOrigin()
	local pointDireExp2 = Entities:FindByName( nil, "spawnDirExp2"):GetAbsOrigin()
	--local pointDireExp3 = Entities:FindByName( nil, "spawnDirExp3"):GetAbsOrigin()

	local pointDireGold1 = Entities:FindByName( nil, "spawnDirGold1"):GetAbsOrigin()
	local pointDireGold2 = Entities:FindByName( nil, "spawnDirGold2"):GetAbsOrigin()
	--local pointDireGold3 = Entities:FindByName( nil, "spawnDirGold3"):GetAbsOrigin()

	local pointRadExp1 = Entities:FindByName( nil, "spawnRadExp1"):GetAbsOrigin()
	local pointRadExp2 = Entities:FindByName( nil, "spawnRadExp2"):GetAbsOrigin()
	--local pointRadExp3 = Entities:FindByName( nil, "spawnRadExp3"):GetAbsOrigin()

	local pointRadGold1 = Entities:FindByName( nil, "spawnRadGold1"):GetAbsOrigin()
	local pointRadGold2 = Entities:FindByName( nil, "spawnRadGold2"):GetAbsOrigin()
	--local pointRadGold3 = Entities:FindByName( nil, "spawnRadGold3"):GetAbsOrigin()


	local DireExp1 = CreateUnitByName("unit_giver_of_exp", pointDireExp1, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local DireExp2 = CreateUnitByName("unit_giver_of_exp_two", pointDireExp2, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	--local DireExp3 = CreateUnitByName("dire_urs_exp", pointDireExp3, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local DireGold1 = CreateUnitByName("unit_giver_of_gold", pointDireGold1, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local DireGold2 = CreateUnitByName("unit_giver_of_gold_two", pointDireGold2, true, nil, nil, DOTA_TEAM_NEUTRALS )
	--local DireGold3 = CreateUnitByName("dire_urs_gold", pointDireGold3, true, nil, nil, DOTA_TEAM_NEUTRALS )

	local RadExp1 = CreateUnitByName("unit_giver_of_exp", pointRadExp1, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local RadExp2 = CreateUnitByName("unit_giver_of_exp_two", pointRadExp2, true, nil, nil, DOTA_TEAM_NEUTRALS )
	--local RadExp3 = CreateUnitByName("rad_urs_exp", pointRadExp3, true, nil, nil, DOTA_TEAM_NEUTRALS )  
	local RadGold1 = CreateUnitByName("unit_giver_of_gold", pointRadGold1, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local RadGold2 = CreateUnitByName("unit_giver_of_gold_two", pointRadGold2, true, nil, nil, DOTA_TEAM_NEUTRALS )
	--local RadGold3 = CreateUnitByName("rad_urs_gold", pointRadGold3, true, nil, nil, DOTA_TEAM_NEUTRALS )
	
	local pointDireTrainer = Entities:FindByName( nil, "spawnDireTrainer"):GetAbsOrigin()
	local pointRadTrainer = Entities:FindByName( nil, "spawnRadTrainer"):GetAbsOrigin()
	local pointBossUrsa = Entities:FindByName( nil, "spawnBoss"):GetAbsOrigin()
	
	local DireTrainer = CreateUnitByName("dire_trainer", pointDireTrainer, true, nil, nil, DOTA_TEAM_NEUTRALS )	
	local RadTrainer = CreateUnitByName("radiante_trainer", pointRadTrainer, true, nil, nil, DOTA_TEAM_NEUTRALS ) 
	local BossUrsa = CreateUnitByName("champion_ursa", pointBossUrsa, true, nil, nil, DOTA_TEAM_NEUTRALS )	
	
end

--IsCreature()

function BA:MessageToStage(count)

	Timers:CreateTimer(count, function()
 	local messageinfo = { message = "The roar of the crowd heralds the imminent battle!", duration = 5}
	FireGameEvent("show_center_message",messageinfo) 
	end)
	
end

function BA:OnGameRulesStateChange(keys)
  local newState = GameRules:State_Get()
  if newState == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
    BA:RunStages()
  end
end


function BA:RunStages()
print("RunStages Function")

-------------------------------
--first stages
-------------------------------
BA:MessageToStage(345)
Timers:CreateTimer(360, function()
		 
	if PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) ~= 0 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) ~= 0 then
		print("Run 1 Stage")				
		BA:GivePlayers()
		playerGG1:SetAbsOrigin(pointRadArena1)
		playerBG1:SetAbsOrigin(pointDireArena1)
		print("players moved")
		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(1)
			print("stage end")	
			return nil
		end)		
	
	end			
	return nil
end)



-------------------------------
--second stages
-------------------------------
BA:MessageToStage(705)
Timers:CreateTimer(720, function()
		 
	if PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) > 1 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) > 1 then
		print("Run 2 Stage")	
		BA:GivePlayers()
		
		if playerGG3 ~= nil then	
			playerGG3:SetAbsOrigin(pointRadArena3)
			playerGG2:SetAbsOrigin(pointRadArena2)
		else 		
			playerGG1:SetAbsOrigin(pointRadArena1)
			playerGG2:SetAbsOrigin(pointRadArena2)
		end

		if playerBG3 ~= nil then	
			playerBG3:SetAbsOrigin(pointDireArena3)
			playerBG2:SetAbsOrigin(pointDireArena2)
		else 	
			playerBG1:SetAbsOrigin(pointDireArena1)
			playerBG2:SetAbsOrigin(pointDireArena2)
		end		
		
	
		print("players moved")		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(2)
			print("stage end")	
			return nil
		end)		
	
	
	elseif PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) ~= 0 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) ~= 0 then
		print("Run 2 1x1 Stage")				
		BA:GivePlayers()
		playerGG1:SetAbsOrigin(pointRadArena1)
		playerBG1:SetAbsOrigin(pointDireArena1)
		print("players moved")
		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(1)
			print("stage end")	
			return nil
		end)			
	
	end			
	return nil


end)

			

-------------------------------
--third stages
-------------------------------
BA:MessageToStage(1065)
Timers:CreateTimer(1080, function()
		 
	if PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) > 2 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) > 2 then
		print("Run 3 Stage")	
		BA:GivePlayers()

		playerGG1:SetAbsOrigin(pointRadArena1)
		playerGG3:SetAbsOrigin(pointRadArena3)
		playerGG2:SetAbsOrigin(pointRadArena2)

		playerBG1:SetAbsOrigin(pointDireArena1)	
		playerBG3:SetAbsOrigin(pointDireArena3)
		playerBG2:SetAbsOrigin(pointDireArena2)


		print("players moved")		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(3)
			print("stage end")	
			return nil
		end)		
	
	elseif PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) ~= 0 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) ~= 0 then
		print("Run 3 1x1 Stage")				
		BA:GivePlayers()
		
		if playerGG2 ~= nil then		
			playerGG2:SetAbsOrigin(pointRadArena2)
		else
			playerGG1:SetAbsOrigin(pointRadArena1)
		end
		
		if playerBG2 ~= nil then		
			playerBG2:SetAbsOrigin(pointDireArena2)
		else
			playerBG1:SetAbsOrigin(pointDireArena1)
		end
		
		
		print("players moved")
		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(5)
			print("stage end")	
			return nil
		end)
		
	end	
	
	return nil
end)			
			

-------------------------------
--fourth stages
-------------------------------
BA:MessageToStage(1425)
Timers:CreateTimer(1440, function()
		 
	if PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) > 1 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) > 1 then
		print("Run 4 Stage")	
		BA:GivePlayers()
		
		if playerGG3 ~= nil then
			playerGG3:SetAbsOrigin(pointRadArena3)
			playerGG1:SetAbsOrigin(pointRadArena1)
		else 		
			playerGG1:SetAbsOrigin(pointRadArena1)
			playerGG2:SetAbsOrigin(pointRadArena2)
		end

		if playerBG3 ~= nil then
			playerBG3:SetAbsOrigin(pointDireArena3)
			playerBG1:SetAbsOrigin(pointDireArena1)
		else 	
			playerBG1:SetAbsOrigin(pointDireArena1)
			playerBG2:SetAbsOrigin(pointDireArena2)
		end		
		
	
		print("players moved")		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(4)
			print("stage end")	
			return nil
		end)


	elseif PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) ~= 0 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) ~= 0 then
		print("Run 2 1x1 Stage")				
		BA:GivePlayers()
		playerGG1:SetAbsOrigin(pointRadArena1)
		playerBG1:SetAbsOrigin(pointDireArena1)
		print("players moved")
		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(1)
			print("stage end")	
			return nil
		end)			
	
	end			
	return nil
end)



-------------------------------
--fifth stages
-------------------------------
BA:MessageToStage(1785)
Timers:CreateTimer(1800, function()
		 
	if PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_GOODGUYS) ~= 0 and PlayerResource:GetPlayerCountForTeam(DOTA_TEAM_BADGUYS) ~= 0 then
		print("Run 5 Stage")

			
		BA:GivePlayers()

		
		if playerGG3 ~= nil then
			playerGG3:SetAbsOrigin(pointRadArena3)
		elseif 	playerGG2 ~= nil then	
			playerGG2:SetAbsOrigin(pointRadArena2)
		else
			playerGG1:SetAbsOrigin(pointRadArena1)
		end

		if playerBG3 ~= nil then
			playerBG3:SetAbsOrigin(pointDireArena3)
		elseif playerBG2 ~= nil then 	
			playerBG2:SetAbsOrigin(pointDireArena2)
		else
			playerBG1:SetAbsOrigin(pointDireArena1)
		end	
								
		print("players moved")
		
		Timers:CreateTimer(90, function()
			print("return run")
			BA:ReturnPlayersBack(5)
			print("stage end")	

			
			print("killsGG:" .. PlayerResource:GetTeamKills(DOTA_TEAM_GOODGUYS) )
			print("killsBG:" .. PlayerResource:GetTeamKills(DOTA_TEAM_BADGUYS) )
			
		if PlayerResource:GetTeamKills(DOTA_TEAM_GOODGUYS) >= PlayerResource:GetTeamKills(DOTA_TEAM_BADGUYS)	then
			GameRules:SetGameWinner(DOTA_TEAM_GOODGUYS)
		else
			GameRules:SetGameWinner(DOTA_TEAM_BADGUYS)
		end
		
		return nil
		end)		
	
	end			
	return nil
end)


			
			
			

end


function BA:setNillForHero()
playerBG1 = nil
playerBG2 = nil
playerBG3 = nil

playerGG1 = nil
playerGG2 = nil
playerGG3 = nil
end


function BA:GivePlayers()
print("function GivePlayers")

BA:setNillForHero()

	for i = 0, 5 do
		print("search players")
		if PlayerResource:IsValidPlayer(i) then
			print("player find")
			local playerEntity = PlayerResource:GetSelectedHeroEntity(i)
			local teamNumb = playerEntity:GetTeamNumber()
			local name =  GetTeamName(teamNumb)
			
			if name == "#DOTA_BadGuys" then 
				print("pBG find")
				if  playerBG1 == nil then
					playerBG1 = playerEntity
				elseif playerBG2 == nil then
					playerBG2 = playerEntity
				elseif playerBG3 == nil then
					playerBG3 = playerEntity					
				end			
			elseif name == "#DOTA_GoodGuys" then
				print("pGG find")
				if  playerGG1 == nil then
					playerGG1 = playerEntity
				elseif playerGG2 == nil then
					playerGG2 = playerEntity
				elseif playerGG3 == nil then
					playerGG3 = playerEntity					
				end						
			end

		end
	  
	end	

end


function BA:ReturnPlayersBack(typeFunction)


if typeFunction == 1 then
	
	if playerGG1 ~= nil then
		playerGG1:SetAbsOrigin(pointGG1)
	end
	
	if playerBG1 ~= nil then
		playerBG1:SetAbsOrigin(pointBG1)
	end
	
end

if typeFunction == 2 then

	if playerGG3 ~= nil then
		playerGG2:SetAbsOrigin(pointGG2)
		playerGG3:SetAbsOrigin(pointGG3)
	else
		playerGG1:SetAbsOrigin(pointGG1)
		playerGG2:SetAbsOrigin(pointGG2)
	end

	if playerBG3 ~= nil then
		playerBG2:SetAbsOrigin(pointBG2)
		playerBG3:SetAbsOrigin(pointBG3)
	else
		playerBG1:SetAbsOrigin(pointBG1)
		playerBG2:SetAbsOrigin(pointBG2)
	end	
	
end

if typeFunction == 3 then

	playerGG1:SetAbsOrigin(pointGG1)
	playerGG2:SetAbsOrigin(pointGG2)
	playerGG3:SetAbsOrigin(pointGG3)

	playerBG1:SetAbsOrigin(pointBG1)
	playerBG2:SetAbsOrigin(pointBG2)
	playerBG3:SetAbsOrigin(pointBG3)
	
end

if typeFunction == 4 then

		if playerGG3 ~= nil then
			playerGG3:SetAbsOrigin(pointGG3)
			playerGG1:SetAbsOrigin(pointGG1)
		else 		
			playerGG1:SetAbsOrigin(pointGG1)
			playerGG2:SetAbsOrigin(pointGG2)
		end

		if playerBG3 ~= nil then
			playerBG3:SetAbsOrigin(pointBG3)
			playerBG1:SetAbsOrigin(pointBG1)
		else 	
			playerBG1:SetAbsOrigin(pointBG1)
			playerBG2:SetAbsOrigin(pointBG2)
		end	

end

if typeFunction == 5 then

		if playerGG3 ~= nil then
			playerGG3:SetAbsOrigin(pointGG3)
		elseif 	playerGG2 ~= nil then	
			playerGG2:SetAbsOrigin(pointGG2)
		else
			playerGG1:SetAbsOrigin(pointGG1)
		end

		if playerBG3 ~= nil then
			playerBG3:SetAbsOrigin(pointBG3)
		elseif playerBG2 ~= nil then 	
			playerBG2:SetAbsOrigin(pointBG2)
		else
			playerBG1:SetAbsOrigin(pointBG1)
		end	

end



end


function BA:OnEntityKilled (data)
    local killedUnit = EntIndexToHScript( data.entindex_killed )
	
	if killedUnit:IsNeutralUnitType() or killedUnit:IsCreature() then
        BA:RollDrops(killedUnit)
    end
			
    if killedUnit:GetUnitName() == "dire_trainer" then
		Timers:CreateTimer(60, function()
		local point1 = Entities:FindByName( nil, "spawnDireTrainer"):GetAbsOrigin()
		local unit1 = CreateUnitByName("dire_trainer", point1, true, nil, nil, DOTA_TEAM_NEUTRALS )  
		end)		
    end
	
    if killedUnit:GetUnitName() == "radiante_trainer" then
		Timers:CreateTimer(60, function()
		local point1 = Entities:FindByName( nil, "spawnRadTrainer"):GetAbsOrigin()
		local unit1 = CreateUnitByName("radiante_trainer", point1, true, nil, nil, DOTA_TEAM_NEUTRALS )  
		end)		
    end

    if killedUnit:GetUnitName() == "champion_ursa" then
		local killer = EntIndexToHScript( data.entindex_attacker )
		local nameHero = BA:GiveNameHero( killer:GetName() )
		local messageinfo = { message = "Champion URSA was defeated by " .. nameHero .. "!" , duration = 5}
		FireGameEvent("show_center_message",messageinfo) 
		Timers:CreateTimer(120, function()
		local point1 = Entities:FindByName( nil, "spawnBoss"):GetAbsOrigin()
		local unit1 = CreateUnitByName("champion_ursa", point1, true, nil, nil, DOTA_TEAM_NEUTRALS )  
		end)		
    end


	
	if killedUnit:GetUnitName() == "unit_giver_of_gold" or killedUnit:GetUnitName() == "unit_giver_of_gold_two" then
		local messageinfo = { message = "Omg, you killed kenny! You bastards!", duration = 5}
		FireGameEvent("show_center_message",messageinfo)       
    end
	
	if killedUnit:GetUnitName() == "unit_giver_of_exp" or killedUnit:GetUnitName() == "unit_giver_of_exp_two" then
		local messageinfo = { message = "Omg, you killed kenny! You bastards!", duration = 5}
		FireGameEvent("show_center_message",messageinfo)       
    end
	
end

 
function BA:OnHeroKilled (data)


	local killedEntity = PlayerResource:GetSelectedHeroEntity(data.PlayerID)
	if killedEntity:GetNumItemsInInventory() ~=0 then

	local item = killedEntity:GetItemInSlot(RandomInt(0, 5));
	if item ~= nil then
		local position = killedEntity:GetAbsOrigin()
		local name = item:GetAbilityName()
		killedEntity:RemoveItem(item)		
		BA:CreateDrop(name, position)
	end
	
	if RandomInt(1, 10) > 5 then	
		local item2 = killedEntity:GetItemInSlot(RandomInt(0, 5));
		if item2 ~= nil then
			local position = killedEntity:GetAbsOrigin()
			local name = item2:GetAbilityName()
			killedEntity:RemoveItem(item2)		
			BA:CreateDrop(name, position)
		end
	end	
		
   end

   
   

    local nameHero = BA:GiveNameHero( PlayerResource:GetSelectedHeroName(data.PlayerID) )
	GameRules:SendCustomMessage("<font color='#58ACFA'>Gladiator " .. nameHero .. " die!</font>", 0, 0)
  
	--heroDie = 1
	
end

   
  function BA:RollDrops(unit)
    local DropInfo = GameRules.DropTable[unit:GetUnitName()]
    if DropInfo then
        for item_name,chance in pairs(DropInfo) do
            if RollPercentage(chance) then
                -- Create the item
                local item = CreateItem(item_name, nil, nil)
                local pos = unit:GetAbsOrigin()
                local drop = CreateItemOnPositionSync( pos, item )
                local pos_launch = pos+RandomVector(RandomFloat(150,200))
                item:LaunchLoot(false, 200, 0.75, pos_launch)
            end
        end
    end
end 

 
function BA:CreateDrop (itemName, pos)
   local newItem = CreateItem(itemName, nil, nil)
   newItem:SetPurchaseTime(0)
   CreateItemOnPositionSync(pos, newItem)
   newItem:LaunchLoot(false, 300, 0.75, pos + RandomVector(RandomFloat(50, 350)))
end 
  
 --[[
function BA:OnNPCSpawned(data)


local npc = EntIndexToHScript(data.entindex)

	if npc:IsHero() then
		
		if resolution == 1 then
			print("xp: " .. xp)
			print("gold: " .. gold)
			BA:SetExpnGold(npc,xp,gold)
		end
				
		
		print("OnNPCSpawnPlayer")
		if heroDie ~= 0 then

			if numberOfResp > 20 then
				numberOfResp = 0
			end
			local id = npc:GetPlayerOwnerID()
			xp = npc:GetCurrentXP()
			gold = PlayerResource:GetGold(id)
			BA:ReplaceHero(id)
			numberOfResp = numberOfResp + 1
			print("num spawn:" .. numberOfResp)
		end

	end
end
]]
--[[
function BA:SetExpnGold(data, xp, gold)
data:AddExperience(xp,false,false)
data:SetGold(gold, true)
end
]]

function BA:GiveNameHero(data)
local name = ""

if data == "npc_dota_hero_abaddon" then
	name = "abaddon"
elseif data == "npc_dota_hero_alchemist" then
	name = "alchemist"
elseif data == "npc_dota_hero_axe" then
	name = "axe"
elseif data == "npc_dota_hero_beastmaster" then
	name = "beastmaster"
elseif data == "npc_dota_hero_bloodseeker" then
	name = "bloodseeker"
elseif data == "npc_dota_hero_bounty_hunter" then
	name = "bounty hunter"		
elseif data == "npc_dota_hero_brewmaster" then
	name = "brewmaster"	
elseif data == "npc_dota_hero_bristleback" then
	name = "bristleback"
elseif data == "npc_dota_hero_chaos_knight" then
	name = "chaos knight"
elseif data == "npc_dota_hero_dark_seer" then
	name = "dark seer"
elseif data == "npc_dota_hero_dragon_knight" then
	name = "dragon knight"
elseif data == "npc_dota_hero_elder_titan" then
	name = "elder titan"
elseif data == "npc_dota_hero_juggernaut" then
	name = "juggernaut"
elseif data == "npc_dota_hero_legion_commander" then
	name = "legion commander"
elseif data == "npc_dota_hero_lone_druid" then
	name = "lone druid"
elseif data == "npc_dota_hero_luna" then
	name = "luna"
elseif data == "npc_dota_hero_lycan" then
	name = "lycan"
elseif data == "npc_dota_hero_naga_siren" then
	name = "naga siren"
elseif data == "npc_dota_hero_night_stalker" then
	name = "night stalker"
elseif data == "npc_dota_hero_ogre_magi" then
	name = "ogre magi"
elseif data == "npc_dota_hero_omniknight" then
	name = "omniknight"
elseif data == "npc_dota_hero_phantom_assassin" then
	name = "phantom assassin"
elseif data == "npc_dota_hero_slardar" then
	name = "slardar"
elseif data == "npc_dota_hero_sven" then
	name = "sven"
elseif data == "npc_dota_hero_templar_assassin" then
	name = "templar assassin"
elseif data == "npc_dota_hero_terrorblade" then
	name = "terrorblade"
elseif data == "npc_dota_hero_tiny" then
	name = "tiny"
elseif data == "npc_dota_hero_treant" then
	name = "treant"
elseif data == "npc_dota_hero_tusk" then
	name = "tusk"
elseif data == "npc_dota_hero_skeleton_king" then
	name = "skeleton_king"	
end

return name
end

--[[
function BA:ReplaceHero(id)
			
	heroDie = 0	
	resolution = 1 
	if numberOfResp == 0 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_abaddon", gold, xp)
		elseif numberOfResp == 1 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_alchemist", gold, xp)
		elseif numberOfResp == 2 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_axe", gold, xp)
		elseif numberOfResp == 3 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_bloodseeker", gold, xp)
		elseif numberOfResp == 4 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_bounty_hunter", gold, xp)
		elseif numberOfResp == 5 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_brewmaster", gold, xp)
		elseif numberOfResp == 6 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_bristleback", gold, xp)
		elseif numberOfResp == 7 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_dragon_knight", gold, xp)
		elseif numberOfResp == 8 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_juggernaut", gold, xp)
		elseif numberOfResp == 9 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_legion_commander", gold, xp)
		elseif numberOfResp == 10 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_luna", gold, xp)
		elseif numberOfResp == 11 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_night_stalker", gold, xp)
		elseif numberOfResp == 12 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_omniknight", gold, xp)			
		elseif numberOfResp == 13 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_phantom_assassin", gold, xp)
		elseif numberOfResp == 14 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_slardar", gold, xp)
		elseif numberOfResp == 15 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_sven", gold, xp)
		elseif numberOfResp == 16 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_templar_assassin", gold, xp)
		elseif numberOfResp == 17 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_tiny", gold, xp)
		elseif numberOfResp == 18 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_treant", gold, xp)
		elseif numberOfResp == 19 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_tusk", gold, xp)
		elseif numberOfResp == 20 then
			PlayerResource:ReplaceHeroWith(id, "npc_dota_hero_skeleton_king", gold, xp)
	end
	heroDie = 1
	resolution = 0 				


end
]]

function BA:PlusParticle(number, color, duration, caster)
  POPUP_SYMBOL_PRE_PLUS = 0 -- This makes the + on the message particle
  local pfxPath = string.format("particles/msg_fx/msg_damage.vpcf", pfx)
  local pidx = ParticleManager:CreateParticle(pfxPath, PATTACH_ABSORIGIN_FOLLOW, caster)
  local color = color
  local lifetime = duration
  local digits = #tostring(number) + 1

  ParticleManager:SetParticleControl(pidx, 1, Vector( POPUP_SYMBOL_PRE_PLUS, number, 0 ) )
  ParticleManager:SetParticleControl(pidx, 2, Vector(lifetime, digits, 0))
  ParticleManager:SetParticleControl(pidx, 3, color)
end 
