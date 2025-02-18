local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.font = wezterm.font("MesloLGLNerdFont")
config.font_size = 12

config.enable_tab_bar = false

return config
