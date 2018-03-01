-- Title: MovingImages
-- Name: Johnathan M
-- Course: ICS2O/3C
-- This program displays an image that move across the screen.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variable
scrollSpeed = 5

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

	print ("***rocket.x = " .. rocket.x)

	--flips rocket when it gets off screen
	if (rocket.x > 1200) then

		rocket.xScale = -1 

		--moves rocket back across screen once its off screen
		scrollSpeed = -5 
	end

	if (rocket.x < -200) then

		rocket.xScale = 1

		scrollSpeed = 5
	end

end

-- MoveShip will be called
Runtime:addEventListener("enterFrame", MoveShip)

