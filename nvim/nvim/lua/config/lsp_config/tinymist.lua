return function(on_attach, capabilities)
    vim.lsp.config("tinymist", {
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

