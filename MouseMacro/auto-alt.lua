EnablePrimaryMouseButtonEvents(true)
-- 标记是否刚刚释放过右键
local rightReleased = false

function OnEvent(event, arg)
    -- 打印调试信息（可选）
    OutputLogMessage("Event: %s, Arg: %d\n", event, arg)
    -- 鼠标右键按下
    if event == "MOUSE_BUTTON_PRESSED" and arg == 2 then
        OutputLogMessage("right button pressed\n")
    end

    -- 鼠标右键松开，设置标志位
    if event == "MOUSE_BUTTON_RELEASED" and arg == 2 then
        OutputLogMessage("right button released\n")
        rightReleased = true
    end
    -- 鼠标左键按下
    if event == "MOUSE_BUTTON_PRESSED" and arg == 1 and rightReleased then
        OutputLogMessage("left button pressed\n")
        PressKey("lalt")
        Sleep(50)
        ReleaseKey("lalt")
        -- 重置标志，避免多次触发
        rightReleased = false
    end
    -- 鼠标左键松开
    if event == "MOUSE_BUTTON_RELEASED" and arg == 1 then
        OutputLogMessage("left button released\n")
    end
end
