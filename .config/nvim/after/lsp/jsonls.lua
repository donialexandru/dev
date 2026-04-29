return {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas({
				ignore = {
					"semantic-release", -- ignore the failing one
				},
			}),
			validate = { enable = true },
		},
	},
}
