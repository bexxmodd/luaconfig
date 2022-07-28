local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("bexx.lsp.configs")
require("bexx.lsp.handlers").setup()
require("bexx.lsp.null-ls")
