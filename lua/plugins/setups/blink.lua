require('blink.cmp').setup({
	fuzzy = {
		implementation = "prefer_rust",
		prebuilt_binaries = {
			download = true,
			force_version = '1.*',
		},
	},
	completion = {
		list = {
			selection = {
				preselect = false,
				auto_insert = false,
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
		},
		menu = {
			auto_show = false,
		},
		ghost_text = {
			enabled = true,
			show_without_selection = true,
		},
	},
})
