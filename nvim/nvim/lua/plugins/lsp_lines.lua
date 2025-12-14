return {
    -- Tree style error messages
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        -- Disable built-in virtual text diagnostics
        vim.diagnostic.config({
            virtual_text = false,
        })

        -- Setup lsp_lines
        require("lsp_lines").setup()

        -- Keymap to toggle lsp_lines on/off
        vim.keymap.set(
            "n",
            "<Leader>l",
            require("lsp_lines").toggle,
            { desc = "Toggle lsp_lines" }
        )
    end,
}
