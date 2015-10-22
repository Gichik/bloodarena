-- Generated from template


if BA == nil then
	_G.BA = class({})
	print("BA beta")
	--Convar:SendToConsole("sv_cheats 1")
end

require( 'BA' )
require( 'timers' )
--require( 'barebones' )


function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
print("----------------------------------------PRECACHE----------------------------------------")


--PrecacheModel("models/heroes/lifestealer/lifestealer.vmdl", context)

local pathToIG = LoadKeyValues("scripts/items/items_game.txt") -- загружаем весь файл
PrecacheModel("models/props_debris/wood_fence001g.vmdl", context)
PrecacheModel("models/heroes/earth_spirit/stonesummon.vmdl", context)

PrecacheForHero("npc_dota_hero_ursa",pathToIG,context)


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

-- Create the game mode when we activate
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