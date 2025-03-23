-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'cyberpunk' -- 'Dark Violet (base16)', 'cyberpunk'
config.window_background_opacity = 0.9
config.font = wezterm.font 'IosevkaTermSlab Nerd Font Mono'
config.font_size = 10.5
config.enable_tab_bar = false
config.hide_mouse_cursor_when_typing = true

config.visual_bell = {
  fade_in_function = 'Constant',
  fade_in_duration_ms = 0,
  fade_out_function = 'Constant',
  fade_out_duration_ms = 150,
}
config.colors = {
  visual_bell = '#ff00ff',
}

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config

