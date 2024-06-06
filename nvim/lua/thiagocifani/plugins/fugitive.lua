return {
	"tpope/vim-fugitive",
	event = "BufWinEnter",

	vim.keymap.set("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true, desc = "Open git status" }),
	vim.keymap.set(
		"n",
		"<leader>ga",
		":Git add %<CR>",
		{ noremap = true, silent = true, desc = "Stage the current file" }
	),
	vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { noremap = true, silent = true, desc = "Commit changes" }),
	vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true, desc = "Push changes" }),
	vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", { noremap = true, silent = true, desc = "Pull changes" }),
	vim.keymap.set(
		"n",
		"<leader>gr",
		":Git pull --rebase<CR>",
		{ noremap = true, silent = true, desc = "Pull changes with rebase" }
	),
	vim.keymap.set("n", "<leader>gco", ":Git checkout ", { noremap = true, silent = true, desc = "Checkout a branch" }),
	vim.keymap.set("n", "<leader>gb", ":Git branch ", { noremap = true, silent = true, desc = "Create a new branch" }),
}

