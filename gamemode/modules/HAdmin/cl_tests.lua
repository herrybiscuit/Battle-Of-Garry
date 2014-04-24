--Show/hide mouse cursor when f2 is pressed
local function KeyPress()
    gui.EnableScreenClicker(input.IsKeyDown(KEY_F2))
end

--Add hooks
hook.Add("Think", "Clients_Key_F2" ,KeyPress)