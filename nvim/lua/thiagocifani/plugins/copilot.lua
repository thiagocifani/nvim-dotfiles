return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_node_command = vim.fn.expand("~/.asdf/installs/nodejs/24.1.0/bin/node")
		vim.cmd([[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]])
	end,
}
