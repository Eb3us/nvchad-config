local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jsonls", "eslint", "yamlls", "bashls", "lua_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.yamlls.setup {
  settings = {
    ["yaml"] = {
      customTags = {
        "!Base64",
        "!Cidr",
        "!FindInMap sequence",
        "!GetAtt",
        "!GetAZs",
        "!ImportValue",
        "!Join sequence",
        "!Ref",
        "!Select sequence",
        "!Split sequence",
        "!Sub sequence",
        "!Sub",
        "!And sequence",
        "!Condition",
        "!Equals sequence",
        "!If sequence",
        "!Not sequence",
        "!Or sequence",
      },
    },
  },
}

--
-- lspconfig.pyright.setup { blabla}
