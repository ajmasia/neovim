-- Options

local options = {
	backspace = { "start", "eol", "indent" }, -- make backspace behave in a sane manner
  encoding = "utf-8", -- sets how vim shall represent characters internally
  fileencoding = "utf-8", -- sets the encoding for a particular file (local to buffer)
  backup = false, -- creates a backup file
  swapfile = false, -- creates a swapfile
  undofile = true, -- enable persistent undo
  clipboard = "unnamedplus", -- enables the clipboard between Neovim and other system programs
  title = true, -- set the title of window to the value of the titlestring
  autoindent = true, -- automatically set indent of new line
  smartindent = true, -- make indenting smarter again
  hlsearch = true, -- highlight all matches on previous search pattern
  showcmd = true, -- show incomplete commands
  cmdheight = 1, -- more space in the neovim command line for displaying messages
  laststatus = 2, -- show the status line all the time
  expandtab = true, -- convert tabs to spaces
  scrolloff = 10, -- set lines to the cursors - when moving vertical
  shell = "bash",
  inccommand = "split", -- show replacements in a split window, before applying to the file
  ignorecase = true, -- ignore case in search patterns
  smarttab = true, -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
  breakindent = true, -- preserve the indentation of a virtual line.
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert n spaces for a tab
  wrap = true, -- no Wrap lines, -- display lines as one long line
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  number = true, -- set numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  cursorline = true, -- highlight the current line
  termguicolors = true, -- set term gui colors (most terminals support this)
  winblend = 0
}

local append_options = {
  path = { "**" },
  wildignore = { "*/node_modules/*" }
}

-- set assiaunque temporalmente sirve comognment options
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- set append options
for k, v in pairs(append_options) do
	vim.opt[k]:append(v)
end

print("** core options loaded ...")
