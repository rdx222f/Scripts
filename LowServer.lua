local Http = game:GetService("HttpService")
local tps = game:GetService("TeleportService")
local api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function listservers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
