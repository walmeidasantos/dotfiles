-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[set clipboard=unnamedplus]])
vim.cmd([[set nowrap ]])
vim.cmd([[set ignorecase]])

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({ capabilities = capabilities })
local cmp = require("cmp")
cmp.setup({
	-- ...
	sources = {
		-- ...
		{ name = "codeium" },
		{ name = "dbee" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "cmdline" },
		{ name = "buffer" },
		{ name = "buffer-lines" },
		{ name = "nvim_lsp" },
	},
}) -- ...
--
--
-- setup must be crequire("cmp_git").setup()alled before loading the colorscheme
-- Default options:
require("oneDarkPro").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})
vim.cmd("colorscheme oneDarkPro")
