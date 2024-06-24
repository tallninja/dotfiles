-- Library of 40+ independent Lua modules improving overall Neovim
-- See: https://github.com/echasnovski/mini.nvim

return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md
      require('mini.ai').setup({ 
        n_lines = 500 
      })

      -- Add, delete, replace, find, highlight surrounding (like pair of parenthesis, quotes, etc.).
      -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md
      require('mini.surround').setup()

      -- Minimal and fast statusline module with opinionated default look
      -- See: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md
      require('mini.statusline').setup()
    end,
  }
}
