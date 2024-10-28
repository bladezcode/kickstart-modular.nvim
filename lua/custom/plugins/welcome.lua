local logo_default = [[
██████╗ ██╗      █████╗ ██████╗ ███████╗███████╗
██╔══██╗██║     ██╔══██╗██╔══██╗██╔════╝╚══███╔╝
██████╔╝██║     ███████║██║  ██║█████╗    ███╔╝ 
██╔══██╗██║     ██╔══██║██║  ██║██╔══╝   ███╔╝  
██████╔╝███████╗██║  ██║██████╔╝███████╗███████╗
╚═════╝ ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝
  ]]
local logo_neovide = [[
⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⡟⣰⣶⠘⣿⣿⣿⣿⣿⣿⡿⣛⡛⣿⣿⡿⠿⠛⣛⣛⡻⠿⣿⣿⣿⣿⣿
⣿⣿⣿⢳⣿⣿⣷⣶⣶⣶⣶⣤⣍⣰⣿⣷⠈⣡⣶⣿⣿⡿⠿⢿⣿⣶⣝⢿⣿⣿
⣿⣿⡟⣼⣿⢟⣻⣭⣭⣭⣟⣻⢿⣿⣿⢣⣾⣿⣿⣿⡟⣾⣿⣦⢸⡿⣿⡎⣿⣿
⣿⣿⠇⣿⢱⣿⣿⣷⣿⣿⣿⡟⣳⡝⡏⣟⣛⡻⣿⢿⣓⣙⠛⣁⣼⣿⡄⢾⣿⣿
⣿⣿⡀⣿⡼⣿⣇⢀⡊⠹⠻⠟⣿⣿⡇⣿⣿⠇⣼⠛⠉⢻⣿⣮⢿⣿⡇⣼⣿⣿
⣿⣿⣧⠻⣿⣮⣛⠦⢭⣛⣤⠾⢟⣵⣿⠽⣶⣆⣿⡆⠛⣡⢭⣽⣿⠟⣰⣿⣿⣿
⣿⣿⣿⣷⣬⣙⠻⠿⠿⠿⠿⠿⠿⣛⣭⣾⣮⡛⠾⠾⠷⠷⠟⢋⣡⣾⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿
:  ... its coding time ...  :
]]
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local logo = vim.g.neovide and logo_neovide or logo_default
    -- custom config
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#b4d4ad' })
    require('dashboard').setup {
      -- theme = 'doom',
      config = {
        center = {
          {
            icon = '',
            icon_hl = 'group',
            desc = 'description',
            desc_hl = 'group',
            key = 'shortcut key in dashboard buffer not keymap !!',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = '',
          },
        },
        header = vim.split(string.rep('\n', 3) .. logo, '\n'),
        shortcut = {
          { desc = '[ Github]', group = 'DashboardShortCut' },
          { desc = '[ bladezcode]', group = 'DashboardShortCut' },
        },
      },
      hide = {
        statusline = true,
      },
    }
  end,
}
