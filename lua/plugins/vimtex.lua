return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- Basic settings
    vim.g.vimtex_quickfix_mode = 1
    vim.g.vimtex_clean_enabled = 1

    -- Viewer settings per OS
    if vim.fn.has('macunix') == 1 then
      -- macOS: use Skim (best for inverse search)
      vim.g.vimtex_view_method = 'skim'
    else
      -- Linux: use Okular with --unique
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_view_general_options = '--unique %pdf#src:%line%file'
    end

    -- Keybindings
    vim.api.nvim_set_keymap('n', '<localleader>lf', ':VimtexStop<CR>:VimtexCompile<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<localleader>lc', ':VimtexStop<CR>:VimtexClean<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<localleader>lC', ':VimtexStop<CR>:VimtexClean!<CR>', { noremap = true, silent = true })

  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex" },
  },
}
