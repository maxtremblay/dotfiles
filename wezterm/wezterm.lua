-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = 'GruvboxDark'

config.font_size = 15.0

local padding = 10
config.window_padding = {
  left = padding,
  right = padding,
  top = padding,
  bottom = padding,
}

config.hide_tab_bar_if_only_one_tab = true

config.scrollback_lines = 5000

config.window_close_confirmation = 'NeverPrompt'

-- and finally, return the configuration to wezterm
return config
