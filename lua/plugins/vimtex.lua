return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- Use Okular via the general viewer method
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_view_general_viewer = "okular"
    vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"

    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_clean_enabled = 1
    vim.g.vimtex_clean_partial = 0

    vim.g.vimtex_compiler_latexmk = {
      out_dir = ".",
    }
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex" },
  },
}
