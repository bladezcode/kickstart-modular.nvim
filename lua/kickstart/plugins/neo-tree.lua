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
    { '<leader>e', ':Neotree toggle<CR>', desc = 'NeoTree reveal' },
  },
  opts = {

    filesystem = {
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time
      },
      use_libuv_file_watcher = true,
      buffers = {
        follow_current_file = true, -- Follow files in buffers too
      },
      filtered_items = {
        hide_dotfiles = false, -- Show dotfiles (hidden files that start with a dot)
        hide_gitignored = false, -- Show files ignored by Git
        hide_hidden = false, -- Show other hidden files
      },
      window = {
        width = 28,
      },
    },
  },
}
