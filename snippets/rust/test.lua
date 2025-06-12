local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

return {
  s('mod_test', {
    t(vim.split(
      [[
#[cfg(test)]
mod tests {
    use super::*;

    use crate::create_app;
    use bevy_app::App;

    fn setup_test() -> App {
        let mut app = create_app();
        app
    }

    #[test]
    fn my_test() {
        let mut app = setup_test();
    }
}
]],
      '\n'
    )),
  }),
}
