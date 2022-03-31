function love.draw()
	touches = love.touch.getTouches( )
	if next(love.touch.getTouches()) ~= nil then
		x, y = love.touch.getPosition( touches[1] )
	end
    love.graphics.print(x, 100, 80)
	love.graphics.print(y, 100, 120)
end

-- we need to quit the app when a button is pressed
function love.gamepadpressed(joystick, button)
    love.event.quit()
end
