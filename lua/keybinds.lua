vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", ":wq<LF>", { desc = "Save and quit" })
vim.keymap.set("n", "<leader>a", ":qa!<LF>", { desc = "Quit and abandon changes" })
vim.keymap.set("n", "<leader>d", ":w:Ex<LF>", { desc = "Save and go back to directory listing" })
vim.keymap.set("n", "<leader>p", ":!git push", { desc = "Push current branch to origin" })

