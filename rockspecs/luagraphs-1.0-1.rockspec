package = "luagraphs"
version = "1.0-1"
source = {
   url = "git://github.com/chen0040/lua-graph.git",
   tag = "v1.0.1",
}
description = {
   summary = "Lua Graph Algorithms Library",
   detailed = [[
      Lua implementation for algorithms and data structures
      for Graph processing
   ]],
   homepage = "https://github.com/chen0040/lua-graph",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      -- Note the required Lua syntax when listing submodules as keys
      ["luagraphs.data.stack"] = "src/data/stack.lua",
      ["luagraphs.data.graph"] = "src/data/graph.lua",
   }
}
