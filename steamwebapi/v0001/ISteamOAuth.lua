-------------------------------------------------------------------------------
-- ISteamOAuth v0001
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
--			Matt Stevens
--			Gregor Steiner
-------------------------------------------------------------------------------
local https = require( "steamwebapi.https" )
local json = require( "json" )
local steamwebapi = require( "steamwebapi" )
local url = steamwebapi.url
local print = print

module( "steamwebapi.v0001.ISteamOAuth" )

-------------------------------------------------------------------------------
-- ISteamOAuth.GetFriendList()
-- Purpose: Used to return a table of the steamid's friends list.
-- Input: getData - table containing GET information
-- 		access_token	- the access token from ISteamOAuth2.GetTokenWithCredentials
--		steamid			- 64bit steamid of the target user
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function GetFriendList( getData )
	getData = url.encodetable( getData )
	local r, c = https.get( steamwebapi.URL_WEBAPI_BASE .. "/ISteamUserOAuth/GetFriendList/v0001?" .. getData )
	return c, c == 200 and json.decode( r ) or nil
end

-------------------------------------------------------------------------------
-- ISteamOAuth.GetUserSummaries()
-- Purpose: Used to get information about specified users.
-- Input: getData - table containing GET information
-- 		access_token	- the access token from ISteamOAuth2.GetTokenWithCredentials
--		steamids		- 64bit steamids of the target users; seperated with a ',' 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function GetUserSummaries( getData )
	getData = url.encodetable( getData )
	local r, c = https.get( steamwebapi.URL_WEBAPI_BASE .. "/ISteamUserOAuth/GetUserSummaries/v0001?" .. getData )
	return c, c == 200 and json.decode( r ) or nil
end

-------------------------------------------------------------------------------
-- ISteamOAuth.GetGroupList()
-- Purpose: Used to return a table of the steamid's groups.
-- Input: getData - table containing GET information
-- 		access_token	- the access token from ISteamOAuth2.GetTokenWithCredentials
--		steamid			- 64bit steamid of the target user
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function GetGroupList( getData )
	getData = url.encodetable( getData )
	local r, c = https.get( steamwebapi.URL_WEBAPI_BASE .. "/ISteamUserOAuth/GetGroupList/v0001?" .. getData )
	return c, c == 200 and json.decode( r ) or nil
end

-------------------------------------------------------------------------------
-- ISteamOAuth.GetGroupSummaries()
-- Purpose: Used to get information about specified groups.
-- Input: getData - table containing GET information
-- 		access_token	- the access token from ISteamOAuth2.GetTokenWithCredentials
--		steamids		- 64bit steamids of the target groups; seperated with a ',' 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function GetGroupSummaries( getData )
	getData = url.encodetable( getData )
	local r, c = https.get( steamwebapi.URL_WEBAPI_BASE .. "/ISteamUserOAuth/GetGroupSummaries/v0001?" .. getData )
	return c, c == 200 and json.decode( r ) or nil
end