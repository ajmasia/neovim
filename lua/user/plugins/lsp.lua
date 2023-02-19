local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
	return
end

local icons = require("user.utils.icons")

lsp.preset({
	name = "recommended",
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.set_preferences({
  sign_icons = {
		error = icons.diagnostics.Error,
		warn = icons.diagnostics.Warning,
		info = icons.diagnostics.Information,
		hint = icons.diagnostics.Hint,
  }
})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({ "lua_ls", force = true })

lsp.setup()

require("user.plugins.null-ls")
