return {
    -- Mason (LSP/DAP installer)
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup({
                registries = {
                    "github:mason-org/mason-registry",
                    "github:Crashdummyy/mason-registry",
                },
            })
        end,
    },
    -- Bridge Mason and LSPConfig
    { "williamboman/mason-lspconfig.nvim" },
    -- Core LSP
    { "neovim/nvim-lspconfig" },
}

