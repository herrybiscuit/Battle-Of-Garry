GM.Name = "Battle-Of-Garry" --GM info
GM.Author = "IMSOGUD And HerryBiscuit"
GM.Email = "N/A"
GM.Website = "N/A"

team.SetUp( 0, "Team 1", Color(0, 0, 255) )
team.SetUp( 1, "Team 2", Color(255, 0, 0) )

function GM:Initialize()
	self.BaseClass.Initialize( self )
end