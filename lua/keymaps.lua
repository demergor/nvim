-- lua/keymaps.lua

-- Open new Alacritty window
vim.keymap.set("n", "<leader>t", ":!nohup alacritty >/dev/null 2>&1 &<CR>", { desc = "Open new Alacritty window" })

-- Move selection up or down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Toggle virtual text (inline errors)
vim.keymap.set("n", "<leader>em", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
  print("Virtual text: " .. (not current and "ON" or "OFF"))
end, { desc = "Toggle diagnostic virtual text" })

-- LaTeX skeletons selection
vim.keymap.set('n', '<leader>ls', function()
  require('telescope.builtin').find_files({
    prompt_title = "LaTeX Skeletons",
    cwd = "~/.config/nvim/skeletons",
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')
      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)

        -- Prompt for new file name (defaults to current buffer name)
        local new_filename = vim.fn.input("New file name: ", vim.fn.expand("%:t"))
        vim.cmd("edit " .. new_filename)

        -- Read skeleton content
        local lines = vim.fn.readfile(selection.path)
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
      end)
      return true
    end
  })
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

