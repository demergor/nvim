return {
  "saghen/blink.cmp",
  version = "*",
  build = function()
    require("blink.cmp").build():pwait()
  end,
  dependencies = {
    "saghen/blink.lib",
  },
  opts = {
    keymap = {
      preset = "none",
      ["°"] = { "accept", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    completion = {
      keyword = { range = "full" },
      menu = {
        max_height = 5,
        border = "single",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        draw = {
          columns = { { "label", "label_description", gap = 1 } },
        },
      },

      documentation = {
        window = {
          border = "single",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
        },
      },

      ghost_text = { enabled = false },
    },

    appearance = {
      nerd_font_variant = "mono",
      use_nvim_cmp_as_default = true,
    },
    sources = {
      default = { "lsp", "buffer" },
      min_keyword_length = 2,
    },
  },
}
