return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<s-m>", function()
      harpoon:list():add()
    end, { desc = "Harpoon Mark File" })

    vim.keymap.set("n", "<TAB>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Toggle Menu" })
  end,
}
