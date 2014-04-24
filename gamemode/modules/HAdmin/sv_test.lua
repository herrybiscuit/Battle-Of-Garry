--Prevents Suicide with explode or kill
function GM:CanPlayerSuicide( ply )
	if ply:IsAdmin() then
		ply:PrintMessage(HUD_PRINTTALK, "You killed your self!")
		return true
	end
	ply:PrintMessage(HUD_PRINTTALK, "You can't suicide!")
	return false 
end

--Disable Noclip for non-admins
local function DisableNoclip( ply )
	return ply:IsAdmin()
end

--Temp
/*
--Disconnect message
function GM:PlayerDisconnected( ply )
	print("Player: " .. ply:Name() .. " has left the server." )
end
*/

--Add hooks
hook.Add( "PlayerNoClip", "DisableNoclip", DisableNoclip )