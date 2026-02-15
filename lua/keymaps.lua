-- Move selection up or down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor after (half)-page jumps
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "<C-D>", "<C-D>zz")

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

-- LSP
-- Restart LSP
vim.keymap.set(
  "n",
  "<leader>lsr",
  function()
    local clients = vim.lsp.get_clients({ buf = 0 })
    local ft = vim.bo.filetype

    local servers_by_ft = {
      python = "pyright",
      rust = "rust_analyzer",
      lua = "lua_ls",
      c = "clangd",
      cpp = "clangd",
      csharp = "omnisharp",
      java = "jdtls",
    }

    local server = servers_by_ft[ft]
    if not server then return end

    if #clients > 0 then
      for _, client in ipairs(clients) do
        vim.lsp.stop_client(client.id)
      end
    end

    vim.cmd("LspStart " .. server)
end, { noremap = true, silent = true, desc = "Restart LSP (robust)" })

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

