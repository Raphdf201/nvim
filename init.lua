-- Disable perl health warning
vim.g.loaded_perl_provider = 0

-- Enable syntax and filetype detection
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.opt.number = true

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
require("keybinds")
require("lazy").setup("plugins")

