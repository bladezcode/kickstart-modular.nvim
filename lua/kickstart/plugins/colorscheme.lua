return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'navarasu/onedark.nvim',
    opts = {
      style = 'dark',
      transparent = not vim.g.neovide,
      -- highlights = {
      --   NeoTreeNormal = { bg = '#1d2026' }, -- Custom background color
      -- },
    },
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'onedark'

      -- -- Remove background color for all highlighting groups
      -- vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
      -- vim.cmd [[hi NormalNC guibg=NONE ctermbg=NONE]]
      -- vim.cmd [[hi NonText guibg=NONE ctermbg=NONE]]
      -- vim.cmd [[hi SignColumn guibg=NONE]]
      -- vim.cmd [[hi VertSplit guibg=NONE]]
      -- vim.cmd [[hi LineNr guibg=NONE]]
      -- vim.cmd [[hi EndOfBuffer guibg=NONE]]
      -- vim.cmd [[
      --       hi NeoTreeNormal guibg=NONE
      --       hi NeoTreeNormalNC guibg=NONE
      --       hi NeoTreeCursorLine guibg=NONE
      --       hi NeoTreeRootName guibg=NONE
      --       hi NeoTreeFileName guibg=NONE
      --       hi NeoTreeFileNameOpened guibg=NONE
      --       hi NeoTreeFileIcon guibg=NONE
      -- ]]
      -- -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
--
