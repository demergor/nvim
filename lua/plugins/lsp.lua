return {
  {
    "neovim/nvim-lspconfig", 
    lazy = false, 
    config = function()      -- Suppress JDTLS exit messages
      vim.notify = (function(orig_notify)
        return function(msg, log_level, opts)
          if type(msg) == "string" and msg:match("Client jdtls quit") then
            return
          end
          orig_notify(msg, log_level, opts)
        end
      end)(vim.notify)

      -- Enable global LSP file watching handler (for jdtls)
      vim.lsp.handlers["workspace/didChangeWatchedFiles"] =
      vim.lsp.handlers["workspace/didChangeWatchedFiles"] or function() end

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "clangd" },
      }) 

      vim.diagnostic.config({
        virtual_text = false,      -- disable inline virtual text
        signs = true,              -- keep gutter signs
        underline = true,          -- highlight problematic code
        float = {
          border = "rounded",      -- rounded border
          source = "always",       -- show LSP source
          focusable = false,       -- lightweight, doesn't steal focus
          max_width = 88,          -- restrict width
          max_height = 20,         -- optional: limit height
          wrap = true,             -- wrap long lines
        },
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }

          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

          vim.keymap.set("n", "<leader>em", function()
            local vt = vim.diagnostic.config().virtual_text
            vim.diagnostic.config({ virtual_text = not (vt ~= false) })
          end, opts)
        end,
      })

      vim.lsp.config("pyright", {})
      vim.lsp.config("omnisharp", {})
      vim.lsp.config("rust_analyzer", {})
      vim.lsp.config("lua_ls", {})

      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--compile-commands-dir=build",
          "--fallback-style=file:/home/jimmy/.config/nvim/indent/.clang-format",
          "--log=verbose",
        }, 
        root_dir = vim.fs.root(0, {
          "compile_commands.json",
          "CMakeLists.txt",
          ".clangd",
          ".git",
        }),
      })
    end, 
  },
}
