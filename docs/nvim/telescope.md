# Basic Setup  
   ```lua  
   require("telescope").setup({  
     defaults = {  
       file_ignore_patterns = { "node_modules", ".git" }, -- Skip noise  
       layout_strategy = "vertical", -- Cleaner UI  
     },  
   })  
   -- Load extensions (e.g., `git`, `fzf`)  
   require("telescope").load_extension("fzf")  
   ```  

# Essential Keymaps  
   ```lua  
   local builtin = require("telescope.builtin")  
   vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })  
   vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })  
   vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })  
   vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })  
   ```  

# Git Integration 
   ```lua  
   vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })  
   vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })  
   ```  

# LSP Shortcuts
   ```lua  
   vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "LSP references" })  
   vim.keymap.set("n", "<leader>sd", builtin.lsp_document_symbols, { desc = "Document symbols" })  
   ```  

# Search Customization  
   - Use `git_files` instead of `find_files` to respect `.gitignore`.  
   - Add `shorthand_mode = true` in `grep_string` to show shorter paths.  

# Pro Tip  
Combine Telescope with `which-key` by labeling keymaps (e.g., `<leader>f` for "Find") and use `telescope-fzf-native.nvim` for faster sorting. For large projects, add `--hidden`/`--no-ignore` flags to `fd`/`rg` in `Telescope` config.
