return {
    'mbbill/undotree',
    lazy = true,
    opts = {
	    undofile = true,
    },
    keys = {
	    { '<leader>uu', vim.cmd.UndotreeToggle, desc='Show nvim undotree' }
    }
}
