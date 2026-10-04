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

-- Render Markdown
set_hl(0, "RenderMarkdownH1", { fg = "#d8a06a", bold = true })
set_hl(0, "RenderMarkdownH2", { fg = "#d6996b", bold = true })
set_hl(0, "RenderMarkdownH3", { fg = "#cfcac7", bold = true })
set_hl(0, "RenderMarkdownH4", { fg = "#cfcac7" })
set_hl(0, "RenderMarkdownH5", { fg = "#b2a18a" })
set_hl(0, "RenderMarkdownH6", { fg = "#8a8a82" })

-- Heading backgrounds
set_hl(0, "RenderMarkdownH1Bg", { bg = "#181818" })
set_hl(0, "RenderMarkdownH2Bg", { bg = "#141414" })
set_hl(0, "RenderMarkdownH3Bg", { bg = "#111111" })
set_hl(0, "RenderMarkdownH4Bg", { bg = "#0e0e0e" })
set_hl(0, "RenderMarkdownH5Bg", { bg = "#0b0b0b" })
set_hl(0, "RenderMarkdownH6Bg", { bg = "#080808" })

-- Code blocks
set_hl(0, "RenderMarkdownCode", {
    fg = "#cfcac7",
    bg = "#181313",
})

set_hl(0, "RenderMarkdownCodeInfo", {
    fg = "#b2a18a",
    bg = "#181313",
})

set_hl(0, "RenderMarkdownCodeBorder", {
    fg = "#390000",
    bg = "#181313",
})

set_hl(0, "RenderMarkdownCodeFallback", {
    fg = "#cfcac7",
    bg = "#181313",
})

set_hl(0, "RenderMarkdownCodeInline", {
    fg = "#a1bf95",
    bg = "#181313",
})

-- Other Markdown elements
set_hl(0, "RenderMarkdownBullet", { fg = "#d6996b" })
set_hl(0, "RenderMarkdownQuote", { fg = "#8a8a82", italic = true })
set_hl(0, "RenderMarkdownChecked", { fg = "#a1bf95" })
set_hl(0, "RenderMarkdownUnchecked", { fg = "#8a8a82" })
set_hl(0, "RenderMarkdownSign", { fg = "#8a8a82" })
set_hl(0, "RenderMarkdownIndent", { fg = "#390000" })
set_hl(0, "RenderMarkdownInlineHighlight", { bg = "#33251c" })
