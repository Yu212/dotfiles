local colors = require("colors")


local Mode = require("lualine.utils.mode")
for key, value in pairs(Mode.map) do
    local padding = math.max(0, 7 - #value)
    Mode.map[key] = string.rep(" ", padding) .. value
end

return {
    options = {
        component_separators = "",
        icons_enabled = false,
        globalstatus = true,
        theme = {
            normal = {
                a = {bg = colors.dark_cyan, fg = colors.black},
                b = {bg = colors.cyan, fg = colors.black},
                c = {bg = colors.cyan, fg = colors.black}
            }
        }
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {},
        lualine_y = {"filetype"},
        lualine_z = {"location"}
    }
}

