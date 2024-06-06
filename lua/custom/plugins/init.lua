-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
-- Packer configuration
require 'packer'.startup(function()
  use { 'wbthomason/packer.nvim', opt = true }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)

-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- or list of languages you want to install
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },

-- See the kickstart.nvim README for more information
return {}
