-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth v0001
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

module( "steamwebapi.v0001.ISteamWebUserPresenceOAuth" )

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.DeviceInfo()
-- Purpose: 
-- Input: 
-- Output: 
-------------------------------------------------------------------------------
function DeviceInfo( postData )
	postData = url.encodetable( postData )
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Logon()
-- Purpose: Logs you into Steam Friends. 
-- Input: 
--	postData - table containing POST information
--		access_token - token provided by ISteamOAuth2.GetTokenWithCredentials()
-- Output: HTTP status code, JSON decoded table that contains steamid, umqid
--		and message.
-------------------------------------------------------------------------------
function Logon( postData )
	postData = url.encodetable( postData )
	local r, c = https.post( steamwebapi.URL_WEBAPI_BASE .. "/ISteamWebUserPresenceOAuth/Logon/v0001", postData )
	return c, c == 200 and json.decode( r ) or nil
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Message()
-- Purpose: Used to send a message to an user
-- Input: postData - table containing POST information
--		access_token	- token provided by ISteamOAuth2.GetTokenWithCredentials()
--		type			- message type (typing, emote, saytext)
--		steamid_dst		- SteamID64 of the person who'll receive the message
--		text			- message string (empty for typing)
--		umqid			- umqid returned by ISteamWebUserPresenceOAuth.Logon()
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Message( postData )
	postData = url.encodetable( postData )
	local r, c = https.post( steamwebapi.URL_WEBAPI_BASE .. "/ISteamWebUserPresenceOAuth/Message/v0001", postData )
	return c, c == 200 and json.decode( r ) or nil
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Poll()
-- Purpose: 
-- Input: 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Poll( postData )
	postData = url.encodetable( postData )
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Poll()
-- Purpose: 
-- Input: 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function PollStatus( postData )
	postData = url.encodetable( postData )
end
