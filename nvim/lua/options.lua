local options = {
    autoindent = true,
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    number = true,
    relativenumber = true,
    cursorline = true,
    laststatus = 3,
    mouse = "",
    termguicolors = true,
    swapfile = false,
    wrap = false
}

vim.opt.clipboard:append { "unnamedplus" }

for key, value in pairs(options) do
    vim.opt[key] = value
end

