-- Title: MovingImages
-- Name: Johnathan M
-- Course: ICS2O/3C
-- This program displays an image that move across the screen.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)


local Ting = audio.loadSound("Sounds/ding.mp3")
local playTing

--global variable
scrollSpeed = 5

scrollSpeed2 = 12

scrollSpeed3 = 7

--background image
local backgroundImage = display.newImageRect("background.jpg", 1960, 1960)

	--centers the background image
	backgroundImage.x = display.contentWidth/2
	backgroundImage.y = display.contentWidth/2

local rocket = display.newImageRect("beetleship.png", 450, 540)

	--sets image1 position
	rocket.x = 0
	rocket.y = 700


local function MoveShip(event)
	-- links the scroll speed to the x value of rocket
	rocket.x = rocket.x + scrollSpeed


	--flips rocket when it gets off screen
	if (rocket.x > 1200) then

		rocket.xScale = -1 

		playTing = audio.play(Ting)

		--moves rocket back across screen once its off screen
		scrollSpeed = -5 
	end

	if (rocket.x < -200) then

		playTing = audio.play(Ting)

		rocket.xScale = 1

		scrollSpeed = 5
	end

end

-- MoveShip will be called
Runtime:addEventListener("enterFrame", MoveShip)


local shark = display.newImageRect("shark.gif", 450, 540)

	--sets shark position
	shark.x = 0
	shark.y = 1000


local function MoveShark(event)
	-- links the scroll speed to the x value of shark
	shark.x = shark.x + scrollSpeed2


	--flips shark when it gets off screen
	if (shark.x > 1200) then

		playTing = audio.play(Ting)

		shark.xScale = -1 

		--moves shark back across screen once its off screen
		scrollSpeed2 = -12 
	end

	if (shark.x < -200) then

		playTing = audio.play(Ting)

		shark.xScale = 1

		scrollSpeed2 = 12
	end

end

-- MoveShark will be called
Runtime:addEventListener("enterFrame", MoveShark)

local crest = display.newImageRect ("crest.png", 420, 550)
	--sets crest position
	crest.x = 600
	crest.y = 100
	


local function MoveCrest(event)
	-- links the scroll speed to the x value of crest
	crest.y = crest.y + scrollSpeed3


	--flips crest when it gets off screen
	if (crest.y > 1200) then

		playTing = audio.play(Ting)


		--moves crest back across screen once its off screen
		scrollSpeed3 = -7
	end

	if (crest.y < 250) then

		playTing = audio.play(Ting)


		scrollSpeed3 = 7
	end

end

-- MoveShip will be called
Runtime:addEventListener("enterFrame", MoveCrest)
