-- Configure and install lazy plugins

--  To check the current status of plugins, run
--    :Lazy

--  To update plugins you can run
--    :Lazy update

-- Install `lazy.nvim` plugin manager
-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).

	-- Plugins
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "wakatime/vim-wakatime", lazy = false }, -- Wakatime
	{ "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/line

	require("plugins/mini"), -- Mini plugins
	require("plugins/oil"), -- File explorer
	require("plugins/transparent"), -- Transparent beckground
	require("plugins/treesitter"), -- Syntax highlighting
	require("plugins/todo-comments"), -- Highlight Todo comments
	require("plugins/telescope"), -- Fuzzy finder
	require("plugins/cmp"), -- Code completion
	require("plugins/conform"), -- Autoformatter
	require("plugins/autopairs"), -- TODO: Find out what this does
	require("plugins/lspconfig"), -- Neovim LSP configuration

	-- Color Schemes
	require("themes/colorscheme"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
