-- Disable perl health warning
vim.g.loaded_perl_provider = 0

-- Enable syntax and filetype detection
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.opt.number = true

-- Ctrl-S to save
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true })

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")

