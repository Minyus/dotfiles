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


config.quick_select_patterns = {
    -- match things that look like sha1 hashes
    -- (this is actually one of the default patterns)
    '\\S{6,}',
}

config.keys = {
    {
        key = 'L',
        mods = 'CTRL',
        action = wezterm.action.QuickSelectArgs {
            patterns = {
                '.{6,}',
            },
            scope_lines = 0,
        },
    },
}

config.disable_default_quick_select_patterns = true

config.colors = {
    quick_select_label_fg = { Color = '#ff0000' },
    quick_select_match_fg = { Color = '#aaaaaa' },
    scrollbar_thumb = '#aaaaaa',
}

config.enable_scroll_bar = true

-- and finally, return the configuration to wezterm
return config

