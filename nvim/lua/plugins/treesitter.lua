-- lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "vimdoc" },
        auto_install = true,
        highlight = { enable = true },
        disable = { "markdown" }, -- midlertidig, pga. kjent bug i nvim 0.12 + nvim-treesitter master
      })
    end,
  },
}
