require('render-markdown').setup({
	completions = {
		lsp = {
			enabled = true,
		},
	},
	heading = {
		sign = false,
		position = 'inline',
		width = 'full',
	},
})
