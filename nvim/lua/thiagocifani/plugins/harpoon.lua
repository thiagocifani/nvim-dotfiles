return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { silent = true, desc = "Add current file to Harpoon" })
		vim.keymap.set("n", "<leader>ho", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { silent = true, desc = "Toggle Harpoon" })

		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():select(1)
		end, { silent = true, desc = "Select Harpoon list 1" })
		vim.keymap.set("n", "<C-r>", function()
			harpoon:list():select(2)
		end, { silent = true, desc = "Select Harpoon list 2" })
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end, { silent = true, desc = "Select Harpoon list 3" })
		vim.keymap.set("n", "<C-o>", function()
			harpoon:list():select(4)
		end, { silent = true, desc = "Select Harpoon list 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { silent = true, desc = "Select previous Harpoon list" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { silent = true, desc = "Select next Harpoon list" })
	end,
}
