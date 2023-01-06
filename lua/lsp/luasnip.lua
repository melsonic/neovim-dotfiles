local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")

luasnip.config.set_config({
    history = true,
    enable_autosnippets = true,
})

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/luasnip" })

cmp.setup({

    -- ... Your other configuration ...

    mapping = {

        -- ... Your other mappings ...

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),

        -- ... Your other mappings ...
        ["<C-e>"] = cmp.mapping(function()
            if luasnip.choice_active() then
                luasnip.change_choice(1)
            end
        end)
    },

    -- ... Your other configuration ...
})

vim.keymap.set("i", "<c-l>", function()
    if luasnip.choice_active() then
        luasnip.change_choice(1)
    end
end)
