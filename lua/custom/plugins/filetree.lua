-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        window = {
          mappings = {
            ["<cr>"] = "open_tab_drop"
          }
        }
      },
      -- event_handlers = {
      --   {
      --     event = "file_opened",
      --     handler = function(file_path)
      --       --vim.cmd ':Neotree close'
      --       require("neo-tree").close_all()
      --     end
      --   },
      -- }
    }
  end,
}
