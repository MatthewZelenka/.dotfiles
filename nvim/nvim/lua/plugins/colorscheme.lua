return {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,
    config = function()
        require("cyberdream").setup({
            disable_background = true,
        })

        -- Helper function for setting colorscheme
        local function ColorMyPencils(color)
            color = color or "cyberdream"
            vim.cmd.colorscheme(color)

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end

        ColorMyPencils()
    end,
}
