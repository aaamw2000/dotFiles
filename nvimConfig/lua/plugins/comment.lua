return {
	{
		'numToStr/Comment.nvim',
		lazy = false,
		config = function()
			require('Comment').setup({
				toggler = {
				line = '<C-/>',
				block = 'gbc',
				}
			})
		end
	}
}
