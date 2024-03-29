

vim.g.mapleader = " "

local opts = {
	autoindent = true,
	autoread = true,
	background = "dark",
	clipboard = "unnamedplus",
	encoding = "UTF-8",
	cursorline = true,
	expandtab = true,
	foldlevel = 2,
	foldmethod = "manual",
	foldnestmax = 10,
	laststatus = 3,
	hidden = true,
	hlsearch = true,
	ignorecase = true,
	incsearch = true,
	mouse = "a",
	backup = false,
	foldenable = false,
	showmode = false,
	swapfile = false,
	writebackup = false,
	nu = true,
	rnu = true,
	shiftwidth = 2,
	smartcase = true,
	smarttab = true,
	softtabstop = 0,
	scrolloff = 10,
	tabstop = 2,
	termguicolors = true,
	ch = 0,
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end

if os.getenv("CONDA_PREFIX") then
	vim.g.python3_host_prog = os.getenv("CONDA_PREFIX") .. "/bin/python"
end

vim.g.nabi_transparent_background = true
vim.g.nabi_enable_italic = false
vim.g.nabi_enable_italic_comment = false

vim.cmd([[
  filetype on
  filetype plugin on
  syntax on
  syntax enable

  colorscheme nabi
  autocmd TermOpen * setlocal nonumber norelativenumber

  command Z w | qa
  cabbrev wqa Z
]])

require("plugins")
require("keymaps")
require("lsp")
require("commands")
