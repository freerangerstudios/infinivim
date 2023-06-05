local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "infinivim.lsp.mason"
require("infinivim.lsp.handlers").setup()
require "infinivim.lsp.null-ls"
