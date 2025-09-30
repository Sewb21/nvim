return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local actions = require("fzf-lua.actions")
    opts.files = opts.files or {}
    opts.files.actions = {
      ["ctrl-i"] = { actions.toggle_ignore },
      ["ctrl-h"] = { actions.toggle_hidden },
    }
    opts.grep = opts.grep or {}
    opts.grep.actions = {
      ["ctrl-i"] = { actions.toggle_ignore },
      ["ctrl-h"] = { actions.toggle_hidden },
    }
    return opts
  end,
}
