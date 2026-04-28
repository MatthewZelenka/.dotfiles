return function(on_attach, capabilities)
    vim.lsp.config("clangd", {
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
