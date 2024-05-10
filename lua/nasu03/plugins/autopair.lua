return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = { "hrsh7th/nvim-cmp"  },
	config = function()
		-- import nvim-autopair
		local autopair = require("nvim-autopairs")
		
		-- configure autopair
		autopair.setup({
			checke_ts = true, -- enable treesitter
			ts_config = {
				lua = { "string" },
				javascript = { "template_string" },
			},
		})

		-- import nvim-autopairs completion functionally
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- import nvim-cmp plugin (completion plugin)
		local cmp = require("cmp")

		-- make autopairs and completion work together
		cmp.event:on("confirm_done",cmp_autopairs.on_confirm_done())
	end,
}
