-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({-- :Mason to get full list of language servers
    'clangd',         -- C/C++
    'sumneko_lua',    -- Lua
    'pyright',        -- Python
})


local cmp          = require('cmp')
local cmp_select   = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<Up>']       = cmp.mapping.select_prev_item(cmp_select),  -- up
    ['<Down>']     = cmp.mapping.select_next_item(cmp_select),  -- down
    ['<CR>']       = cmp.mapping.confirm({ select = true }),    -- confirm autocomplete
    ['<C-Space>']  = cmp.mapping.complete(),                    -- get autocomplete
})

-- https://youtu.be/w7i4amO_zaE?t=1171 for more info
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)


lsp.setup()
