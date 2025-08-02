require "nvim-treesitter.configs".setup({
	ensure_installed = {
		"html",
		"css",
		"javascript",
		"typescript",
		"svelte",
	},
	highlight = {
		enable = true,
	},
})
