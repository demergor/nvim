return {
  "cbochs/grapple.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("grapple").setup()
    require("telescope").load_extension("grapple")
  end,
}
