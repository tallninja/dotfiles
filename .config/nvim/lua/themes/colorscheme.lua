-- Configure the colorscheme

return {
  {
    require 'themes/gruvbox',
    require 'themes/tokyonight',

    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "gruvbox",
      },
    },
  }
}
