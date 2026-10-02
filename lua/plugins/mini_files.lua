return {
  "echasnovski/mini.files",
  version = false,
  config = function()
    require("mini.files").setup({
      options = {
        permanent_delete = true,
        use_as_default_explorer = true,
      },
    })

    vim.keymap.set("n", "-", function()
      require("mini.files").open(vim.api.nvim_buf_get_name(0))
    end, { desc = "Open mini.files" })
  end,
}
