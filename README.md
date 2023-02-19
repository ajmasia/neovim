# My Neovim config

This is a provisional repo with my current Neovim settings, pending to be migrated to NixOS Home Manager although it temporarily serves as a playground to improve and test new features.

## Todo
- [ ] Define keymaps to navigate telescope preview
- [ ] Define keymaps for lsp
- [ ] Add gitsigns icons from `user.utils.icons`
- [ ] Fix issue with split and move to windows keypans after some plugins install
- [ ] Continue using `vim-fugitive`?


## Plugins

### GIT

- [gitsigns.nvim](https://github.com/lewis6994/gitsigns.nvim), super fast git decorations implemented purely in lua/teal. [CONFIG](./lua/user/plugins/gitsigns.lua)
- [git-blame.nvim](https://github.com/f-person/git-blame.nvim), a git blame plugin for Neovim written in Lua. [CONFIG](./lua/user/plugins/git-blame.lua)
- [vim-fugitive](https://github.com/tpope/vim-fugitive), a the premier Vim plugin for Git. [CONFIG](./lua/user/plugins/git-fugitive.lua)



