vim.keymap.set("n", "<leader>t", ":!nohup alacritty >/dev/null 2>&1 &<CR>", { desc = "Open Alacritty" })

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
