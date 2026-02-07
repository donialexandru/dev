return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"b0o/schemastore.nvim",
	},
	config = function()
		vim.lsp.config("jsonls", {
			settings = {
				json = {
					schemas = require("schemastore").json.schemas(),
					validate = { enable = true },
				},
			},
		})
	end,
}
