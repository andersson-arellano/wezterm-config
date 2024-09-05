-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local images_path = "D:/MAIN/me/"

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Batman"
--
-- config.window_background_image = "D:/MAIN/me/bg.jpg"
--
-- config.window_background_image_hsb = {
-- 	-- Darken the background image by reducing it to 1/3rd
-- 	brightness = 0.3,
--
-- 	-- You can adjust the hue by scaling its value.
-- 	-- a multiplier of 1.0 leaves the value unchanged.
-- 	hue = 1.0,
--
-- 	-- You can adjust the saturation also.
-- 	saturation = 1.0,
-- }

config.background = {
	{
		source = {
			File = images_path .. "sg-9.png",
		},
		hsb = {
			brightness = 0.09,
		},
		height = "Cover",
		width = "Cover",
		vertical_align = "Middle",
		horizontal_align = "Center",
	},
}
-- and finally, return the configuration to wezterm
return config
