local wilder = require('wilder')

wilder.setup({modes = {':', '/', '?'}, accept_key = '<Down>'})
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    reverse = 0,        -- if 1, shows the candidates from bottom to top
  })
))
