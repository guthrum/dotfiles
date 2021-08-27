return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'agude/vim-eldar'

  use 'neovim/nvim-lspconfig'

end)
