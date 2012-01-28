-------------------------------------------------------------------------------
-- ISteamOAuth2 v0001
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local https = require( "steamwebapi.https" )
local json = require( "json" )

module( "steamwebapi.ISteamOAuth2.v0001" )

-------------------------------------------------------------------------------
-- ISteamOAuth2.GetTokenWithCredentials()
-- Purpose: 
-- Input: postData
-- Output: JSON decoded table
-------------------------------------------------------------------------------
function GetTokenWithCredentials( postData )
	local t = {}
	https.post()
	t = json.decode( r )
	return t
end
