-- vim.keymap.set("n", "<leader>t", ":!nohup alacritty >/dev/null 2>&1 &<CR>", { desc = "Open new Alacritty window" })

-- Move selection up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Toggle virtual text (inline errors)
vim.keymap.set("n", "<leader>em", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
  print("Virtual text: " .. (not current and "ON" or "OFF"))
end, { desc = "Toggle diagnostic virtual text" })

-- Config stuff
vim.keymap.set("n", "<leader>uc", function()
  package.loaded["colors"] = nil
  require("colors")
end, { desc = "Update colors" })

vim.keymap.set("n", "<leader>us", function()
  package.loaded["settings"] = nil
  require("settings")
end, { desc = "Update editor settings" })

vim.keymap.set("n", "<leader>uk", function()
  package.loaded["keymaps"] = nil
  require("keymaps")
end, { desc = "Update keymaps" })
