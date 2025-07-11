local opt = vim.opt

opt.guicursor = "a:block"
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.g.mapleader = " "

-- Inter-Pane navigation with tmux
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")

-- selektierte Zeilen verschieben
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- line join, aber cursor bleibt stehen
vim.keymap.set("n", "J", "mzJ`z")

-- pasten, aber ohne dass das vorhandene register überschrieben wird
vim.keymap.set("x", "<leader>p", '"_dP')

-- Zeilennummern
opt.relativenumber = true
opt.number = true

opt.signcolumn = "yes"
opt.colorcolumn = "120"
opt.cursorline = true

-- funktion mit scrolling-plugin nicht mehr
--vim.keymap.set("n", "<c-d>", "<c-d>zz")
--vim.keymap.set("n", "<c-u>", "<c-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

opt.wrap = false

opt.ignorecase = true
opt.hlsearch = false
opt.smartcase = true
opt.incsearch = true

opt.scrolloff = 8
