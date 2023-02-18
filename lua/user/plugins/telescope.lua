local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

---@diagnostic disable-next-line: redundant-parameter
telescope.setup({
	-- https://github.com/nvim-telescope/telescope.nvim#customization
	-- define here your settigns
})
