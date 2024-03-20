return {
	  {
	  	'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function()
			local config = require('nvim-treesitter.configs')
			config.setup({
				aut_install = true,
				ensure_installed = { "lua", "javascript", "python", "java", "elixir", "go", "bash", "c", "cpp", "html" , "css", "csv", "haskell", "json", "julia", "kotlin", "latex", "markdown", "matlab", "php", "r", "xml", "yaml", "zathurarc" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	  }
}
