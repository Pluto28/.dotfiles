
return require('packer').startup(function(use)
     -- Packer can manage itself
     use 'wbthomason/packer.nvim'

     -- Language Server support
     use 'neovim/nvim-lspconfig'

     -- Completion framework
     use 'hrsh7th/nvim-cmp'

     -- LSP completion source for nvim-cmp
     use 'hrsh7th/cmp-nvim-lsp'
     
     
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/cmp-path'
     use 'hrsh7th/cmp-cmdline'
     

     -- Nvim-lua source
     use 'hrsh7th/cmp-nvim-lua'

     -- luasnip
     use 'L3MON4D3/LuaSnip'
     use 'saadparwaiz1/cmp_luasnip'

<<<<<<< HEAD
     -- install lualine
     use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
=======
     -- install lualine for configuring the statusline
     use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }
>>>>>>> b1ff4a09cecf95e4e9077c366ff6fc8d87f976b1
end)
