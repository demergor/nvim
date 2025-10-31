vim.keymap.set("n", "<leader>t", ":!nohup alacritty >/dev/null 2>&1 &<CR>", { desc = "Open new Alacritty window" })

-- Move selection up or down
vim.keymap.set("v", "K", function()
  local count = vim.v.count1 + 1
  local line_nr = vim.api.nvim_win_get_cursor(0)[1]
  local sel_start = vim.fn.getpos("'<")[2]
  if line_nr == sel_start then
    return string.format(":m'<-%d<CR>gv=gv", count)
  else
    return string.format(":m'<-%d<CR>gv=gv", count - (line_nr - sel_start))
  end
end, { expr = true, desc = "Move selection up by n lines" })

vim.keymap.set("v", "J", function()
  local count = vim.v.count1
  local line_nr = vim.api.nvim_win_get_cursor(0)[1]
  local sel_end = vim.fn.getpos("'>")[2]
  if line_nr == sel_end then
    return string.format(":m'>+%d<CR>gv=gv", count)
  else
    return string.format(":m'>+%d<CR>gv=gv", count - (sel_end - line_nr))
  end
end, { expr = true, desc = "Move selection down by n lines" })

-- config stuff
vim.keymap.set("n", "<leader>uc", function()
  package.loaded["colors"] = nil
  require("colors")
end, { desc = "Update colors" })

vim.keymap.set("n", "<leader>us", function()
  package.loaded["editor_settings"] = nil
  require("editor_settings")
end, { desc = "Update editor settings" })

vim.keymap.set("n", "<leader>uk", function()
  package.loaded["keymaps"] = nil
  require("keymaps")
end, { desc = "Update keymaps" })
