local hyprland = os.getenv("HYPRLAND_INSTANCE_SIGNATURE")

local style = hyprland and "day" or "moon"

local options = {
  style = style,
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}

if not hyprland then
  options.colors = {
    bg = "#000000",
    bg_dark = "#000000",
    bg_float = "#000000",
    bg_sidebar = "#000000",
  }
end

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = options,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
