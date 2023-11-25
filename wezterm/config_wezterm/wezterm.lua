local wezterm = require 'wezterm';


return {
    -- ...

    keys = {
        {key="Enter", mods="CTRL", action=wezterm.action{SendString="\x1b[13;5u"}},
        {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b[13;2u"}},
    },
    -- ssh_backend = 'Ssh2',
    enable_scroll_bar = true,
}
