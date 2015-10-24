function FunctionRadTP(event)
local unit = event.activator
print("------------Rad teleport:------------")
local teamNumb = unit:GetTeam()
local name =  GetTeamName(teamNumb)

if name == "#DOTA_GoodGuys" then
	local ent = Entities:FindByName( nil, "radPointTeleport") 
	local entPoint = ent:GetAbsOrigin() 
	unit:SetAbsOrigin(entPoint) 
	FindClearSpaceForUnit(unit, entPoint, false) --нужно чтобы герой не застрял
	unit:Stop() --приказываем ему остановиться, иначе он побежит назад к предыдущей точке
end

end


function FunctionBackRadTP(event)
local unit = event.activator
print("------------ Rad back teleport:------------")
local teamNumb = unit:GetTeam()
local name =  GetTeamName(teamNumb)

if name == "#DOTA_GoodGuys" then
	local ent = Entities:FindByName( nil, "radBackPointTeleport") 
	local entPoint = ent:GetAbsOrigin() 
	unit:SetAbsOrigin(entPoint) 
	FindClearSpaceForUnit(unit, entPoint, false) --нужно чтобы герой не застрял
	unit:Stop() --приказываем ему остановиться, иначе он побежит назад к предыдущей точке
end

end


function FunctionDireTP(event)
local unit = event.activator
print("------------Dire teleport:------------")
local teamNumb = unit:GetTeam()
local name =  GetTeamName(teamNumb)

if name == "#DOTA_BadGuys" then
	local ent = Entities:FindByName( nil, "direPointTeleport") 
	local entPoint = ent:GetAbsOrigin() 
	unit:SetAbsOrigin(entPoint) 
	FindClearSpaceForUnit(unit, entPoint, false) --нужно чтобы герой не застрял
	unit:Stop() --приказываем ему остановиться, иначе он побежит назад к предыдущей точке
end

end


function FunctionBackDireTP(event)
local unit = event.activator
print("------------Dire back teleport:------------")
local teamNumb = unit:GetTeam()
local name =  GetTeamName(teamNumb)

if name == "#DOTA_BadGuys" then
	local ent = Entities:FindByName( nil, "direBackPointTeleport") 
	local entPoint = ent:GetAbsOrigin() 
	unit:SetAbsOrigin(entPoint) 
	FindClearSpaceForUnit(unit, entPoint, false) --нужно чтобы герой не застрял
	unit:Stop() --приказываем ему остановиться, иначе он побежит назад к предыдущей точке
end

end