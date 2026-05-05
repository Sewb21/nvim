-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- VS Code Neovim cross-platform LazyVim bridge
if vim.g.vscode then
  local ok, vscode = pcall(require, "vscode")

  local function code(action)
    return function()
      if ok then
        vscode.call(action)
      end
    end
  end

  local function map(lhs, action, desc)
    vim.keymap.set("n", lhs, code(action), { desc = desc, silent = true })
  end

  -- Window and workbench focus, matching LazyVim-style <leader>w muscle memory.
  map("<leader>wh", "workbench.action.navigateLeft", "Go to Left Window")
  map("<leader>wj", "workbench.action.navigateDown", "Go to Lower Window")
  map("<leader>wk", "workbench.action.navigateUp", "Go to Upper Window")
  map("<leader>wl", "workbench.action.navigateRight", "Go to Right Window")
  map("<leader>ww", "workbench.action.focusNextGroup", "Next Editor Group")
  map("<leader>wv", "workbench.action.splitEditorRight", "Split Editor Right")
  map("<leader>ws", "workbench.action.splitEditorDown", "Split Editor Below")
  map("<leader>wd", "workbench.action.closeActiveEditor", "Close Active Editor")

  -- Buffers in VS Code are editor tabs.
  map("<leader>bd", "workbench.action.closeActiveEditor", "Close Editor")
  map("<leader>bo", "workbench.action.closeOtherEditors", "Close Other Editors")
  map("<leader>bD", "workbench.action.closeEditorInAllGroups", "Close Editor in All Groups")
  map("<S-h>", "workbench.action.previousEditor", "Previous Editor")
  map("<S-l>", "workbench.action.nextEditor", "Next Editor")
  map("[b", "workbench.action.previousEditor", "Previous Editor")
  map("]b", "workbench.action.nextEditor", "Next Editor")

  -- Code actions use VS Code native language features.
  map("<leader>ca", "editor.action.quickFix", "Code Action")
  map("<leader>cf", "editor.action.formatDocument", "Format Document")
  map("<leader>cr", "editor.action.rename", "Rename Symbol")
  map("<leader>sg", "workbench.action.findInFiles", "Grep in Files")
end
