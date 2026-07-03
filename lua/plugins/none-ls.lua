return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,
				-- Angular, React, CSS, Typescript
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
				-- Golang
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.diagnostics.golangci_lint,

				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.pylint,

				-- Java
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.diagnostics.checkstyle,

				-- Kotlin
				null_ls.builtins.formatting.ktfmt,
				null_ls.builtins.formatting.ktlint,
			},
		})
		vim.keymap.set("n", "<Space>fd", vim.lsp.buf.format, {})
	end,
}
