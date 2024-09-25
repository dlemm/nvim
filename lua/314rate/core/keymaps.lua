-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- copy file
keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General Copy whole file" })

-- Comment
keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- save, quit
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>c", ":q<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- search and replace
vim.keymap.set("n", "<leader>sr", ":%s//g<Left><Left>", { desc = "Search and replace" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", function()
	if vim.fn.tabpagenr("$") > 1 then
		vim.cmd("tabclose")
	else
		print("Kann den letzten Tab nicht schließen.")
	end
end, { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>bc", "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close current buffer" })

-- Git
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
keymap.set("n", "<leader>gs", "<cmd>Git<CR>") -- Git status
keymap.set("n", "<leader>gc", "<cmd>G commit<CR>") -- Git commit
keymap.set("n", "<leader>gp", "<cmd>G push<CR>") -- Git push
keymap.set("n", "<leader>gid", "<cmd>Gdiffsplit<CR>") -- Git diff
keymap.set("n", "<leader>gb", "<cmd>Gblame<CR>") -- Git blame

-- Switch line
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Keymaps for changing Buffers
vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Obsidian
vim.api.nvim_set_keymap(
	"n",
	"<leader>todo",
	[[o- [ ] Aufgabe 📅 due: <C-R>=strftime("%Y-%m-%d")<CR><Esc>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>ont", "<cmd>ObsidianNewFromTemplate<CR>", { noremap = true, silent = true })

-- LSPSaga keymaps for diagnostics
-- Springe zur nächsten Fehlermeldung
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Zeige die Diagnose in einem Popup an
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- Zeige Hover-Informationen
vim.api.nvim_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Jump to end of line in insert mode
vim.api.nvim_set_keymap("i", "<A-Right>", "<C-o>$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-Left>", "<C-o>^", { noremap = true, silent = true })

-- Open nvim-tree and focus current file
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Open nvim-tree and focus current file" })
