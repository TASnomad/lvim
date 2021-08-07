local funcs = require "core.funcs"
local configs = {}

configs["_ctrlspace"] = false
configs["keymaps"] = false

configs["keymaps"] = function()
	local keys_normal = {
		{ "n", "nzz" },
		{ "j", "jzz" },
		{ "p", "pzz" },
		{ "P", "Pzz" },
		{ "G", "Gzz" },
		{ "x", "xzz" },
		{ "<PageUp>", "<PageUp>zz" },
		{ "<PageDown>", "<PageDown>zz" },
		{ "<C-h>", "<C-w>-h" },
		{ "<C-j>", "<C-w>-j" },
		{ "<C-k>", "<C-w>-k" },
		{ "<C-l>", "<C-w>-k" },
		{ "<leader>op", ":NvimTreeToggle<CR>" },
		{ "<leader>bk", ":bd<CR>" },
		{ "<leader>bc", ":enew | bd#<Return>" },
		{ "<leader>ws", ":split<CR>" },
		{ "<leader>wv", ":vsplit<CR>" },
		{ "<leader>sb", ":SnapGrep<CR>" },
		{ "<leader>pf", ":SnapFiles<CR>" },
		{ "<leader>bi", ":SnapBuffers<CR>" },
		{ "<leader>gg", ":SnapGit<CR>" },
		{ "gd", ":LspDefinition<CR>" },
		{ "gD", ":LspDeclaration<CR>" },
		{ "gr", ":LspReferences<CR>" },
		{ "gi", ":LspImplementation<CR>" },
		{ "K", ":LspHover<CR>" }
	}
	funcs.keymaps("n", { noremap = false, silent = true }, keys_normal)
	vim.cmd("nnoremap <silent> <C-p> :LspGoToPrev<CR>")
	vim.cmd("nnoremap <silent> <C-n> :LspGoToNext<CR>")
end

-- Remove function events from configs.global.init
-- configs['events'] = false

-- Rewrite function events from configs.global.init
-- configs['events'] = function()
--   your code
-- end

-- Add new function
-- configs['my_func'] = function()
--   your code
-- end

return configs
