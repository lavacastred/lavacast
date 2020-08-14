--Run this script and it will automatically detect and execute the script for that game open source if anybody needs something like thise
--Also if you want a good obfusacator use this one https://obfuscator.aztupscripts.xyz/Home
--Dont clown on me for not using tweenservice

--Start Of Tween

local Load = script.Parent
local Accent = script.Parent.AccentL
local MOTD = script.Parent.MOTDL
local Title = script.Parent.TitleL
local Background = script.Parent.BackgroundL

Load.AnchorPoint = Vector2.new(.5, .5)
Load.Position = UDim2.new(0.5, 0, 0.5, 0)
Load.Size = UDim2.new(0, 0, 0, 0)
Accent.Size = UDim2.new(0, 0, 0, 0)
MOTD.Size = UDim2.new(0, 0, 0, 0)
Title.Size = UDim2.new(0, 0, 0, 0)
Background.Size = UDim2.new(0, 0, 0, 0)



wait(2)

Load:TweenSize(UDim2.new(0, 182, 0, 51),Enum.EasingDirection.Out, Enum.EasingStyle.Elastic)
Accent:TweenSize(UDim2.new(0, 182, 0, 2),Enum.EasingDirection.Out, Enum.EasingStyle.Elastic)
MOTD:TweenSize(UDim2.new(0, 182, 0, 43),Enum.EasingDirection.Out, Enum.EasingStyle.Elastic)
Title:TweenSize(UDim2.new(0, 182, 0, 22),Enum.EasingDirection.Out, Enum.EasingStyle.Elastic)
Background:TweenSize(UDim2.new(0, 182, 0, 45),Enum.EasingDirection.Out, Enum.EasingStyle.Elastic)

wait(3)

Load:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In, Enum.EasingStyle.Elastic)
Accent:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In, Enum.EasingStyle.Elastic)
MOTD:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In, Enum.EasingStyle.Elastic)
Title:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In, Enum.EasingStyle.Elastic)
Background:TweenSize(UDim2.new(0, 0, 0, 0),Enum.EasingDirection.In, Enum.EasingStyle.Elastic)

wait(1)

--End Of Tween


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
