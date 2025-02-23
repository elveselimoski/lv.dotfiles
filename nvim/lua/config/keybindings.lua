-- Telescope
local builtin = require("telescope.builtin")  
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })  
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })  
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })  
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })  

vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })  
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })  

vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "LSP references" })  
vim.keymap.set("n", "<leader>sd", builtin.lsp_document_symbols, { desc = "Document symbols" })  
