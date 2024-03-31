local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "c", "cpp", "lua", "markdown", "markdown_inline", "bash", "python" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
