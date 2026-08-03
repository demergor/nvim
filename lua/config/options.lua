vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.cindent = true
vim.opt.cinoptions = "ms(s"

vim.opt.colorcolumn = "88"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.cmd("syntax enable")

vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  float = {
    border = "rounded",
    source = "always",
    focusable = true,
    max_width = 88,
    max_height = 20,
    wrap = true,
  },
})
