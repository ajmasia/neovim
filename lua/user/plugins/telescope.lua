local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

---@diagnostic disable-next-line: redundant-parameter
telescope.setup()
