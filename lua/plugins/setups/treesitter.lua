require "nvim-treesitter.configs".setup({
	ensure_installed = {
		"html",
		"css",
		"javascript",
		"typescript",
		"svelte",
		"python",
		"markdown",
		"markdown_inline",
	},
	highlight = {
		enable = true,
	},
})
