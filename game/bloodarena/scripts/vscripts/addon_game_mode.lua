-- Generated from template


if BA == nil then
	_G.BA = class({})
	print("BA beta")
end

require( 'BA' )
require( 'timers' )



function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
print("----------------------------------------PRECACHE----------------------------------------")


local pathToIG = LoadKeyValues("scripts/items/items_game.txt") -- загружаем весь файл

PrecacheModel("models/props_debris/wood_fence001g.vmdl", context)
PrecacheModel("models/heroes/earth_spirit/stonesummon.vmdl", context)

PrecacheModel("models/heroes/ursa/ursa.vmdl", context)
PrecacheModel("models/heroes/beastmaster/beastmaster.vmdl", context)

PrecacheResource( "particle_folder", "particles/units/heroes/hero_ursa", context )
PrecacheResource( "particle_folder", "particles/units/heroes/hero_enchantress", context )

	---------------------------------sounds------------------------------	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_phantom_assassin.vsndevts", context )		
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_queenofpain.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_venomancer.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_axe.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_slardar.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_bloodseeker.vsndevts", context )		
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_viper.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_abaddon.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_faceless_void.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_legion_commander.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_troll_warlord.vsndevts", context )		
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_bounty_hunter.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_beastmaster.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_broodmother.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_dragon_knight.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_weaver.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_earthshaker.vsndevts", context )		
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_ursa.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_riki.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_slark.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_drowranger.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_sven.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_spectre.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_tiny.vsndevts", context )	
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_clinkz.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_medusa.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_rattletrap.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_life_stealer.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_skeletonking.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_antimage.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_bristleback.vsndevts", context )
	PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_terrorblade.vsndevts", context )


	---------------------------------spells-------------------------------
	PrecacheResource("particle_folder", "particles/units/heroes/hero_phantom_assassin/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_queenofpain/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_venomancer/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_axe/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_slardar/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_bloodseeker/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_viper/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_abaddon/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_faceless_void/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_legion_commander/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_troll_warlord/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_bounty_hunter/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_beastmaster/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_broodmother/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_dragon_knight/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_weaver/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_earthshaker/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_ursa/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_riki/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_slark/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_drowranger/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_sven/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_spectre/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_tiny/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_clinkz/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_medusa/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_rattletrap/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_life_stealer/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_skeletonking/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_antimage/", context)	
	PrecacheResource("particle_folder", "particles/units/heroes/hero_bristleback/", context)
	PrecacheResource("particle_folder", "particles/units/heroes/hero_terrorblade/", context)	

	PrecacheResource( "soundfile", "soundevents/bloodarena_custom.vsndevts", context )	
--[[
PrecacheForHero("npc_dota_hero_abaddon",pathToIG,context)
PrecacheForHero("npc_dota_hero_alchemist",pathToIG,context)
PrecacheForHero("npc_dota_hero_axe",pathToIG,context)

PrecacheForHero("npc_dota_hero_bloodseeker",pathToIG,context)
PrecacheForHero("npc_dota_hero_bounty_hunter",pathToIG,context)
PrecacheForHero("npc_dota_hero_brewmaster",pathToIG,context)
PrecacheForHero("npc_dota_hero_bristleback",pathToIG,context)


PrecacheForHero("npc_dota_hero_dragon_knight",pathToIG,context)

PrecacheForHero("npc_dota_hero_juggernaut",pathToIG,context)
PrecacheForHero("npc_dota_hero_legion_commander",pathToIG,context)

PrecacheForHero("npc_dota_hero_luna",pathToIG,context)


PrecacheForHero("npc_dota_hero_night_stalker",pathToIG,context)

PrecacheForHero("npc_dota_hero_omniknight",pathToIG,context)
PrecacheForHero("npc_dota_hero_phantom_assassin",pathToIG,context)
PrecacheForHero("npc_dota_hero_slardar",pathToIG,context)
PrecacheForHero("npc_dota_hero_sven",pathToIG,context)
PrecacheForHero("npc_dota_hero_templar_assassin",pathToIG,context)

PrecacheForHero("npc_dota_hero_tiny",pathToIG,context)
PrecacheForHero("npc_dota_hero_treant",pathToIG,context)
PrecacheForHero("npc_dota_hero_tusk",pathToIG,context)
PrecacheForHero("npc_dota_hero_skeleton_king",pathToIG,context)
]]

--[[
PrecacheUnitByNameSync("npc_dota_hero_abaddon", context)
PrecacheUnitByNameSync("npc_dota_hero_alchemist", context)
PrecacheUnitByNameSync("npc_dota_hero_axe", context)
PrecacheUnitByNameSync("npc_dota_hero_beastmaster", context)
PrecacheUnitByNameSync("npc_dota_hero_bloodseeker", context)
PrecacheUnitByNameSync("npc_dota_hero_bounty_hunter", context)
PrecacheUnitByNameSync("npc_dota_hero_brewmaster", context)
PrecacheUnitByNameSync("npc_dota_hero_bristleback", context)
PrecacheUnitByNameSync("npc_dota_hero_chaos_knight", context)
PrecacheUnitByNameSync("npc_dota_hero_dark_seer", context)
PrecacheUnitByNameSync("npc_dota_hero_dragon_knight", context)
PrecacheUnitByNameSync("npc_dota_hero_elder_titan", context)
PrecacheUnitByNameSync("npc_dota_hero_juggernaut", context)
PrecacheUnitByNameSync("npc_dota_hero_legion_commander", context)
PrecacheUnitByNameSync("npc_dota_hero_lone_druid", context)
PrecacheUnitByNameSync("npc_dota_hero_luna", context)
PrecacheUnitByNameSync("npc_dota_hero_lycan", context)
PrecacheUnitByNameSync("npc_dota_hero_naga_siren", context)
PrecacheUnitByNameSync("npc_dota_hero_night_stalker", context)
PrecacheUnitByNameSync("npc_dota_hero_ogre_magi", context)
PrecacheUnitByNameSync("npc_dota_hero_omniknight", context)
PrecacheUnitByNameSync("npc_dota_hero_phantom_assassin", context)
PrecacheUnitByNameSync("npc_dota_hero_slardar", context)
PrecacheUnitByNameSync("npc_dota_hero_sven", context)
PrecacheUnitByNameSync("npc_dota_hero_templar_assassin", context)
PrecacheUnitByNameSync("npc_dota_hero_terrorblade", context)
PrecacheUnitByNameSync("npc_dota_hero_tiny", context)
PrecacheUnitByNameSync("npc_dota_hero_treant", context)
PrecacheUnitByNameSync("npc_dota_hero_tusk", context)
PrecacheUnitByNameSync("npc_dota_hero_skeleton_king", context)

]]


	
end


function Activate()
	BA:InitGameMode()
end

function IsForHero(str, tbl)
	if type(tbl["used_by_heroes"]) ~= type(1) and tbl["used_by_heroes"] then -- привет от вашего друга, индийского быдлокодера работающего за еду
		if tbl["used_by_heroes"][str] then
			return true
		end
	end
	return false
end

function PrecacheForHero(name,path,context)

	print('[PrecacheHero] Start')
print("----------------------------------------Precache Start----------------------------------------")

	local wearablesList = {} --переменная для надеваемых шмоток(для всех героев)
	local precacheWearables = {} --переменная только для шмоток нужного героя
	local precacheParticle = {}
	for k, v in pairs(path) do
		if k == 'items' then
			wearablesList = v
		end
	end
	local counter = 0
	local counter_particle = 0
	local value
	for k, v in pairs(wearablesList) do -- выбираем из списка предметов только предметы на нужных героев
		if IsForHero(name, wearablesList[k]) then
			if wearablesList[k]["model_player"] then
				value = wearablesList[k]["model_player"] 
				precacheWearables[value] = true
			end
			if wearablesList[k]["particle_file"] then -- прекешируем еще и частицы, куда ж без них!
				value = wearablesList[k]["particle_file"] 
				precacheParticle[value] = true
			end
		end
	end

	for wearable,_ in pairs( precacheWearables ) do --собственно само прекеширование всех занесенных в список шмоток
		print("Precache model: " .. wearable)
		PrecacheResource( "model", wearable, context )
		counter = counter + 1
	end

	for wearable,_ in pairs( precacheParticle) do --и прекеширование частиц
		print("Precache particle: " .. wearable)
		PrecacheResource( "particle", wearable, context )
		counter_particle = counter_particle + 1

	end

	PrecacheUnitByNameSync(name, context) -- прекешируем саму модель героя! иначе будут бегать шмотки без тела
		
    print('[Precache]' .. counter .. " models loaded and " .. counter_particle .." particles loaded")
	print('[Precache] End')

end