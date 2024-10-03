return {
	{
		-- Install markdown preview, use npx if available.
    	"iamcco/markdown-preview.nvim",
	    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    	ft = { "markdown" },
	    build = function(plugin)
    		if vim.fn.executable "npx" then
        		vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
      		else
        		vim.cmd [[Lazy load markdown-preview.nvim]]
        		vim.fn["mkdp#util#install"]()
      		end
    	end,
    	init = function()
      		if vim.fn.executable "npx" then vim.g.mkdp_filetypes = { "markdown" } end
    	end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},	
	},
	{
		"VonHeikemen/lsp-zero.nvim", branch = 'v4.x'
	},
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
    	dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/nvim-cmp"},
}
