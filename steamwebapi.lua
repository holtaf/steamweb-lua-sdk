-------------------------------------------------------------------------------
-- Scripted interfacing for the Steam Web API
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
--			Matt Stevens
--			Gregor Steiner
-------------------------------------------------------------------------------
local require = require

module( "steamwebapi" )

http	= require( "steamwebapi.http" )
https	= require( "steamwebapi.https" )
url		= require( "steamwebapi.url" )

URL_WEBAPI_BASE = "https://api.steampowered.com"

-------------------------------------------------------------------------------
-- thisUserAgent
-- Purpose: Currently used User-Agent string, retrieved by other modules by
--			using steamwebapi.getUserAgent()
-------------------------------------------------------------------------------
local thisUserAgent = nil

-------------------------------------------------------------------------------
-- steamwebapi.getUserAgent()
-- Purpose: Returns the currently set User-Agent string
-- Output: User-Agent string
-------------------------------------------------------------------------------
function getUserAgent()
	return thisSession
end

-------------------------------------------------------------------------------
-- steamwebapi.setUserAgent()
-- Purpose: Sets the User-Agent string to be used by the Steam Web Lua API
-- Input: userAgent - User-Agent string
-------------------------------------------------------------------------------
function setUserAgent( userAgent )
	thisUserAgent = userAgent
end
