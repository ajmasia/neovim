-- Commands

vim.cmd("autocmd!") -- remove ALL autocommands for the current group
vim.cmd("colorscheme tokyonight-storm")

local common_opts = { force = true }
local commands = {
	{
		name = "BufferKill",
		fn = function()
			require("user.utils.tools").buf_kill("bd")
		end,
	},
}

for _, cmd in pairs(commands) do
	local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
	vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
end
