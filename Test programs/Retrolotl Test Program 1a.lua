-- Test Program 1
function love.draw()
	x, y = 0
	touched = 0
	touches = love.touch.getTouches( )
	if next(touches) ~= nil then
		x, y = love.touch.getPosition( touches[1] )
		touched = 1
	end
    love.graphics.print(x, 100, 80)
	love.graphics.print(y, 100, 120)
	love.graphics.print(touched, 100, 60)
end

-- we need to quit the app when a button is pressed
function love.gamepadpressed(joystick, button)
    love.event.quit()
end
