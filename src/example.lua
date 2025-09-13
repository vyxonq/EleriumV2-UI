--[[
    Elerium V2: Usage
]]

-- Create the main window

local EleriumV2_UI = loadstring(game:HttpGet("https://github.com/vyxonq/EleriumV2-UI/releases/download/0.0.1/source.luau"))()

local window = EleriumV2_UI:AddWindow("Elerium V2", {
    main_color = Color3.fromRGB(128, 0, 128),
    min_size = Vector2.new(500, 400),
    can_resize = true
})

-- Add a tab
local exampleTab = window:AddTab("Example")

-- Add a slider
local sliderData, slider = exampleTab:AddSlider("Example Slider", function(value)
    print("Slider value:", value)
end, {
    min = 0,
    max = 100
})

-- Add a toggle
local toggleData, toggle = exampleTab:AddSwitch("Example Toggle", function(state)
    print("Toggle state:", state)
end)

-- DROPDOWN CURRENTLY BUGGED (So it will be relased soon)

-- -- Add a dropdown
-- local dropdownData, dropdown = exampleTab:AddDropdown("Example Dropdown", function(selected)
--     print("Dropdown selected:", selected)
-- end)
-- dropdownData:Add("Option 1")
-- dropdownData:Add("Option 2")
-- dropdownData:Add("Option 3")

-- Add a button
exampleTab:AddButton("Example Button", function()
    print("Button clicked!")
end)

-- Add a text box
exampleTab:AddTextBox("Example TextBox", function(text)
    print("TextBox input:", text)
end)

-- Add a label
exampleTab:AddLabel("Improved by @vyxonq.")
