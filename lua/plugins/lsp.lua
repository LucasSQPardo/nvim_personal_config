return {
	{
		"mason-org/mason-nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "gopls", "ts_ls", "pyright", "cssls", "html", "jsonls", "jdtls", "clang" },
		},
		auto_install = true,
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("gopls")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("cssls")
			vim.lsp.enable("html")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("jdtls")
			vim.lsp.enable("clang")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "para mais informacoes, ecrever :h vim.lsp.buf" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "" })
		end,
	},
}
