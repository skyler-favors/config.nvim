--:help lua-guide

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- PLUGINS HERE
require('lazy').setup({
  { import = 'custom.plugins' },
  -- require 'kickstart.plugins.debug',
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
}, {})

require "custom.telescope"
require "custom.treesitter"
require "custom.lsp"
require "custom.cmp"
require "custom.settings"
require "custom.autocmds"
require "custom.which-key"
require "custom.mappings"
--require "custom.jupyter"

require "custom.copilot"
require("bufferline").setup {
  options = {
    mode = "tabs"
  }
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
