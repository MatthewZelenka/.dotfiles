return function(on_attach, capabilities)
    vim.lsp.config("roslyn", {
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

