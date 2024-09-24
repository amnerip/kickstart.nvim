-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\f', ':Neotree reveal<CR> filesystem', desc = 'NeoTree reveal filesystem', silent = true },
    { '\\g', ':Neotree reveal git_status<CR>', desc = 'NeoTree reveal git_status', silent = true },
  },
  opts = {
    git_status = {
      window = {
        position = 'float',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    filesystem = {
      window = {
        position = 'current',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      hijack_netrw_behavior = 'disabled',
    },
  },
}
