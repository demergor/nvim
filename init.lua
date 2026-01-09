-- <leader>
vim.g.mapleader = "\\"

-- Fix Path conflicts on MacOs
if vim.fn.has('macunix') == 1 then
  vim.env.PATH = "/Library/TeX/texbin:" .. vim.env.PATH
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})

-- Modules
require("settings")
require("keymaps")
require("colors")
require("core.lazy")
