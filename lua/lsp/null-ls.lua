-- equire("null-ls").setup({
-- 	sources = {
-- 		require("null-ls").builtins.formatting.stylua,
-- 		require("null-ls").builtins.diagnostics.eslint,
-- 		require("null-ls").builtins.completion.spell,
-- 	},
-- })

local null = require('null-ls')

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null.builtins.formatting

null.setup({
  debug = false,
  sources = {
    -- Formatters
    formatting.black, -- Python
    formatting.clang_format, -- C++, C, C#, Java, Cuda
    formatting.prettier.with({ extra_args = { "--single-quote", "--jsx-single-quote" } }), -- Javascript, Javascriptreact, Typescript, Typescriptreact, Vue, Css, Scss, Less, Html, Json, Jsonc, Yaml, Markdown, Graphql, Handlebars
    formatting.stylua, -- Lua
    formatting.google_java_format, -- Java
	-- formatting.autopep8, -- Python
	-- formatting.blue, -- Python
  },
})
