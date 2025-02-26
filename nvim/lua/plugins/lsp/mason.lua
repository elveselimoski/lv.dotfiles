-- Package Management: Simplifies installation, updates, and removal of LSP servers, linters, formatters, and DAP adapters.  
-- Cross-Platform Support: Automatically handles platform-specific binaries and dependencies.  
-- Integration with Neovim: Works seamlessly with built-in LSP, null-ls, and DAP configurations.  
-- Version Control: Allows switching between versions of installed tools for compatibility.  
-- Custom Registries: Supports adding third-party or private package registries for extended tooling.  
-- UI Integration: Provides a user-friendly interface for managing and browsing available packages.

return {
	"williamboman/mason.nvim",
	config = function()
		local mason = require("mason")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
