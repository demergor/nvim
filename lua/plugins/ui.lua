return {
	{
		dir = vim.fn.stdpath("config"),
		name = "apply-colorscheme",
		init = function()
			vim.cmd("colorscheme default")
		end,
		config = function()
			vim.keymap.set(
        "n",
        "<leader>uc",
        "<cmd>colorscheme default<CR>",
        { desc = "Update colorscheme (to default)" }
      )
		end,
	},
}
