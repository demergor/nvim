return {
  "azratul/live-share.nvim",
  config = function()
    require("live-share").setup({
      username = "jimmy-arch",
    })
  end,

  keys = {
    {
      "<leader>lsh",
      "<cmd>LiveShareHostStart<CR>",
    },
    {
      "<leader>lsj",
      function()
        vim.ui.input({
          prompt = "Live Share URL"
        }, function(address)
          if not address or address == "" then
            return
          end

          vim.schedule(function()
            local ok, err = pcall(function()
              vim.cmd({
                cmd = "LiveShareJoin",
                args = { address },
              })
            end)

            if not ok then
              vim.notify(
                "Live Share join failed: " .. tostring(err),
                vim.log.levels.ERROR
              )
            end
          end)
        end)
      end,
    },
  },
}
