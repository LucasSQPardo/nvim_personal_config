return {
  "romus204/tree-sitter-manager.nvim",
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    local builtin = require("tree-sitter-manager")

    builtin.setup({
      auto_install = true,
      highlight = true,
    })

    vim.keymap.set('n', '<leader>tm', function()
      vim.cmd("TSManager")
    end, {desc = 'Tree Sitter Manager'})


  end,
}

