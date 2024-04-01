return {
	--offuscates private variables in the type of files inside file_pattern
	-- :CloakDisable unmasks, :CloakToggle masks again
	"laytan/cloak.nvim",
	config = function()
	require("cloak").setup({
		enabled = true,
		cloak_character = "*",
		highlight_grouip = "Comment",
		patterns = {
			{
				file_pattern = {
					".env*",
					"wrangler.toml",
					".dev.vars",
                    "config.fish"
				},
				cloak_pattern = "=.+"
			},
		},
	})
end
}
