return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- Basic settings
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_quickfix_open_on_error = 0
    vim.g.vimtex_clean_enabled = 1

    -- Viewer settings per OS
    if vim.fn.has('macunix') == 1 then
      -- macOS: use Skim 
      vim.g.vimtex_view_method = 'skim'
    else
      -- Linux: use Okular
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"
    end

    -- Keybindings
    vim.api.nvim_set_keymap('n', '<localleader>lf', ':VimtexStop<CR>:VimtexCompile<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<localleader>lc', ':VimtexStop<CR>:VimtexClean<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<localleader>lC', ':VimtexStop<CR>:VimtexClean!<CR>', { noremap = true, silent = true })

  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex" },
    {
      "<localLeader>lq",
      function() 
        vim.cmd("VimtexErrors")
        vim.cmd("wincmd p")
      end,
      desc = "Quickfix (no focus)",
    }
  },
}
