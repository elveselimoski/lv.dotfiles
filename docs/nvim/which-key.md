### **1. Most Used Use Cases for `which-key.nvim`**  
- **Discovering keybindings**: Shows a popup with possible keys after pressing a prefix (e.g., `<leader>`, `g`, `]`), reducing memorization overhead.  
- **Onboarding new users**: Helps newcomers navigate complex Neovim configurations by visualizing mappings.  
- **Organizing keymaps**: Groups related commands under hierarchical menus (e.g., `<leader>g` for Git, `<leader>f` for files).  
- **Reducing workflow interruptions**: Avoids constant `:help` or config-file checks by displaying mappings in real time.  

---

### **2. Common Mistakes & Misunderstandings**  
- **Missing setup**: Forgetting to call `require("which-key").setup()` or configure triggers.  
- **Unregistered mappings**: Assuming all keybindings auto-appear. You must add **descriptions** (e.g., `vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })`).  
- **Performance blame**: Mistaking lag from other plugins for `which-key` slowness (it’s lightweight).  
- **Overloading menus**: Creating overly nested/verbose groups, making the popup cluttered.  

---

### **3. Alternatives**  
- **vim-which-key**: Original Vim plugin, but lacks Neovim-specific optimizations.  
- **legendary.nvim**: Manages keymaps/commands and includes a searchable UI, but no real-time popup.  
- **Telescope command palettes**: Search keymaps via `Telescope keymaps`, but not as proactive as `which-key`.  
- **Hydra.nvim**: Creates modal/disposable keybinding chains, but more complex.  
**Verdict**: `which-key` is still the best for real-time discovery.  

---

### **4. 20% of Features for 80% of Value**  
1. **Basic Setup**:  
   ```lua  
   require("which-key").setup({
     triggers = { "<leader>" }, -- Show menu after leader
     window = { border = "rounded" }, -- Aesthetic tweaks
   })
   ```  
2. **Add Descriptions to Keymaps**:  
   ```lua  
   vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
   ```  
3. **Organize Groups**:  
   ```lua  
   local wk = require("which-key")
   wk.register({
     f = { name = "File" }, -- Group label
     g = { name = "Git" },
   }, { prefix = "<leader>" })
   ```  
4. **Customize Triggers**: Show menus for `g`, `]`, `[`, etc.  
5. **Adjust Popup Delay**: Set `timeoutlen=300` (ms) in `vim.opt` for responsiveness.  

---

### **Pro Tip**  
Combine `which-key` with **Telescope** or **LSP** keymaps for a seamless experience. For example, label `<leader>l` as "LSP" and nest actions like `<leader>lr` (rename) or `<leader>lf` (format).
