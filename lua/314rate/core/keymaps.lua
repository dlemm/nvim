-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps --
---------------------

-- Comment
keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- Clear search highlights
keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Select complete file
keymap.set("n", "<leader>a", "gg0vGg_", { desc = "Select all text including last word" })

---------------------
-- FzfLua Keymaps  --
---------------------
keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Show all buffers" })
keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<CR>", { desc = "Find last file" })
keymap.set("n", "<leader>fs", "<cmd>FzfLua live_grep<CR>", { desc = "Find in project" })
keymap.set("n", "<leader>fw", "<cmd>FzfLua grep_cword<CR>", { desc = "Find word under cursor" })

-- Delete all buffers
keymap.set("n", "<leader>db", ":%bd<CR>", { desc = "Delete all buffers" })

-------------------------
-- Window Management   --
-------------------------
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>sn", "<cmd>vnew<CR>", { desc = "Open new empty vertical split" })
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<leader>bc", "<cmd>bp|sp|bn|bd<CR>", { desc = "Close current buffer" })

---------------------
-- Git             --
---------------------
keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })

---------------------
-- Line Movement   --
---------------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---------------------
-- Tmux Sessionizer--
---------------------
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

---------------------
-- Obsidian Todo   --
---------------------
keymap.set("n", "<leader>todo", function()
	local date = os.date("%Y-%m-%d")
	vim.api.nvim_put({ "- [ ] Aufgabe 📅 due: " .. date }, "l", true, true)
end, { desc = "Insert Obsidian Todo", silent = true })

---------------------
-- Lspsaga         --
---------------------
keymap.set("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next diagnostic", silent = true })
keymap.set(
	"n",
	"<leader>dp",
	"<cmd>Lspsaga show_line_diagnostics<CR>",
	{ desc = "Show line diagnostics", silent = true }
)
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover documentation", silent = true })
