local ls = require("luasnip")
local rep = require("luasnip.extras").rep
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local function env_snip(trigger, env)
  return s(trigger, {
    t({"\\begin{" .. env .. "}", ""}),
    i(1),
    t({ "", "\\end{" .. env .. "}"}),
    i(0),
  }, {
    snippetType = "autosnippet"
  })
end

local autosnippets = {
  s(";menv", {
    t({"$$", ""}),
    i(1),
    t({"", "$$"}),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";frac", {
    t("\\frac{"),
    i(1, "enum"),
    t("}{"),
    i(2, "denom"),
    t("}"),
    i(0)
  }, {
    snippetType = "autosnippet",
  }),

  s(";pow", {
    i(1, "base"),
    t("^{"),
    i(2, "exponent"),
    t("}"),
  }, {
    snippetType = "autosnippet",
  }),

  s(";sub", {
    i(1, "base"),
    t("_{"),
    i(2, "subscript"),
    t("}"),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";lam", {
    t("\\lambda"),
    i(0),
  }, {
    snippetType = "autosnippet",
    wordTrig = false,
  }),

  s(";Lam", {
    t("\\Lambda"),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";->", {
    t("\\rightarrow"),
    i(0)
  }, {
    snippetType = "autosnippet",
  }),

  s(";=>", {
    t("\\Rightarrow"),
    i(0)
  }, {
    snippetType = "autosnippet",
  }),

  s(";x->", {
    t("\\xrightarrow{"),
    i(1),
    t("}"),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";begin", {
    t("\\begin{"),
    i(1, "env"),
    t({ "}", "" }),
    i(2),
    t({ "", "\\end{" }),
    rep(1),
    t("}"),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),
  env_snip(";pmat", "pmatrix"),
  env_snip(";bmat", "bmatrix"),
  env_snip(";ali", "align"),
  env_snip(";al*", "align*"),
  env_snip(";aled", "aligned"),

  s(";arr", {
    t("\\begin{array}{"),
    i(1, "ccc|ccc"),
    t({"}", ""}),
    i(2),
    t({"", "\\end{array}"}),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";boxed", {
    t({"\\boxed{\\begin{aligned}", ""}),
    i(1),
    t({"", "\\end{aligned}}"}),
    i(0),
  }, {
    snippetType = "autosnippet",
  }),

  s(";!over=", {
    t("\\overset{!}{=} "),
    i(0),
  }, {
    snippetType = "autosnippet",
  })
}

return snippets, autosnippets
