-- TODO: Well, maybe add the servers for other languages or remove it completely

vim.opt.completeopt = 'menu,menuone,noselect'

-- Setup nvim-cmp.
local cmp = require 'cmp'

cmp.setup({
     snippet = {
          expand = function(args)
               -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
               require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
               -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
               -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          end,
     },
     window = {
          completion = cmp.config.window.bordered {
               winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
          },
          documentation = cmp.config.window.bordered {
               winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
          },
     },
     mapping = cmp.mapping.preset.insert({
          ['<C-e>']     = cmp.mapping.scroll_docs( -4),
          ['<C-f>']     = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-c>']     = cmp.mapping.abort(),
          ['<CR>']      = cmp.mapping.confirm({ select = true }),
          ['<C-j>']     = cmp.mapping.select_next_item(),
          ['<C-k>']     = cmp.mapping.select_prev_item(),

     }),
     sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          -- { name = 'vsnip' }, -- For vsnip users.
          { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
          { name = 'buffer' },
          { name = 'nvim_lua' }
     }),
})
-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
     sources = cmp.config.sources({
          { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
     }, {
          { name = 'buffer' },
     })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
     mapping = cmp.mapping.preset.cmdline(),
     sources = {
          { name = 'buffer' }
     }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
     mapping = cmp.mapping.preset.cmdline(),
     sources = cmp.config.sources({
          { name = 'path' }
     }, {
          { name = 'cmdline' }
     })
})