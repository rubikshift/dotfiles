return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-nvim-lsp-document-symbol",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"lukas-reineke/cmp-under-comparator",
		"saadparwaiz1/cmp_luasnip",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
	},
	config = function()
		-- luasnip setup
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		-- nvim-cmp setup
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			-- completion = {
			-- 	completeopt = "menu,menuone,noinsert",
			-- },
			-- sorting = {
			-- 	comparators = {
			-- 		cmp.config.compare.offset,
			-- 		cmp.config.compare.exact,
			-- 		cmp.config.compare.score,
			-- 		require("cmp-under-comparator").under,
			-- 		cmp.config.compare.kind,
			-- 		cmp.config.compare.sort_text,
			-- 		cmp.config.compare.length,
			-- 		cmp.config.compare.order,
			-- 	},
			-- },
			mapping = {
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.locally.jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { "i", "s", "c" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.mapping.select_prev_item()
					elseif luasnip.locally.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s", "c" }),
				["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
				["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
				["<C-space>"] = cmp.mapping(cmp.mapping.complete()),
				["<C-e>"] = cmp.mapping(cmp.mapping.abort()),
				["<CR>"] = cmp.mapping({
					i = function(fallback)
						if cmp.visible() and cmp.get_active_entry() then
							if luasnip.expandable() then
								luasnip.expand()
							else
								cmp.confirm({ select = false })
							end
						else
							fallback()
						end
					end,
					s = cmp.mapping.confirm({ select = true }),
					-- c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
				}),

				-- ["<CR>"] = cmp.mapping(function(fallback)
				-- 	if cmp.visible() then
				-- 		if luasnip.expandable() then
				-- 			luasnip.expand()
				-- 		else
				-- 			cmp.confirm({
				-- 				select = true,
				-- 			})
				-- 		end
				-- 	else
				-- 		fallback()
				-- 	end
				-- end, { "i", "s", "c" }),
				-- ["<CR>"] = cmp.mapping(cmp.mapping.confirm({ select = true }), { "i" }),
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "treesiter" },
				{ name = "buffer", max_item_count = 5 },
				{ name = "path" },

				-- { name = 'cmdline' }
			}),
			formatting = {
				format = lspkind.cmp_format(),
			},
			experimental = {
				-- native_menu = true,
				-- ghost_text = true,
			},
		})

		cmp.setup.cmdline("/", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "nvim_lsp_document_symbol" },
				{ name = "buffer", keyword_length = 3 },
			}),
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
				{ name = "cmdline" },
			}),
		})
	end,
}
