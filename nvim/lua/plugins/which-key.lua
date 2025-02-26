-- Keybinding Discovery: Displays available keybindings in a popup after a prefix key is pressed (e.g., `<leader>` or `g`).  
-- Command Contextualization: Shows context-aware shortcuts based on mode (normal/visual/insert) or active plugins.  
-- Grouped Bindings: Organizes keymaps into logical groups/labels for easier navigation (e.g., "Git" or "LSP actions").  
-- Custom Labels: Allows overriding default keymap descriptions with user-defined, more intuitive names.  
-- Timeouts/Triggers: Configurable delay for popup appearance and manual triggering via commands like `:WhichKey`.  
-- Plugin Integration: Auto-detects and displays keybindings from plugins like Neotree, Telescope, or LSP clients.

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  triggers = { "<leader>" }, -- Show menu after leader
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
