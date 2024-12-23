local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup {
    registries = {
        'file:~/.config/nvim/mason-registry',
    },
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}
mason_lspconfig.setup {
    automatic_installation = true,
}

lspconfig.lua_ls.setup{}
lspconfig.hyprls.setup{}
lspconfig.basedpyright.setup{}
lspconfig.nil_ls.setup{}
lspconfig.marksman.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.yamlls.setup{}
lspconfig.bashls.setup{}
