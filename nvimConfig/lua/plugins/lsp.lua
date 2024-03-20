return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup({
			})
		end
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'bashls', 'astro', 'clangd', 'cssls', 'elixirls', 'eslint', 'emmet_ls', 'gopls', 'html', 'jsonls', 'jdtls', 'julials', 'texlab', 'marksman', 'matlab_ls', 'intelephense', 'pyright', 'r_language_server', 'sqls', 'taplo', 'hydra_lsp' }
			})
		end
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
		local lspconfig = require('lspconfig')
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
						}
				}
			}
			})
		lspconfig.tsserver.setup({
			capabilities = capabilities
			})
		lspconfig.html.setup({
			capabilities = capabilities
			})
		end,
		vim.keymap.set('n', 'K', vim.lsp.buf.hover),
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
	}
}
