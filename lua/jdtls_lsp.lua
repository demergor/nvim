vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local jdtls = require("jdtls")
    local home = os.getenv("HOME")

    local java_home = "/usr/lib/jvm/java-21-openjdk"
    local jdtls_path = home .. "/.local/share/jdtls/"

    local root_files = {
      ".git",
      "settings.gradle.kts",
      "build.gradle.kts",
      "pom.xml",
      "src",
    }

    local root_dir = require("jdtls.setup").find_root(root_files)
    if not root_dir then
      return
    end

    local project_name = vim.fn.fnamemodify(root_dir, ":t")
    local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

    local cmd = {
      "java",
      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      "-Dosgi.bundles.defaultStartLevel=4",
      "-Declipse.product=org.eclipse.jdt.ls.core.product",
      "-Dlog.protocol=true",
      "-Dlog.level=ALL",
      "-Xms1g",
      "--add-modules=ALL-SYSTEM",
      "--add-opens", "java.base/java.util=ALL-UNNAMED",
      "--add-opens", "java.base/java.lang=ALL-UNNAMED",
      "-jar", jdtls_path .. "plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
      "-configuration", jdtls_path .. "config_linux",
      "-data", workspace_dir,
    }

    local config = {
      cmd = cmd,
      root_dir = root_dir,
      settings = {
        java = {
          home = java_home,
          eclipse = { downloadSources = true },
          maven = { downloadSources = true },
          implementationsCodeLens = { enabled = true },
          referencesCodeLens = { enabled = true },
        },
      },
      init_options = { bundles = {} },
    }

    jdtls.start_or_attach(config)
  end,
})
