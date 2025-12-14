return function(on_attach, capabilities)
    vim.lsp.config("lua_ls", {
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
