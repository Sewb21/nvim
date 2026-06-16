return {
  "vuki656/package-info.nvim",
  cond = function()
    return not vim.g.vscode
  end,
  ft = "json",
  dependencies = "MunifTanjim/nui.nvim",
  opts = {},
}
