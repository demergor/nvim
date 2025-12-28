-- lua/keymaps.lua

-- Open new Alacritty window
vim.keymap.set("n", "<leader>t", ":!nohup alacritty >/dev/null 2>&1 &<CR>", { desc = "Open new Alacritty window" })

-- Move selection up or down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set(
  "n",
  "<leader>em",
  "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>",
  { noremap = true, silent = true, desc = "Open floating diagnostics window" }
)

-- LaTeX skeletons selection
vim.keymap.set("n", "<leader>sk", function()
  require("skeletons").insert_skeleton_picker()
end)


-- Grapple keymaps
vim.keymap.set("n", "<leader>mt", function()
  require("grapple").tag()
end, { desc = "Mark file with Grapple" })

vim.keymap.set("n", "<leader>mu", function()
  require("grapple").untag()
end, { desc = "Unmark file" })

vim.keymap.set("n", "<leader>mm", function()
  require("grapple").toggle()
end, { desc = "Toggle tag" })

vim.keymap.set("n", "<leader>ms", function()
  require("telescope").extensions.grapple.tags()
end, { desc = "Select Grapple tag" })

-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', function()
  require('telescope.builtin').find_files()
end, { desc = "Find files" })

vim.keymap.set('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end, { desc = "Live grep" })

vim.keymap.set('n', '<leader>fb', function()
  require('telescope.builtin').buffers()
end, { desc = "List buffers" })

vim.keymap.set('n', '<leader>fh', function()
  require('telescope.builtin').help_tags()
end, { desc = "Help tags" })


-- Reload colors
vim.keymap.set("n", "<leader>uc", function()
  package.loaded["colors"] = nil
  require("colors")
end, { desc = "Update colors" })

-- Reload settings
vim.keymap.set("n", "<leader>us", function()
  package.loaded["settings"] = nil
  require("settings")
end, { desc = "Update editor settings" })

