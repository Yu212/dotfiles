local wezterm = require("wezterm")
local nerds = wezterm.nerdfonts

local cyan = "#95caee"
local dark_cyan = "#86b5d6"

wezterm.on("format-window-title", function(tab)
    return "WezTerm"
end)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
    local text = ("  %d "):format(tab.tab_index)
    if hover then
        wezterm.GLOBAL.hovered_tab = tab.tab_index
    elseif wezterm.GLOBAL.hovered_tab == tab.tab_index then
        wezterm.GLOBAL.hovered_tab = nil
    end
    local background = (tab.is_active or hover) and dark_cyan or cyan
    local prev_tab_background = background
    if tab.tab_index > 0 then
        local prev_tab = tabs[tab.tab_index]
        prev_tab_background = (prev_tab.is_active or wezterm.GLOBAL.hovered_tab == prev_tab.tab_index) and dark_cyan or cyan
    end
    if tab.tab_index + 1 >= #tabs then
        return {
            {Foreground = {Color = prev_tab_background}},
            {Background = {Color = background}},
            {Text = nerds.pl_left_hard_divider},
            {Foreground = {Color = "black"}},
            {Text = text},
            {Foreground = {Color = background}},
            {Background = {Color = cyan}},
            {Text = nerds.pl_left_hard_divider}
        }
    end
    return {
        {Foreground = {Color = prev_tab_background}},
        {Background = {Color = background}},
        {Text = nerds.pl_left_hard_divider},
        {Foreground = {Color = "black"}},
        {Text = text},
    }
end)

