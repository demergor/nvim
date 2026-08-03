local M = {}

-- Move a trailing "{" or "{}" after a wrapped ctor-init-list line onto its own line.
-- Single linear pass into a fresh table: O(n), no mid-loop shifting.
local function fix_ctor_braces(lines)
  local out = {}
  local changed = false

  for _, line in ipairs(lines) do
    local body, brace = line:match("^(%s*[,:].*})%s*({}?)%s*$")
    if body and brace ~= "" then
      out[#out + 1] = body
      out[#out + 1] = brace
      changed = true
    else
      out[#out + 1] = line
    end
  end

  return out, changed
end

function M.format_and_fix_ctors(bufnr)
  bufnr = bufnr or 0

  -- Guard: only real, modifiable file buffers.
  if vim.bo[bufnr].buftype ~= "" or not vim.bo[bufnr].modifiable then
    return
  end

  -- Guard: don't blow up if clang-format isn't installed.
  if vim.fn.executable("clang-format") == 0 then
    return
  end

  -- equalprg-based formatting is already synchronous, so BufWritePre
  -- can safely rely on it completing before the write proceeds.
  local view = vim.fn.winsaveview()
  vim.cmd("silent! keepjumps normal! gg=G")
  vim.fn.winrestview(view)

  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local fixed, changed = fix_ctor_braces(lines)

  if changed then
    -- undojoin merges this into the same undo step as the format above,
    -- so a single 'u' undoes both instead of two separate edits.
    pcall(vim.cmd, "undojoin")
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, fixed)
  end
end

return M
