local M = {}

function M.insert_skeleton_picker()
  require('telescope.builtin').find_files({
    prompt_title = "Select Skeleton",
    cwd = vim.fn.expand("~/.config/nvim/skeletons"),
    attach_mappings = function(prompt_bufnr, map)
      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")

      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local entry = action_state.get_selected_entry()
        local file = entry.cwd .. "/" .. entry.value

        -- Insert the selected skeleton file into the current buffer
        vim.api.nvim_command("0r " .. file)
      end)

      return true
    end,
  })
end

return M
