return {
  "mistweaverco/kulala.nvim",
  config = function()
    local kulala = require "kulala"
    kulala.setup()

    vim.keymap.set({ "n", "v" }, "<leader>Rs", function()
      kulala.run()
    end)
  end,
}
