DeriveGamemode("base")

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

--Load modules
local fol = GM.FolderName.."/gamemode/modules/" --Set base dir
local files, folders = file.Find(fol .. "*", "LUA") --Get all module files

for _,folder in SortedPairs(folders, true) do
	if folder == "." or folder == ".." then continue end --If no files then stop
	
	--Load module server files
	for _, File in SortedPairs(file.Find(fol .. folder .."/sv_*.lua", "LUA"), true) do --Get server files
		include(fol.. folder .. "/" ..File) --Include module's server lua files
	end
end