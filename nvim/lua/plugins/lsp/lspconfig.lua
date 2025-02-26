-- Language Server Setup: Simplifies configuration and initialization of LSP servers for various programming languages.  
-- Automatic Server Management: Automatically detects and starts the appropriate LSP server based on file type.  
-- Keybindings Integration: Provides default keybindings for common LSP actions like go-to-definition, references, and diagnostics.  
-- Custom Configuration: Allows fine-tuning server settings (e.g., cmd, root_dir, capabilities) for specific languages or projects.  
-- Diagnostics Display: Enables real-time error/warning highlighting and inline diagnostics via LSP servers.  
-- Plugin Interoperability: Works seamlessly with other plugins like `nvim-cmp`, `telescope.nvim`, and `null-ls` for enhanced functionality.

return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      
      capabilities = require('cmp_nvim_lsp').default_capabilities()

      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'pyright' } -- Your preferred servers
      })

      require('mason-lspconfig').setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
              }
            }
          })
        end
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local buf = args.buf
          
          vim.bo[buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          local opts = { buffer = buf }
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        end,
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = false,
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      auto_install = true,
    }
  }
}
