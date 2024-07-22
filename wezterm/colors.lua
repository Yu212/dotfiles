local palette = {
    black = "#000000",
    gray = "#808080",
    white = "#ffffff",

    orange = "#fe9954",
    purple = "#8c67aa",
    silver = "#cbc6cc",
    red = "#fb5458",
    green = "#61bf99",
    yellow = "#fdd162",
    blue = "#6292e9",
    pink = "#e08696",
    cyan = "#95caee",

    dark_orange = "#e4894b",
    dark_purple = "#7e5c99",
    dark_silver = "#b6b2b7",
    dark_red = "#e14b4f",
    dark_green = "#57ab89",
    dark_yellow = "#e3bc58",
    dark_blue = "#5883d1",
    dark_pink = "#c97887",
    dark_cyan = "#86b5d6",

    light_orange = "#ffaa5d",
    light_purple = "#9b72bc",
    light_silver = "#e1dce2",
    light_red = "#ff5d61",
    light_green = "#6bd4aa",
    light_yellow = "#ffe86c",
    light_blue = "#6ca2ff",
    light_pink = "#f894a6",
    light_cyan = "#a5e0ff",
}

return {
    ansi = {
        palette.black,
        palette.light_red,
        palette.light_green,
        palette.orange,
        palette.light_blue,
        palette.purple,
        palette.light_cyan,
        palette.silver
    },
    brights = {
        palette.gray,
        palette.red,
        palette.green,
        palette.yellow,
        palette.blue,
        palette.pink,
        palette.cyan,
        palette.white
    },
    foreground = palette.white,
    background = "#101010",
    cursor_border = palette.cyan,
    cursor_bg = palette.cyan,
    selection_bg = "rgba(50% 50% 50% 50%)",
    tab_bar = {
        background = palette.cyan,
        inactive_tab_hover = {
            bg_color = palette.cyan,
            fg_color = palette.black,
            italic = false
        }
    }
}

