local state = {
	floating = {
		buf = -1,
		win = -1,
	}
}


function OpenFloatingWindow(opts)
	opts = opts or {}

	local width_ratio = 0.75
	local height_ratio = 0.75

	-- Get current editor dimensions
	local ui = vim.api.nvim_list_uis()[1]
	local screen_width = ui.width
	local screen_height = ui.height

	-- Calculate desired width and height
	local win_width = opts.width or math.floor(screen_width * width_ratio)
	local win_height = opts.height or math.floor(screen_height * height_ratio)

	-- Calculate starting row/col to center the window
	local row = math.floor((screen_height - win_height) / 2)
	local col = math.floor((screen_width - win_width) / 2)

	-- Create a new buffer (not listed and scratch)
	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	-- Set window options
	local win_opts = opts.win_opts or {
		relative = 'editor',
		width = win_width,
		height = win_height,
		row = row,
		col = col,
		style = 'minimal',
		border = 'double',
	}

	-- Open the window
	local win = vim.api.nvim_open_win(buf, true, win_opts)

	return { buf = buf, win = win }
end

local toggle_terminal = function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = OpenFloatingWindow({ buf = state.floating.buf })
		if vim.bo[state.floating.buf].buftype ~= 'terminal' then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
	vim.cmd('normal A')
end

vim.api.nvim_create_user_command("FloatingTerminal", toggle_terminal, {})
