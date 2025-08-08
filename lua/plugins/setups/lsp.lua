require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"gopls",
		"jsonls",
		"rust_analyzer",
		"somesass_ls",
		"cssls",
		"html",
		"svelte",
		"pylsp",
		"markdown-oxide",
		"bashls",
	}
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			},
		}
	}
})
