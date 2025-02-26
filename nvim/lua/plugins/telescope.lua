-- File Search: Fuzzy finding to locate files quickly using built-in pickers like `find_files`.
-- Live Grep: Text content search across files using tools like `ripgrep` via `live_grep`.
-- Vim Integration: Seamlessly navigate buffers, commands, help tags, and Vim options with dedicated pickers.
-- Custom Pickers: Define reusable search logic for specific use cases (e.g., project-specific files).
-- Previews: Display file/content snippets inline during searches without opening files.
-- Extensions: Expand functionality via plugins (e.g., Git, LSP, diagnostics) while maintaining core UX.

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<Esc>"] = actions.close,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = { prompt_position = "top" },
						vertical = { mirror = false },
					},
				},
				extensions = {
					file_browser = {
						theme = "dropdown",
						hijack_netrw = true,
					},
				},
			})

			-- Load extensions
			telescope.load_extension("file_browser")

			-- Keybindings
			local map = vim.keymap.set
			local opts = { noremap = true, silent = true }

			map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
			map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
			map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
			map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
			map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
			map("n", "<leader>fe", "<cmd>Telescope file_browser<cr>", opts)
			map("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
			map("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts)
			map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},
}
