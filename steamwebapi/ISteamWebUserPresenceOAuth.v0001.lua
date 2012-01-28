-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth v0001
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local https = require( "steamwebapi.https" )
local json = require( "json" )

module( "steamwebapi.ISteamWebUserPresenceOAuth.v0001" )

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.DeviceInfo()
-- Purpose: 
-- Input: 
-- Output: 
-------------------------------------------------------------------------------
function DeviceInfo( postData )
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
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Message()
-- Purpose: 
-- Input: 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Message( postData )
end

-------------------------------------------------------------------------------
-- ISteamWebUserPresenceOAuth.Poll()
-- Purpose: 
-- Input: 
-- Output: HTTP status code, JSON decoded table
-------------------------------------------------------------------------------
function Poll()
end
