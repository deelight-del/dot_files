-- Add this to your plugins list in LazyVim configuration

return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("null-ls").setup({
      debug = true,
      sources = {
        require("null-ls").builtins.diagnostics.solhint.with({
          command = "solhint",
          args = { "--formatter", "unix", "--max-warnings", "0", "$FILENAME"},
        }),
      }
    })
  end,
}
