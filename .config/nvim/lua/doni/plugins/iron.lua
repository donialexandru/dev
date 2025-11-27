return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")

		iron.setup({
			config = {
				-- Whether a repl should be discarded or not
				scratch_repl = true,

				-- Your repl definitions
				repl_definition = {
					python = {
						command = { "ipython", "--no-autoindent" },
					},
				},

				-- How the repl window will be opened
				repl_open_cmd = require("iron.view").split.vertical.botright(0.4), -- 40% of screen width
			},

			-- Iron doesn't set keymaps by default
			-- You can set them here or manually with vim.keymap.set
			keymaps = {
				send_motion = "<space>sc",
				visual_send = "<space>sc",
				send_file = "<space>sf",
				send_line = "<space>sl",
				send_paragraph = "<space>sp",
				send_until_cursor = "<space>su",
				send_mark = "<space>sm",
				-- mark_motion = "<space>mc",
				-- mark_visual = "<space>mc",
				-- remove_mark = "<space>md",
				cr = "<space>s<cr>",
				interrupt = "<space>s<space>",
				exit = "<space>sq",
				clear = "<space>cl",
			},

			-- If the highlight is on, you can change how it looks
			highlight = {
				italic = true,
			},

			ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
		})

		-- Setup keymaps for REPL control
		vim.keymap.set("n", "<space>rs", "<cmd>IronRepl<cr>")
		vim.keymap.set("n", "<space>rr", "<cmd>IronRestart<cr>")
		vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>")
		vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>")
	end,
}
