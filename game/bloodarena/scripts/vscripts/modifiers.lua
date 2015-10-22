function GiveGold(keys)
	local target = keys.target
	local player = keys.attacker	

	if target:GetUnitName() == "unit_giver_of_gold" then
		PlayerResource:ModifyGold(player:GetPlayerOwnerID(), 25, false, 0)
		BA:PlusParticle(25, Vector(244,201,23), 3.0, player)
	end
	
	if target:GetUnitName() == "unit_giver_of_gold_two" then
		PlayerResource:ModifyGold(player:GetPlayerOwnerID(), 50, false, 0)
		BA:PlusParticle(50, Vector(244,201,23), 3.0, player)
	end	

end


function GiveExp(keys)
	local target = keys.target
	local player = keys.attacker
    local id = player:GetPlayerOwnerID()
	local playerEntity = PlayerResource:GetSelectedHeroEntity(id)
	
	if target:GetUnitName() == "unit_giver_of_exp" then
		playerEntity:AddExperience (20,false,false)
		BA:PlusParticle(20, Vector(22,246,231), 3.0, player)
	end
	
	if target:GetUnitName() == "unit_giver_of_exp_two" then
		playerEntity:AddExperience (40,false,false)
		BA:PlusParticle(40, Vector(22,246,231), 3.0, player)
	end		

end

