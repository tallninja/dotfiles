-- :help options

vim.opt.number = true                     -- Make line numbers default
vim.opt.mouse = 'a'                       -- Mouse mode in all modes
vim.opt.showmode = false                  -- Don't show the mode
vim.opt.clipboard = 'unnamedplus'         -- Sync system and neovim clipboard
vim.opt.breakindent = true                -- Breakindent
vim.opt.undofile = true                   -- Save undo history
vim.opt.hlsearch = true                   -- Set highlight search on
vim.opt.ignorecase = true                 -- Case-insensitive searching
vim.opt.smartcase = true                  -- Use smart case search
vim.opt.updatetime = 250                  -- Decrease update time
vim.opt.timeoutlen = 300                  -- Decrease mapped sequence wait time. Displays which-key popup sooner
vim.opt.splitright = true                 -- Enable right split
vim.opt.splitbelow = true                 -- Enable bottom split
vim.opt.inccommand = 'split'              -- Preview substitutions live, as you type
vim.opt.scrolloff = 10                    -- Minimal number of screen lines to keep above and below the cursor.
-- vim.opt.signcolumn = 'yes'             -- Keep signcolumn on by default
-- vim.opt.cursorline = true              -- Show which line your cursor is on
-- vim.opt.cursorlineopt = 'number'       -- Show line on line number
-- vim.opt.list = true                    -- Enable list mode. Useful to see the fifference between tabs and spaces

-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }  -- Sets how neovim will display certain whitespace characters in the editor.


