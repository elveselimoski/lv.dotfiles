-- Linting Integration: Automatically runs linters (e.g., `flake8`, `eslint`) on files to detect errors and warnings.  
-- Asynchronous Execution: Performs linting in the background without blocking the editor.  
-- Filetype-Specific Linters: Associates specific linters with file types (e.g., Python, JavaScript) for targeted checks.  
-- Customizable Linters: Allows adding, removing, or configuring linters via a simple setup interface.  
-- On-Demand Linting: Supports manual triggering of linting via commands like `:Lint`.  
-- Automatic Linting: Optionally lints files on save or other events for real-time feedback.

return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "pylint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
