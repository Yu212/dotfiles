return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup(require("plugins.treesitter"))
        end
    },
    {
        "projekt0n/github-nvim-theme",
        lazy = false,
        config = function()
            require("github-theme").setup(require("plugins.github-theme"))
            vim.cmd("colorscheme github_dark")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup(require("plugins.lualine"))
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("telescope").setup(require("plugins.telescope"))
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.api.nvim_create_user_command("Ex", function()
                vim.cmd.NvimTreeToggle()
            end, {})
            require("nvim-tree").setup(require("plugins.nvim-tree"))
        end
    }
}

