-- Code Formatting: Automatically formats code on save using configured formatters (e.g., Prettier, Black, stylua).  
-- Formatter Selection: Supports multiple formatters per filetype and falls back to alternatives if primary fails.  
-- Custom Commands: Allows defining custom formatting commands or overriding default formatter behavior.  
-- Asynchronous Formatting: Runs formatters asynchronously to avoid blocking the editor during saves.  
-- Conditional Formatting: Enables/disables formatting based on filetype, project, or user-defined conditions.  
-- LSP Integration: Works alongside LSP formatting capabilities without conflicts.

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
