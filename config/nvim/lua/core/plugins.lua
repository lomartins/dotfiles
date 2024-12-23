local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  -- My plugins here

    'nvim-lua/plenary.nvim';
    'nvim-lualine/lualine.nvim';
    'christoomey/vim-tmux-navigator';
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-nvim-lsp';
    'williamboman/mason.nvim';
    "williamboman/mason-lspconfig.nvim",
    'neovim/nvim-lspconfig';
    'folke/lazydev.nvim';
    'L3MON4D3/LuaSnip';
    'onsails/lspkind.nvim';
    'akinsho/bufferline.nvim', tag = '*';
    'kazhala/close-buffers.nvim';
    'echasnovski/mini.nvim', tag = '*';
    'windwp/nvim-autopairs';
    'numToStr/Comment.nvim';
    'JoosepAlviste/nvim-ts-context-commentstring';
  -- Theme
    'Mofiqul/dracula.nvim';

    'MunifTanjim/nui.nvim';
    'VonHeikemen/fine-cmdline.nvim';

    'github/copilot.vim';

  -- File explorer
    'nvim-telescope/telescope.nvim';
    'nvim-tree/nvim-tree.lua';
    'nvim-tree/nvim-web-devicons';
}
