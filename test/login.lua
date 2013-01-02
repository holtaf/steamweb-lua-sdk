-- tests logging in as Steam Mobile would
-- usage: lua test\login.lua

local steamwebapi = require( "steamwebapi" )
local ISteamOAuth2 = require( "steamwebapi.v0001.ISteamOAuth2" )

-- this test uses luasocket as a connector
require( "connectors.luasocket" )

-- we also mimic communications as Steam Mobile on iPhone
steamwebapi.setUserAgent( "Steam 1291812 / iPhone" )

-- set up our POST data
local postData = {
	client_id = "3638BFB1",
	grant_type = "password",
	username = "",
	password = "",
	x_emailauthcode = "",
	x_webcookie = "",
	scope = "read_profile write_profile read_client write_client"
}

io.write( "username: ")
postData.username = io.read()
io.write( "password: " )
postData.password = io.read()

local statusCode, response = ISteamOAuth2.GetTokenWithCredentials( postData )
if ( statusCode == 200 ) then
	if ( response.error and response.x_errorcode == "steamguard_code_required" ) then
		io.write( "email code: " )
		postData.x_emailauthcode = io.read()
		status, response = ISteamOAuth2.GetTokenWithCredentials( postData )
		if ( statusCode == 200 ) then
			for k, v in pairs( response ) do
				print( k, v )
			end
		end
	end
end
