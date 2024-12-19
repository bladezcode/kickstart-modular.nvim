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
  -- 'folke/snacks.nvim',
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
          { action = 'Telescope oldfiles', desc = ' Recent Files', icon = '󰈢 ', icon_hl = 'String', key = 'r' },
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

-- lazy.nvim

--     dashboard = {
--       enabled = true,
--       -- width = 60,
--       row = nil, -- dashboard position. nil for center
--       col = nil, -- dashboard position. nil for center
--       pane_gap = 4, -- empty columns between vertical panes
--       autokeys = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', -- autokey sequence
--       -- These settings are used by some built-in sections
--       preset = {
--         -- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
--         ---@type fun(cmd:string, opts:table)|nil
--         pick = nil,
--         -- Used by the `keys` section to show keymaps.
--         -- Set your custom keymaps here.
--         -- When using a function, the `items` argument are the default keymaps.
--         ---@type snacks.dashboard.Item[]
--         keys = {
--           { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
--           { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
--           { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
--           { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
--           { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
--           { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
--           { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
--         },
--         -- Used by the `header` section
--         header = [[
--   ██████╗ ██╗      █████╗ ██████╗ ███████╗███████╗
--   ██╔══██╗██║     ██╔══██╗██╔══██╗██╔════╝╚══███╔╝
--   ██████╔╝██║     ███████║██║  ██║█████╗    ███╔╝
--   ██╔══██╗██║     ██╔══██║██║  ██║██╔══╝   ███╔╝
--   ██████╔╝███████╗██║  ██║██████╔╝███████╗███████╗
--   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝
-- ]],
--         -- item field formatters
--         formats = {
--           icon = function(item)
--             if item.file and item.icon == 'file' or item.icon == 'directory' then
--               return M.icon(item.file, item.icon)
--             end
--             return { item.icon, width = 2, hl = 'icon' }
--           end,
--           footer = { '%s', align = 'center' },
--           header = { '%s', align = 'center' },
--           file = function(item, ctx)
--             local fname = vim.fn.fnamemodify(item.file, ':~')
--             fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
--             if #fname > ctx.width then
--               local dir = vim.fn.fnamemodify(fname, ':h')
--               local file = vim.fn.fnamemodify(fname, ':t')
--               if dir and file then
--                 file = file:sub(-(ctx.width - #dir - 2))
--                 fname = dir .. '/…' .. file
--               end
--             end
--             local dir, file = fname:match '^(.*)/(.+)$'
--             return dir and { { dir .. '/', hl = 'dir' }, { file, hl = 'file' } } or { { fname, hl = 'file' } }
--           end,
--         },
--         sections = {
--           { section = 'header', hl = 'header' },
--           {
--             pane = 2,
--             section = 'terminal',
--             cmd = 'colorscript -e square',
--             height = 5,
--             padding = 1,
--           },
--           { section = 'keys', gap = 1, padding = 1 },
--           -- { pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
--           -- { pane = 2, icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
--           -- {
--           --   pane = 2,
--           --   icon = ' ',
--           --   title = 'Git Status',
--           --   section = 'terminal',
--           --   enabled = function()
--           --     return Snacks.git.get_root() ~= nil
--           --   end,
--           --   cmd = 'hub status --short --branch --renames',
--           --   height = 5,
--           --   padding = 1,
--           --   ttl = 5 * 60,
--           --   indent = 3,
--           -- },
--           { section = 'startup' },
--         },
--       },
--     },
--   },
-- }
