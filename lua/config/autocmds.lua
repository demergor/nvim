vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
  callback = function(event)
    local opts = {
      buffer = event.buffer,
      silent = true,
    }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    vim.keymap.set("n", "[d", function() vim.diagnostic.jump({
      count = -1,
      float = true,
    }) end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.jump({
      count = 1,
      float = true,
    }) end, opts)

    vim.keymap.set("n", "<leader>em", function()
      local cur = vim.diagnostic.config().virtual_text
      vim.diagnostic.config({ virtual_text = not cur })
    end, opts)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local buf = args.buf
    local ft = vim.bo[buf].filetype
    local lang = vim.treesitter.language.get_lang(ft) or ft
    pcall(vim.treesitter.start, buf, lang)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h", "hpp", "hxx" },
  callback = function()
    local format_file = vim.fn.expand("~/.clang-format")
    local cmd = "clang-format --style=file:"
      .. format_file
      .. " --assume-filename=%:p"

    vim.bo.equalprg = cmd
    vim.bo.formatprg = cmd
    vim.bo.formatexpr = ""
  end
})
