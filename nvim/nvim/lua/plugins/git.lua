return {
    "tpope/vim-fugitive",
    config = function()
        -- Keymap for :Git status
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
    end,
}
