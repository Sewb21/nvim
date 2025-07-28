return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        window = {
          mappings = {
            ["<CR>"] = "open_and_close_neotree",
            ["L"] = "open",
          },
        },
        commands = {
          open_and_close_neotree = function(state)
            require("neo-tree.sources.filesystem.commands").open(state)

            local tree = state.tree
            local success, node = pcall(tree.get_node, tree)

            if not success then
              return
            end

            if node.type == "file" then
              require("neo-tree.command").execute({ action = "close" })
            end
          end,
        },
      },
    },
  },
}
