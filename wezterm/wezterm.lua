local wezterm = require("wezterm")
local act = wezterm.action

require("status")

return {
    font = wezterm.font_with_fallback {
        "Hack Nerd Font Mono",
        "Noto Sans CJK JP"
    },
    use_fancy_tab_bar = false,
    show_new_tab_button_in_tab_bar = false,
    window_background_opacity = 0.9,
    scrollback_lines = 10000,
    inactive_pane_hsb = {
        brightness = 0.5
    },
    keys = {
        {key = "w", mods = "CTRL", action = act.CloseCurrentPane {confirm = false}},
        {key = "w", mods = "CTRL|SHIFT", action = act.CloseCurrentTab {confirm = false}},
        {key = "t", mods = "CTRL", action = act.SplitHorizontal {cwd = "~"}},
        {key = "t", mods = "CTRL|SHIFT", action = act.SpawnCommandInNewTab {cwd = "~"}},
        {key = "-", mods = "SUPER", action = act.DisableDefaultAssignment },
        {key = "[", mods = "SUPER", action = act.ActivateTabRelative(-1) },
        {key = "]", mods = "SUPER", action = act.ActivateTabRelative(1) },
    },
    colors = require("colors")
}

