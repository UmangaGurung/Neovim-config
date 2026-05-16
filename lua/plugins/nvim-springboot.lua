return {
  {
    "JavaHello/spring-boot.nvim",
    ft = { "java", "yaml", "jproperties" },
    opts = {},
    config = function()
      require("spring_boot").setup({})
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "spring-boot" then
            client.server_capabilities.inlayHintProvider = false
          end
        end,
      })
    end,
  },
}
