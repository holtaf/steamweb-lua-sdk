-------------------------------------------------------------------------------
-- ISteamOAuth2 v0001
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local https = require( "steamwebapi.https" )
local json = require( "json" )
local steamwebapi = require( "steamwebapi" )
local url = steamwebapi.url

module( "steamwebapi.v0001.ISteamOAuth2" )

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
-- Output: HTTP status code, JSON decoded table or nil
-------------------------------------------------------------------------------
function GetTokenWithCredentials( postData )
	postData = url.encodetable( postData )
	local r, c = https.post( steamwebapi.URL_WEBAPI_BASE .. "/ISteamOAuth2/GetTokenWithCredentials/v0001", postData )
	return c, c == 200 and json.decode( r ) or nil
end
