return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	vim.keymap.set("n", "<leader>tr", ":TestNearest<CR>", { desc = "Run the nearest test from the cursor" }),
	vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "Run the entire test file" }),
	vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { desc = "Run all tests" }),
	vim.keymap.set("n", "<leader>l", ":TestLast<CR>", { desc = "Run the last test" }),
	vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", { desc = "Visit the last test file you ran" }),

	vim.cmd("let test#strategy = 'vimux'"),
}
