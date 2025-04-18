return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
	    { '<leader>ff', function() require('telescope.builtin').find_files() end, desc='Find: Files' },
	    { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc='Find: live grep' },
	    { '<leader>fb', function() require('telescope.builtin').buffers() end, desc='Find: buffers' },
	    { '<leader>fs', function() 
		    require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })
	    end, desc='Find: grep input'}
    }

}
