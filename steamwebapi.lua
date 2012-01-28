-------------------------------------------------------------------------------
-- Scripted interfacing for the Steam Web API
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local require = require

module( "steamwebapi" )

http	= require( "steamwebapi.http" )
https	= require( "steamwebapi.https" )
url		= require( "steamwebapi.url" )

URL_WEBAPI_BASE = "https://api.steampowered.com:443"
