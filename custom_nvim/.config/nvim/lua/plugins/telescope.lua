telescope_cfg =  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },

    
	config = function()
		require("telescope").setup()
		builtin = require("telescope.builtin")
	end,

    keys = {
        -- add a keymap to browse plugin files
        -- stylua: ignore
        {
            "<leader>ff",
            function()
                builtin.find_files()
            end
        },
        { 
            "<leader>ft",
            function()
                builtin.live_grep()
            end
        },
    },
    -- change some options
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 0,
        },
        pickers = { 
            find_files = {
                theme = "gruvbox",
            },
            
            live_grep = {
                theme = "gruvbox",
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
        },
    },
}

return {
    telescope_cfg
}



