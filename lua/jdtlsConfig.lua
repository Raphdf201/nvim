local jdtls = require("jdtls")

local home = os.getenv("HOME")
local projName = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspaceDir = home .. "/.local/share/eclipse/" .. projName

local config = {
	cmd = {
		"jdtls",
		"-data", workspaceDir
	},
	root_dir = require("jdtls.setup").find_root({".git", "gradlew"}),
	settings = { java = {} },
	init_options = { bundles = {} },
}

jdtls.start_or_attach(config)

