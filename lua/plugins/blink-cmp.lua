return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      snippets = {
        preset = "luasnip",
      },
      keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = { documentation = { auto_show = false } },

      signature = { enabled = true },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        -- providers = {
        --   snippets = {
        --     opts = {
        --       friendly_snippets = true,
        --       extended_filetypes = {
        --         lua = { "lua" },
        --       },
        --     },
        --   },
        -- },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
  },
}
