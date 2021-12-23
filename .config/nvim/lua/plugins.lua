local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile>
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
    }
  }
)

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes & Treesitter
  use 'NLKNguyen/papercolor-theme'
  use {
    'navarasu/onedark.nvim',
  }
  use {
    "projekt0n/github-nvim-theme",
    after = "lualine.nvim",
    config = function()
      require("github-theme").setup {
        theme_style = "dark_default",
        sidebars = {"qf", "vista_kind", "terminal", "packer"},
      }
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function ()
      require('treesitter-config')
    end
  }

  -- Nvimtree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    cmd = "NvimTreeToggle",
    config = function ()
      require('nvim-tree-config')
    end
  }

  -- Statusline and bufferline
  use {
    'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config =  function ()
        require('lualine').setup {
          extensions = {'nvim-tree'},
          options = {
            theme = 'github',
            section_separators = '',
            component_separators = '',
          },
        }
      end
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = function ()
      require('bufferline-config')
    end
  }

  -- LSP
  use {
    'williamboman/nvim-lsp-installer',
  }
  use {
    'neovim/nvim-lspconfig',
    after = "nvim-lsp-installer",
    config = function ()
      require('lsp-config')
    end
  }

  -- Indentation
  use {
    "lukas-reineke/indent-blankline.nvim",
    after = "nvim-treesitter",
    config = function ()
      require('indentation-config')
    end
  }

  -- Commentary
  use {
    'b3nj5m1n/kommentary',
    event = "BufWinEnter",
    config = function ()
      require('commentary-config')
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-lua/popup.nvim'},
    },
    cmd = "Telescope",
    config = function ()
      require('telescope-config')
    end
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    after = "telescope.nvim",
  }

  -- Whichkey
  use {
    'folke/which-key.nvim',
    keys = {"<Leader>", "]", "[", "z"},
    config = function ()
      require('whichkey-config')
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

