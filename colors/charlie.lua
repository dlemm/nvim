local colors = {
	bg = "#2E3440", -- Dunkler Hintergrund
	fg = "#D8DEE9", -- Helle Vordergrundfarbe (normaler Text)
	comment = "#616E88", -- Kommentare (gedämpftes Blau)
	keyword = "#B48EAD", -- Keywords (zartes Lila)
	function_name = "#88C0D0", -- Funktionsnamen (pastelliges Blau)
	string = "#A3BE8C", -- Strings (weiches Grün)
	warning = "#EBCB8B", -- Warnungen (weiches Gelb)
	error = "#BF616A", -- Fehler (gedämpftes Rot)
}

-- Setze die Farben für verschiedene Highlight-Gruppen
vim.cmd("highlight Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
vim.cmd("highlight Comment guifg=" .. colors.comment .. " gui=italic")
vim.cmd("highlight Keyword guifg=" .. colors.keyword .. " gui=bold")
vim.cmd("highlight Function guifg=" .. colors.function_name)
vim.cmd("highlight String guifg=" .. colors.string)
vim.cmd("highlight WarningMsg guifg=" .. colors.warning .. " gui=bold")
vim.cmd("highlight ErrorMsg guifg=" .. colors.error .. " gui=bold")

-- Setze weitere Syntax-Elemente, die wichtig für den Editor sind
vim.cmd("highlight LineNr guifg=" .. colors.comment)
vim.cmd("highlight CursorLineNr guifg=" .. colors.fg .. " guibg=" .. colors.bg)
vim.cmd("highlight Pmenu guibg=" .. colors.bg .. " guifg=" .. colors.fg)
vim.cmd("highlight PmenuSel guibg=" .. colors.comment .. " guifg=" .. colors.bg)

-- GIT und Treesitter Unterstützung (falls installiert)
vim.cmd("highlight GitSignsAdd guifg=" .. colors.string)
vim.cmd("highlight GitSignsChange guifg=" .. colors.warning)
vim.cmd("highlight GitSignsDelete guifg=" .. colors.error)

vim.cmd("highlight TSFunction guifg=" .. colors.function_name .. " gui=bold")
vim.cmd("highlight TSKeyword guifg=" .. colors.keyword)
vim.cmd("highlight TSString guifg=" .. colors.string)
