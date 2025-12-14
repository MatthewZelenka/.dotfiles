return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    dependencies = {
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            branch = "main",
            lazy = false,
        },
    },
    opts = {
        ensure_installed = {
            "javascript",
            "html",
            "python",
            "c",
            "cpp",
            "lua",
            "vim",
            "vimdoc",
            "query",
        },
        highlight = {
            enable = true,
        },
        -- Enable textobjects module (defaults are used if empty)
        textobjects = {
            -- Add sub-modules here if you want custom behavior, e.g.:
            -- select = { enable = true, ... },
            -- move = { enable = true, ... },
            -- swap = { enable = true, ... },
        },
    },
}
