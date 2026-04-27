vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

-- in visual mode move up/down a selected text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- joins two lines and cursor remains in the same position
keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps the search result always centered
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- paste over the selected text multiple times
keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selected text; the replaced text is discarded" })

-- yank (copy) text into the system clipboard
keymap.set("n", "<leader>y", [["+y]], { desc = "Yank motion into system clipboard (e.g. <leader>yy = yank line)" })
keymap.set("v", "<leader>y", [["+y]], { desc = "Yank selection into system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line into system clipboard" })

-- Avoid Ex mode
keymap.set("n", " Q", "<nop>")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- navigate through the location list
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Go to next item in location list" })
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Go to previous item in location list" })

-- Makes the current file executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Makes the current file executable", silent = true })
