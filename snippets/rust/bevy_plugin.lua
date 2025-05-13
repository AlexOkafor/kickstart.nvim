local ls = require 'luasnip'
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
local extras = require 'luasnip.extras'
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

return {
  s('plugin', fmt(
    [[
    pub(crate) struct {}Plugin;

    impl Plugin for {}Plugin {{

      fn build(&self, app: &mut bevy::prelude::App) {{
              {}
          }}
    }}
    ]],{
      i(1),rep(1),i(2)
    }
  )),
}
