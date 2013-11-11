package = "should"
version = "dev-1"

source = {
  url = "git://github.com/gummesson/should.lua.git"
}

description = {
  summary = "A library that brings BDD-style assertions to Lua.",
  homepage = "http://ellengummesson.com/should.lua/",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "inspect >= 2.0-1",
  "ansicolors >= 1.0-1"
}

build = {
  type = "builtin",
  modules = {
    ["should"] = "src/should.lua",
    ["expect"] = "src/expect.lua",
    ["should.util"] = "src/util.lua"
  }
}
