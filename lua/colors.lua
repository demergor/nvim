local function my_colors()
  -- Text
  vim.api.nvim_set_hl(0, "Normal",            { fg = "#ffac69", bg = "#000000" })
  vim.api.nvim_set_hl(0, "Function",          { fg = "#b00b1e", bold = true })
  vim.api.nvim_set_hl(0, "Number",            { fg = "#ffa7a9" })
  vim.api.nvim_set_hl(0, "String",            { fg = "#9faf90" })
  vim.api.nvim_set_hl(0, "Comment",           { fg = "#898980", italic = true }) -- this is a comment
  vim.api.nvim_set_hl(0, "Statement",         { fg = "#d1d5d2", bold = true })
  vim.api.nvim_set_hl(0, "Special",           { fg = "#ff7739", bold = false })
  vim.api.nvim_set_hl(0, "Type",              { fg = "#b69391", bold = true })
  vim.api.nvim_set_hl(0, "Delimiter",         { fg = "#efe9f4" })
  vim.api.nvim_set_hl(0, "Constant",          { fg = "#ffa7a9" })

  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor",            { fg = "#000000", bg = "#ffffff" })
  vim.api.nvim_set_hl(0, "CursorLine",        { bg = "#181818" })
  vim.api.nvim_set_hl(0, "CursorLineNr",      { fg = "#ffac69", bold = true })
  vim.api.nvim_set_hl(0, "LineNr",            { fg = "#eeddbb" })

  -- Color column
  vim.api.nvim_set_hl(0, "ColorColumn",       { bg = "#110000" })

  vim.api.nvim_set_hl(0, "@variable",         { fg = "#ede3e4" })
  vim.api.nvim_set_hl(0, "Identifier",        { fg = "#ede3e4" })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine",        { fg = "#ffffff", bg = "#110000", bold = true })
end

my_colors()
