local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require "vim-options"
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" }, { import = "plugins.git" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

--local builtin = require "telescope.builtin"
vim.lsp.set_log_level "debug"

vim.cmd "set mps+=<:>"
