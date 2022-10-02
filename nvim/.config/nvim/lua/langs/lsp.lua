vim.api.nvim_buf_set_option(0, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require('lspconfig')
-- MORE server configs can be found at https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
lspconfig.rust_analyzer.setup {
     capabilities = capabilities,
}

lspconfig.sumneko_lua.setup {
     settings = {
               Lua = {
                    runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'Lua',
               },
                    diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim'},
               },
               workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
               },
               -- Do not send telemetry data containing a randomized but unique identifier
               telemetry = {
                    enable = false,
               },
          },
     },
     --capabilities = capabilities
}

lspconfig.ccls.setup {
     init_options = {

     },
     capabilities = capabilities,
}

lspconfig.racket_langserver.setup {
     capabilities = capabilities,
}

lspconfig.pylsp.setup {
     capabilities = capabilities,
}

