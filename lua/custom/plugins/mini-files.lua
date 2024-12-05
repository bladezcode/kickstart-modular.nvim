return {
  'echasnovski/mini.files',
  -- keys = {
  --   { '<leader>e', ':lua MiniFiles.open()<CR>', desc = 'toggle minifiles' },
  -- },
  opts = {
    options = {
      -- Whether to delete permanently or move into module-specific trash
      permanent_delete = false,
      -- Whether to use for editing directories
      use_as_default_explorer = true,
    },
  },
}
