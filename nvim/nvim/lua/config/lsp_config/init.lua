local mason_lspconfig = require("mason-lspconfig")
local common = require("config.lsp_config.common")

-- Ensure servers are installed
mason_lspconfig.setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
})

-- Load per-language configs
local servers = { "lua_ls", "rust_analyzer", "pyright" }

for _, server in ipairs(servers) do
  require("config.lsp_config." .. server)(common.on_attach, common.capabilities)
end
