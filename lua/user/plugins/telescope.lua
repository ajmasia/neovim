local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

---@diagnostic disable-next-line: redundant-parameter
telescope.setup({
  defaults = {},
	pickers = {
		find_files = {
			theme = "dropdown",
			hidden = true,
			previewer = false,
		},
    git_files = {
      theme = "dropdown",
      hidden = true,
      previewer = false,
      show_untracked = true,
    },
	},
})
