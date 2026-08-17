return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    dim = {
      enabled = true,
      scope = {
        min_size = 10,
        max_size = 30,
        siblings = true,
      },
    },
    explorer = { enabled = true },
    image = {
      enabled = true,
      doc = {
        enabled = true,
        inline = true,
        float = true,
      },
      math = { enabled = true },
    },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    picker = {
      enabled = true,
      win = { input = { keys = {
        ["<C-d>"] = { "list_down", mode = { "i", "n" } },
        ["<C-u>"] = { "list_up", mode = { "i", "n" } },
        ["<Esc>"] = { "close", mode = { "i", "n" } },
      }, }, },
    },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = {
      enabled = true,
      modes = { "n" },
    },
  },
  keys = {
    { "<leader>dt", function() Snacks.toggle.dim():toggle() end, },

    { "<leader>fb", function() Snacks.picker.buffers() end },
    { "<leader>ff", function() Snacks.picker.files() end },
    { "<leader>fg", function() Snacks.picker.grep() end },
    { "<leader>fr", function() Snacks.picker.recent() end },
    { "<leader>ft", function() Snacks.picker.todo_comments() end },

    { "<leader>fd", function() Snacks.picker.diagnostics() end },
    { "<leader>fs", function() Snacks.picker.lsp_symbols() end },

    { "<leader>fk", function() Snacks.picker.keymaps() end },
  },
}
