vim.opt.path = { './', './**' }

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.colorcolumn = "88"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.cmd("syntax enable")

-- vim.opt.cindent = true
-- vim.opt.cinoptions = "ms(s"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = "rounded" }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { border = "rounded" }
)
