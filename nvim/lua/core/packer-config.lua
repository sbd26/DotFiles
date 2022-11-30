-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end

-- local packer_bootstrap = ensure_packer()

return require('packer').startup({function()
  use 'kyazdani42/nvim-web-devicons'
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'romgrk/barbar.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use "terrortylor/nvim-comment"

--which key config
use 'folke/which-key.nvim'
--toogle terminal
use 'akinsho/toggleterm.nvim'





--

use 'tamton-aquib/zone.nvim'


--autopairs
use 'windwp/nvim-autopairs'

--color schemes
use{
  "EdenEast/nightfox.nvim",
  'tiagovla/tokyodark.nvim',
  'folke/tokyonight.nvim',

}
--Dashboard
use 'glepnir/dashboard-nvim'


--for colorizer
  use 'norcalli/nvim-colorizer.lua'


  --fancy notification
  use 'rcarriga/nvim-notify'



  --lsp config
  use{
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-buffer',
  'hrsh7th/vim-vsnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'onsails/lspkind.nvim',
 'kkharji/lspsaga.nvim'
}

--for html and css
use 'alvan/vim-closetag'
--silicon
use 'segeljakt/vim-silicon'


--comptetive programming
use {
	'xeluxee/competitest.nvim',
	requires = 'MunifTanjim/nui.nvim',
	-- config = function() require'competitest'.setup() end
}


  if packer_bootstrap then
    require('packer').sync()
  end

end,

  config = {
    display = {
       open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end
    }
  }

})
