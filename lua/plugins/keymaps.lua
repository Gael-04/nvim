return {
	--Alpha
	vim.keymap.set("n", "<leader>a", ":Alpha<CR>", {}),

	--Bufferline
	vim.keymap.set("n", "<A-.>", ":BufferLineCycleNext<CR>", {}),
	vim.keymap.set("n", "<A-,>", ":BufferLineCyclePrev<CR>", {}),
	vim.keymap.set("n", "<A-;>", ":BufferLinePick<CR>", {}),
	vim.keymap.set("n", "<leader>;", ":BufferLinePickClose<CR>", {}),
	vim.keymap.set("n", "<leader>,", ":BufferLineCloseLeft<CR>", {}),
	vim.keymap.set("n", "<leader>.", ":BufferLineCloseRight<CR>", {}),

	--Neotree
	vim.keymap.set("n", "<leader>n", "<Cmd>Neotree toggle<CR>"),
	vim.keymap.set("n", "<leader>m", "<Cmd>Neotree focus<CR>"),

	--None-ls
	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),

	--ToggleTerm
	vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", {}),
}
