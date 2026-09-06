-- lua/plugins/csharp.lua

return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.registries = opts.registries or { "github:mason-org/mason-registry" }
      table.insert(opts.registries, "github:Crashdummyy/mason-registry")
    end,
  },
  {
    "seblyng/roslyn.nvim",
    ft = { "cs" },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("roslyn_ls", false) -- unngå duplikat med seblyng/roslyn.nvim
    end,
  },
}
