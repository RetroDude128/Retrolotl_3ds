function Control_JoyGet(axis)
    local out = 0
    local joysticks = love.joystick.getJoysticks()
    local joystick = joysticks[1]
    out = joysticks[1]:getAxis(axis)
    if axis == 1 then
        if joystick:isGamepadDown("dpright") then
            out = 1
        elseif joystick:isGamepadDown("dpleft") then
            out = -1
        end
    else
        if joystick:isGamepadDown("dpdown") then
            out = 1
        elseif joystick:isGamepadDown("dpup") then
            out = -1
        end
    end
    out = (math.ceil(out * 10)) / 10
    if math.abs(out) < 0.2 then
        out = 0
    end
    return out;
end
