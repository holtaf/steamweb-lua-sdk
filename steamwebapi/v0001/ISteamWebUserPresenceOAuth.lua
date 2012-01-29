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
-- Purpose: 
-- Input: 
--	postData - table containing POST information
--		access_token - token provided by ISteamOAuth2.GetTokenWithCredentials()
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Logon( postData )
	postData = url.encodetable( postData )
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Message()
-- Purpose: 
-- Input: 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Message( postData )
	postData = url.encodetable( postData )
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
