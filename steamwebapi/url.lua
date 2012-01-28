-------------------------------------------------------------------------------
-- URL module
-- Steam Web Lua API
-- Authors: Andrew McWatters
--			Gran PC
-------------------------------------------------------------------------------
local ipairs = ipairs
local next = next
local pairs = pairs
local string = string

module( "steamwebapi.url" )

----------------------------------------------------------------------------
-- URL-encode a string (see RFC 2396)
----------------------------------------------------------------------------
function escape (str)
	str = string.gsub (str, "\n", "\r\n")
	str = string.gsub (str, "([^0-9a-zA-Z ])", -- locale independent
		function (c) return string.format ("%%%02X", string.byte(c)) end)
	str = string.gsub (str, " ", "%20")
	return str
end

----------------------------------------------------------------------------
-- URL-encode the elements of a table creating a string to be used in a
--   URL for passing data/parameters to another script
-- @param args Table where to extract the pairs (name=value).
-- @return String with the resulting encoding.
----------------------------------------------------------------------------
function encodetable (args)
  if args == nil or next(args) == nil then   -- no args or empty args?
    return ""
  end
  local strp = ""
 for key, vals in pairs(args) do
    if type(vals) ~= "table" then
      vals = {vals}
    end
    for i,val in ipairs(vals) do
      strp = strp.."&"..escape(key).."="..escape(val)
    end
  end
  -- remove first & 
  return string.sub(strp,2)
end
