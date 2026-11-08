return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")
    ls.config.set_config({
      history = true,
      update_events = {"TextChanged", "TextChangedI"},
      enable_autosnippets = true,
    })

    ls.filetype_extend("markdown", { "tex" })

    require("luasnip.loaders.from_lua").lazy_load({
      paths = {vim.fn.stdpath("config") .. "/snippets" },
    })

    vim.keymap.set({ "i", "s" }, "<C-K>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-J>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
