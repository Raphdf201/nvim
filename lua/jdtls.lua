local jdtls = require("jdtls")

-- Path to where you extracted jdtls
local home = os.getenv("HOME")
local jdtls_path = home .. "/.local/share/jdtls"

-- Workspace directory (per project)
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = home .. "/.local/share/eclipse/" .. project_name

local config = {
  cmd = {
    "java", -- or absolute path to java
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar",
    "-configuration", jdtls_path .. "/config_linux", -- or config_mac/config_win
    "-data", workspace_dir,
  },

  root_dir = require("jdtls.setup").find_root({ "gradlew", "mvnw", ".git" }),
}

jdtls.start_or_attach(config)

