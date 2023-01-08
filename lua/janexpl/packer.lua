local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      vim.cmd('colorscheme catppuccin-mocha')
    end
  })
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use('mbbill/undotree')
  use {
    'dinhhuy258/git.nvim'
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use("folke/zen-mode.nvim")
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use { 'rcarriga/nvim-notify', config = function()
    require("notify").setup({
      stages = 'fade_in_slide_out',
      background_colour = 'FloatShadow',
      timeout = 3000,
    })
  end
  }
  use { 'p00f/nvim-ts-rainbow', after = { 'nvim-treesitter' } }
  use { 'windwp/nvim-ts-autotag', after = { 'nvim-treesitter' } }
  use { 'onsails/lspkind-nvim' }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use { 'norcalli/nvim-colorizer.lua' }
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }
  use { "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("null-ls")
    end
  }
  -- use { "ayu-theme/ayu-vim",
  --   as = 'ayu',
  --   config = function()
  --     vim.cmd('colorscheme ayu')
  --   end
  --
  -- }
end)
