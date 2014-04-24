AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
include("player.lua")

function GM:PlayerConnect( name, ip )
	print("Player: " .. name .. ", has joined the game.")
end

function GM:PlayerInitialSpawn( ply )
	print("Player: " .. ply:Nick() .. ", has spawned.")
	
	ply:SetGamemodeTeam( 0 )
end

function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Player: " .. ply:Nick() .. ", has gotten authed.")
end

--Prevents Suicide with explode or kill
function GM:CanPlayerSuicide( ply )
	ply:PrintMessage(HUD_PRINTTALK, "You can't suicide!")
	return false 
end

--Disable Noclip for non-admins
local function DisableNoclip( ply )
	return ply:IsAdmin()
end
hook.Add( "PlayerNoClip", "DisableNoclip", DisableNoclip )