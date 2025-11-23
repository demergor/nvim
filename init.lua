-- <leader>
vim.g.mapleader = "\\"

-- Fix Path conflicts on MacOs
if vim.fn.has('macunix') == 1 then
  vim.env.PATH = "/Library/TeX/texbin:" .. vim.env.PATH
end

-- Modules
require("settings")
require("keymaps")
require("colors")
require("core.lazy")
