-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		additional_vin_regex_highlighting = false,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"bash",
		"c",
		"css",
		"dockerfile",
		"gitignore",
		"graphql",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"markdown_inline",
		"ruby",
		"rust",
		"scss",
		"typescript",
		"tsx",
		"vim",
		"yaml",
	},
	-- Install parsers synchronously (only applies to above list)
	sync_install = false,
	-- auto install above language parsers
	auto_install = true,
})
