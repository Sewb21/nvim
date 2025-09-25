-- return {
--   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }
-- Uncomment below for tokyonight theme
return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = { style = "night" },
}
