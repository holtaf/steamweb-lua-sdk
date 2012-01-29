-- tests logging in as Steam Mobile would
-- usage: lua test\login.lua

local steamwebapi = require( "steamwebapi" )
local ISteamOAuth = require( "steamwebapi.v0001.ISteamOAuth" )
local ISteamOAuth2 = require( "steamwebapi.v0001.ISteamOAuth2" )
local ISteamWebUserPresenceOAuth = require( "steamwebapi.v0001.ISteamWebUserPresenceOAuth" )

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
			local newPostData = {}
			local access_token = response.access_token
			newPostData = {
				access_token = access_token,
				steamid = response.x_steamid
			}
			print( "Getting friends list..." )
			status, response = ISteamOAuth.GetFriendList( newPostData )
			local str = ""
			local add = ""
			for k, v in pairs( response.friends ) do
				str = str .. add .. v.steamid
				add = ","
			end
			local targetFriend
			newPostData.steamid = nil
			newPostData.steamids = str
			print( "Getting user summaries (names)..." )
			status, response = ISteamOAuth.GetUserSummaries( newPostData )
			local breakloops
			for k,v in pairs( response ) do
				for i,z in pairs( v ) do
					if ( string.find( z.personaname, "Overv" ) ) then
						targetFriend = z
						breakloops = true
						break
					end
				end
				if breakloops then break end
			end
			newPostData.steamids = nil
			print( "Sending message..." )
			status, response = ISteamWebUserPresenceOAuth.Logon( newPostData )
			local msgData = {
				access_token = access_token,
				type = "saytext",
				steamid_dst = targetFriend.steamid,
				text = "sup Overv",
				umqid = response.umqid
			}
			status, response = ISteamWebUserPresenceOAuth.Message( msgData )
			if ( status == 200 and response.error == "OK" ) then
				print( "Done!" )
			end
		end
	end
end
