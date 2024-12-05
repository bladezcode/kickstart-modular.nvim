return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    auto_save = true, -- Enables/disables auto saving session on exit
    auto_restore = true, -- Enables/disables auto restoring session on start
    auto_create = true,
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    root_dir = vim.fn.stdpath 'data' .. '/sessions/',
  },
}
