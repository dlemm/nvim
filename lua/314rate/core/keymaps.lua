-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Comment
keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- select complete file
keymap.set("n", "<leader>a", "gg0vGg_", { desc = "Select all text including last word" })

-- show all buffers
keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "Show all buffers" })
keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "Find Files" })
keymap.set("n", "<leader>fr", ":FzfLua resume<CR>", { desc = "Find last file" })
keymap.set("n", "<leader>fs", ":FzfLua live_grep<CR>", { desc = "Find in project" })
keymap.set("n", "<leader>fw", ":FzfLua grep_cword<CR>", { desc = "Find word under cursor" })
keymap.set("n", "<leader>db", ":%bd<CR>", { desc = "Delete all buffers" }) -- delete all buffers

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sn", ":vnew<CR>", { desc = "Open new empty vertical split" }) -- open new vertical split
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>bc", "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close current buffer" })

-- Git
keymap.set("n", "<leader>gs", "<cmd>Git<CR>") -- Git status

-- Switch line
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Obsidian
vim.api.nvim_set_keymap(
	"n",
	"<leader>todo",
	[[o- [ ] Aufgabe 📅 due: <C-R>=strftime("%Y-%m-%d")<CR><Esc>]],
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>ont", "<cmd>ObsidianNewFromTemplate<CR>", { noremap = true, silent = true })

-- LSPSaga keymaps for diagnostics
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Zeige die Diagnose in einem Popup an
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Zeige Hover-Informationen
vim.api.nvim_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

