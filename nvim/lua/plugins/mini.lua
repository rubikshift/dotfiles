return {
	"nvim-mini/mini.nvim",
	lazy = false,
	version = "*",
	config = function()
		require("mini.ai").setup()
		require("mini.bracketed").setup()
		require("mini.comment").setup()
		require("mini.icons").setup()
		require("mini.jump").setup()
		require("mini.pairs").setup()
		require("mini.starter").setup()
		require("mini.surround").setup()
		require("mini.tabline").setup()
		require("mini.trailspace").setup()
		local minimap = require("mini.map")
		minimap.setup({
			integrations = {
				minimap.gen_integration.builtin_search(),
				minimap.gen_integration.diff(),
				minimap.gen_integration.diagnostic(),
			},
			symbols = {
				encode = minimap.gen_encode_symbols.dot("3x2"),
			},
		})
	end,
	keys = {
		{ "<C-m>", "<cmd>lua MiniMap.toggle()<CR>", desc = "Minimap toggle" },
		{ "<space><space>", "<cmd>lua MiniTrailspace.trim()<CR>", desc = "Trim trailing whitespaces" },
		{ "<space><CR>", "<cmd>lua MiniTrailspace.trim_last_lines()<CR>", desc = "Trim empty last lines" },
	},
}
