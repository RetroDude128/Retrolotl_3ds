-- Test Program 2
require ("controller")
X = 0
Y = 0
XVel = 0
YVel = 0

love.graphics.setColor(255, 255, 255)
function love.draw()
    love.graphics.print("i exist", X, Y)
    love.graphics.print(XVel, 100, 100)
    love.graphics.print(YVel, 100, 120)
end 

function love.update(dt)
    if Y < 120 then
        YVel = YVel + 0.2
    else
        YVel = 0
        Y = 120
    end
    if Control_InGet("a") then
        YVel = -5
    end
    if math.abs(XVel) < 6 then
        XVel = XVel + (Control_JoyGet(1) / 5)
    end
    if math.abs(YVel) < 6 then
        YVel = YVel + (Control_JoyGet(2) / 5)
    end
    X = X + XVel
    Y = Y + YVel
    if XVel ~= 0 and math.abs(Control_JoyGet(1)) == 0 then
        if XVel > 0 then
            XVel = XVel - 0.1
        else
            XVel = XVel + 0.1
        end
    end
end
