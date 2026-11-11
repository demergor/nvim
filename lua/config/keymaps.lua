-- Shift visual selection up or down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Center cursor after jumps
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*" , "*zz")
vim.keymap.set("n", "#" , "#zz")

-- Restart lsp
vim.keymap.set("n", "<leader>lsr", "<cmd>lsp restart<CR>")

-- Sync jupytext file
vim.keymap.set("n", "<leader>js", "<cmd> w | !jupytext --sync %<CR>")

-- Save current file % to pdf/%<.pdf
-- vim.keymap.set("n", "<leader>rp", "<cmd> w | !pandoc % -o pdf/%<.pdf<CR>")
vim.keymap.set("n", "<leader>rp", function()
  vim.cmd("write")

  local file = vim.fn.expand("%:p")
  local dir = vim.fn.expand("%:p:h")
  local fext = vim.fn.expand("%:e")
  local fname = vim.fn.expand("%:t:r")

  local output = dir .. "/pdf/" .. fname .. ".pdf"
  vim.fn.mkdir(dir .. "/pdf", "p")

  if vim.tbl_contains({ "m", "cpp", "rs" }, fext) then
    vim.fn.system(
      "enscript -E --color -p - " .. vim.fn.shellescape(file)
      .. " | ps2pdf - " .. vim.fn.shellescape(output)
    )
  else
    vim.fn.system({
      "pandoc", file, "-o", output
    })
  end

  print("Wrote pdf to " .. output)
end)

-- Save current project working directory to clipboard (copyq)
vim.keymap.set("n", "<leader>pwd", "<cmd>silent !copyq copy $PWD<CR>")

-- LiveShare
vim.keymap.set("n", "<leader>lsW", "<cmd>LiveShareWorkspace<CR>")
vim.keymap.set("n", "<leader>lsX", "<cmd>LiveShareStop<CR>")
vim.keymap.set("n", "<leader>lsT", "<cmd>LiveShareTerminal<CR>")
vim.keymap.set("n", "<leader>lsP", "<cmd>LiveSharePeers<CR>")
vim.keymap.set("n", "<leader>lsD", "<cmd>LiveShareDebugInfo<CR>")
vim.keymap.set("n", "<leader>lsF", "<cmd>LiveShareFollow<CR>")
vim.keymap.set("n", "<leader>lsU", "<cmd>LiveShareUnfollow<CR>")
