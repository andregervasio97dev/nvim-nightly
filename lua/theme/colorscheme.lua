-- Colorscheme
vim.pack.add({
	{ src = 'https://github.com/catppuccin/nvim' },
	{ src = 'https://github.com/nvim-lualine/lualine.nvim' },
})

require('catppuccin').setup({
	flavour = 'macchiato',
	transparent_background = true,
	styles = {
		booleans = { 'bold' }
	},
	auto_integrations = true,
})

require('lualine').setup({
	options = {
		theme = 'palenight',
	},
})

vim.cmd.colorscheme 'catppuccin'
