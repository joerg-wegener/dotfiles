local opt = vim.opt

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.termguicolors = true
vim.g.mapleader = " "

-- Inter-Pane navigation with tmux
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")

-- selektierte Zeilen verschieben
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- line join, aber cursor bleibt stehen
vim.keymap.set("n", "J", "mzJ`z")

-- pasten, aber ohne dass das vorhandene register überschrieben wird
vim.keymap.set("x", "<leader>p", '"_dP')

-- Zeilennummern
opt.relativenumber = true
opt.number = true

-- funktion mit scrolling-plugin nicht mehr
--vim.keymap.set("n", "<c-d>", "<c-d>zz")
--vim.keymap.set("n", "<c-u>", "<c-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 8
