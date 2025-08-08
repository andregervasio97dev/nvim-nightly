vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.winborder = "double"
vim.api.nvim_create_autocmd("Filetype", {
	pattern = { "help", "man" },
	command = "wincmd L",
})
