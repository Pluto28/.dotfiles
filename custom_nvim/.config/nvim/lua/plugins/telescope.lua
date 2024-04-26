telescope_cfg =  {
    'nvim-telescope/telescope.nvim', refs = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },

    
    config = function()
        builtin = require("telescope.builtin")
        require('telescope').setup()
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

return telescope_cfg



