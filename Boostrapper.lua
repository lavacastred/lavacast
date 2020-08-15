warn("Trying to detect the game the script was ran on")

local gid = game.GameId
print(gid)
print("Checking If Game ID is valid")

--Change these to the gameid's that you want to allow
local gids = 1942646358 or 0000000000

if gid == gids then
	print("Game Id Succesfully found, Script Will Now Run")
	if gid == 1942646358 then
		--planning on adding some scripts later
		--This is where you would basically put your loadstring
	end
elseif gid == 0 then
	print("Can Not Run On A Invalid Game")
	local plry = game.Players.LocalPlayer
	plry:kick("Can Not Run On A Invalid Game")
else
	print("Game Id Found But No Valid Script For It, Script Will Not Load")
	local plry = game.Players.LocalPlayer
	plry:kick("Can Not Run On Game That The Script Is Not Ment For lmao")
end
