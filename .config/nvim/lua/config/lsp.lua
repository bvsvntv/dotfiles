local language_servers = {
	"gopls",
	"lua_ls",
	"ts_ls",
}

for _, ls in ipairs(language_servers) do
	vim.lsp.enable(ls)
end

-- Augroup to avoid duplicates on reload
local group =
	vim.api.nvim_create_augroup("LspNativeCompletion", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
	group = group,
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if
			client
			and client:supports_method(
				vim.lsp.protocol.Methods.textDocument_completion
			)
		then
			vim.lsp.completion.enable(
				true,
				client.id,
				args.buf,
				{ autotrigger = true }
			)
			vim.keymap.set("i", "<C-space>", function()
				vim.lsp.completion.get()
			end)
		end
	end,
})
