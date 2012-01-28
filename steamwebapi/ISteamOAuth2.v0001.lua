-------------------------------------------------------------------------------
-- ISteamOAuth2 v0001
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			GranPC
-------------------------------------------------------------------------------
local https = require( "steamwebapi.https" )
local json = require( "json" )

module( "steamwebapi.ISteamOAuth2.v0001" )

-------------------------------------------------------------------------------
-- ISteamOAuth2.GetTokenWithCredentials()
-- Purpose: 
-- Input:
--	postData - table containing POST information
--		client_id		- OAuth client ID
--		grant_type		- (???) Not yet identified
--		username		- username of Steam account
--		password		- password to Steam account
--		x_emailauthcode - Steam Guard code
--		x_webcookie		- (???) Not yet identified
--		scope			- (???) Perhaps the scope of access provided through
--						  the given token
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function GetTokenWithCredentials( postData )
end
