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
    logo = string.rep('\n', 6) .. logo .. '\n\n'
    require('dashboard').setup {

      theme = 'doom',
      config = {
        center = {
          { action = 'ene | startinsert', desc = ' New File                                        ', icon = ' ', icon_hl = 'String', key = 'n' },
          { action = 'Telescope find_files', desc = ' Find File', icon = '󰱼 ', icon_hl = 'String', key = 'f' },
          { action = 'lua MiniFiles.open()', desc = ' Browse Files', icon_hl = 'String', icon = ' ', key = 'e' },
          { action = 'qa', desc = ' Quit', icon = ' ', icon_hl = 'String', key = 'q' },
        },
        header = vim.split(logo, '\n'),
      },

      hide = {
        statusline = true,
      },
    }
  end,
}
