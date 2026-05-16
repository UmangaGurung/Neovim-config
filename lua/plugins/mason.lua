return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "golangci-lint",
        "delve",
        --java
        "java-debug-adapter",
        "java-test",
        "vscode-spring-boot-tools",
      },
    },
  },
}
