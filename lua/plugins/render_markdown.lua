return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  opts = {
    enabled = false,
    latex = { enabled = false },
  },
  keys = {
    {
      "<leader>rt",
      "<cmd>RenderMarkdown toggle<cr>",
      desc = "Toggle Markdown rendering",
    },
  },
}
