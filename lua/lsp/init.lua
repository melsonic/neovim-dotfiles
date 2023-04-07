require("nvim-lsp-installer").setup {}
local capabilities = require('lsp.cmp')
local lspconfig = require('lspconfig')

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { texthl = hl, text = icon, numhl = hl })
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
	signs = function(namespace, bufnr)
		return vim.b[bufnr].show_signs == true
	end,
	virtual_text = {
		spacing = 4
	},
	underline = true,
	update_in_insert = false,
}
)

vim.diagnostic.config({
	float = {
		source = 'always',
		border = 'rounded',
		focusable = false,
		show_header = true
	},
})

-- Adds border on documentation
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

capabilities.textDocument.completion.completionItem.snippetSupport = true

-- function for document highlighting
local function lsp_document_highlight(client)
	if client.server_capabilities.documentHighlightProvider then
		vim.api.nvim_create_augroup("lsp_document_highlight", { clear = true })
		vim.api.nvim_create_autocmd("CursorHold", {
			callback = vim.lsp.buf.document_highlight,
			group = "lsp_document_highlight",
			pattern = "<buffer>"
		})
		vim.api.nvim_create_autocmd("CursorMoved", {
			callback = vim.lsp.buf.clear_references,
			group = "lsp_document_highlight",
			pattern = "<buffer>"
		})
	end
end

local on_attach = function(client)
	--     print("client Attached")
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
	vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
	vim.keymap.set("n", "rename", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "<Space>df", vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set("n", "<Space>db", vim.diagnostic.goto_prev, { buffer = 0 })
	vim.keymap.set("n", "<leader>dp", vim.diagnostic.open_float, { buffer = 0 })
	vim.keymap.set("n", "<leader>dt", "<cmd>Telescope diagnostics<CR>", { buffer = 0 })
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0 })
	vim.keymap.set("n", "<leader>ds", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<leader>df", vim.lsp.buf.format, { buffer = 0, })
	lsp_document_highlight(client)
end


-- local servers = { 'tsserver', 'clangd', 'html', 'cssls', 'tailwindcss', 'gopls', 'pylsp', 'dartls' }
local servers = { 'clangd', 'html', 'cssls', 'tailwindcss', 'gopls', 'pylsp', 'dartls' }
for _, lsp in pairs(servers) do
	require('lspconfig')[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities
	}
end

-- setup lua language server
lspconfig.sumneko_lua.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim', },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}

-- setup emmet
lspconfig.emmet_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { 'html', 'javascript', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' }
}

-- setup php (wordpress)
lspconfig.intelephense.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	-- Add wordpress to the list of stubs
	stubs = {
		"apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",
		"dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",
		"gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",
		"oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite", "pgsql",
		"Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",
		"sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm", "tidy",
		"tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",
		"wordpress",
	},
}
