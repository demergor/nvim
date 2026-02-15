return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
    },

    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      local border_opts = {
        border = { {"╭","FloatBorder"}, {"─","FloatBorder"}, {"╮","FloatBorder"},
                   {"│","FloatBorder"}, {"╯","FloatBorder"}, {"─","FloatBorder"},
                   {"╰","FloatBorder"}, {"│","FloatBorder"} }
      }

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
        }, {
          { name = "buffer" },
        }),

        completion = {
          keyword_length = 2,
        },

        formatting = {
          format = lspkind.cmp_format({
            mode = "text",  -- shows both icon and text
            maxwidth = 50,
          }),
        },

        experimental = {
          ghost_text = false,
        },

        window = {
          completion = cmp.config.window.bordered(vim.tbl_extend("force", border_opts, { max_height = 5 })),
          documentation = cmp.config.window.bordered(border_opts),
          max_height = 5,
        },
      })
    end,
  },
}
