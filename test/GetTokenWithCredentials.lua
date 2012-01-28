-- ISteamOAuth2/GetTokenWithCredentials/v0001 test
-- Author: Andrew McWatters
-- 7:20 PM 1/27/2012

-- usage: lua test\GetTokenWithCredentials.lua

-- This is the core of Steam Mobile's login functionality. This script displays
-- the raw parameters and general request sent to Steam's Web API back end.

-- This script will not be here permanently, and is only serving as a way for
-- contributing developers to understand how the currently publically unexposed
-- interface works.

io.write( "username: ")
local username = io.read()
io.write( "password: " )
local password = io.read()

local postData = "client_id=3638BFB1&grant_type=password&username=" .. username .. "&password=" .. password .. "&x_emailauthcode=&x_webcookie=&scope=read_profile%20write_profile%20read_client%20write_client"

require( "https" )
local https = ssl.https

local headers = {}
headers[ "Content-Type" ] = "application/x-www-form-urlencoded"
headers[ "Content-Length" ] = string.len( postData )
-- This test script acts like the current build of Steam Mobile for iOS on an iPhone
headers[ "User-Agent" ] = "Steam 1291812 / iPhone"
local one, code, headers, status = https.request( {
	url = "https://api.steampowered.com/ISteamOAuth2/GetTokenWithCredentials/v0001",
	source = ltn12.source.string( postData ),
	sink = ltn12.sink.file( io.stdout ),
	method = "POST",
	headers = headers
}, postData )

print()
print( one, code, headers, status )
