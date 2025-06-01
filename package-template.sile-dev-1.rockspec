
rockspec_format = "3.0"
package = "package-template.sile"
version = "dev-1"

description = {
  summary = "A template for SILE packages...",
  detailed = [[]],
  homepage = "", -- e.g. its GitHub repo
  maintainer = "",
  license = "MIT"
}

source = {
  url = "git+https://github.com/user/package.sile.git", -- it should have the git+https: prefix in order to work in this case!
  -- tag = ""
}

dependencies = {
   "lua >= 5.1",
}

build = {
  type = "builtin",

  modules = {
    ["sile.packages.template"] = "packages/template/init.lua",
    ["sile.classes.sample"] = "classes/sample.lua",
  },

  -- for documentation and config files
  copy_directories = {}
}
