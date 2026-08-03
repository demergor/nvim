vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "default"

local set_hl = vim.api.nvim_set_hl

-- Base UI
set_hl(0, "Normal",        { fg = "#d8a06a", bg = "#000000" })
set_hl(0, "Cursor",        { fg = "#000000", bg = "#d0d0d0" })
set_hl(0, "CursorLine",    { bg = "#181818" })
set_hl(0, "CursorLineNr",  { fg = "#d8a06a", bold = true })
set_hl(0, "LineNr",        { fg = "#b2a18a" })
set_hl(0, "ColorColumn",   { bg = "#110000" })
set_hl(0, "StatusLine",    { fg = "#e0e0e0", bg = "#110000", bold = true })
set_hl(0, "Directory",     { fg = "#dcdcdc", bold = true })
set_hl(0, "NormalFloat",   { fg = "#cccccc", bg = "#181313" })

-- Syntax & Treesitter
set_hl(0, "Identifier",    { fg = "#ded6d0" })
set_hl(0, "@variable",     { fg = "#cdd0cd" })
set_hl(0, "Statement",     { fg = "#bbbbbb", bold = true })
set_hl(0, "Function",      { fg = "#c15f5f", bold = true })
set_hl(0, "Type",          { fg = "#e0703a", bold = false })
set_hl(0, "Special",       { fg = "#e0703a", bold = false })
set_hl(0, "String",        { fg = "#a1bf95" })
set_hl(0, "Constant",      { fg = "#d89aa0" })
set_hl(0, "Number",        { fg = "#d89aa0" })
set_hl(0, "Comment",       { fg = "#8a8a82", italic = true })
set_hl(0, "Delimiter",     { fg = "#cfcac7" })

-- Selections & Search
set_hl(0, "Visual",        { fg = "#000000", bg = "#aa6939" })
set_hl(0, "Search",        { fg = "#1c1c1c", bg = "#ffaf5f" })
set_hl(0, "MatchParen",    { bg = "#696969", bold = true })

-- Rainbow Delimiters
set_hl(0, "RainbowDelimiterRed",    { fg = "#cfcac7" })
set_hl(0, "RainbowDelimiterYellow", { fg = "#d6996b" })
set_hl(0, "RainbowDelimiterBlue",   { fg = "#cfcac7" })
set_hl(0, "RainbowDelimiterOrange", { fg = "#d6996b" })
set_hl(0, "RainbowDelimiterGreen",  { fg = "#cfcac7" })
set_hl(0, "RainbowDelimiterViolet", { fg = "#d6996b" })
set_hl(0, "RainbowDelimiterCyan",   { fg = "#cfcac7" })

-- Snacks
-- indent
set_hl(0, "SnacksIndent", { fg = "#111111" })
set_hl(0, "SnacksIndentScope", { fg = "#390000" })
