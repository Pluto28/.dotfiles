
return require('packer').startup(function(use)
     -- Packer can manage itself
     use 'wbthomason/packer.nvim'

     -- Language Server support
     use 'neovim/nvim-lspconfig'

     -- Completion framework
     use 'hrsh7th/nvim-cmp'

     -- LSP completion source for nvim-cmp
     use 'hrsh7th/cmp-nvim-lsp'

     -- Nvim-lua source
     use 'hrsh7th/cmp-nvim-lua'

     -- install snippy
     use 'dcampos/nvim-snippy'
     use 'dcampos/cmp-snippy'

     -- install lualine for configuring the statusline
     use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }
end)
