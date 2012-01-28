-------------------------------------------------------------------------------
-- Scripted interfacing for the Steam Web API
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local require = require

module( "steamwebapi" )

URL_WEBAPI_BASE = "https://api.steampowered.com:443"

https = require( "steamwebapi.https" )
