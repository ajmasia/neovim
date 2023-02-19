local M = {}
local _, builtin = pcall(require, "telescope.builtin")

function M.find_project_files(opts)
  opts = opts or {}
  local ok = pcall(builtin.git_files, opts)

  if not ok then
    builtin.find_files(opts)
  end
end

return M
