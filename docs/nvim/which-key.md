# Basic Setup  
   ```lua  
   require("which-key").setup({
     triggers = { "<leader>" }, -- Show menu after leader
     window = { border = "rounded" }, -- Aesthetic tweaks
   })
   ```  

# Add Descriptions to Keymaps  
   ```lua  
   vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
   ```  

# Organize Groups 
   ```lua  
   local wk = require("which-key")
   wk.register({
     f = { name = "File" }, -- Group label
     g = { name = "Git" },
   }, { prefix = "<leader>" })
   ```  

# Customize Triggers
Show menus for `g`, `]`, `[`, etc.  

# Adjust Popup Delay
Set `timeoutlen=300` (ms) in `vim.opt` for responsiveness.  
# Pro Tip  
Combine `which-key` with **Telescope** or **LSP** keymaps for a seamless experience. For example, label `<leader>l` as "LSP" and nest actions like `<leader>lr` (rename) or `<leader>lf` (format).
