local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- plugin manager for neovim
	-- https://github.com/wbthomason/packer.nvim
	use("wbthomason/packer.nvim")

	-- themes
	-- https://github.com/folke/tokyonight.nvim
	use("folke/tokyonight.nvim")
	-- https://github.com/rose-pine/neovim
	use({
		"rose-pine/neovim",
		as = "rose-pine",
	})
	-- https://github.com/Mofiqul/dracula.nvim
	use("Mofiqul/dracula.nvim")

	-- Fuzzy finder
	-- https://github.com/nvim-telescope/telescope.nvim
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Syntax highlight
	-- https://github.com/nvim-treesitter/nvim-treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

	print("** core packer loaded ...")
end)
