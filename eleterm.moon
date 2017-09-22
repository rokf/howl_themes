{:delegate_to} = howl.util.table

colors = {
  bg: "#252e32"
  fg: "#94a3a5"
  green: "#859900"
  turq: "#2aa198"
  blue: "#268bd2"
  red: "#cb4b16"
  pink: "#c7337a"
  brown: "#b58900"
  grey: "#545B5D"
}

content_box = {
  background:
    color: colors.bg
  border:
    width: 1
    color: colors.bg
  border_right:
    width: 3
    color: colors.bg
  border_bottom:
    width: 3
    color: colors.bg
  header:
    background:
      color: colors.bg
    border_bottom:
      color: colors.bg
    color: colors.fg
    font: bold: false
    padding: 1
  footer:
    background:
      color: colors.bg
    border_top:
      color: colors.bg
    color: colors.fg
    padding: 1
}

return {
  window:
    background:
      color: colors.bg
    status:
      font:
        bold: false
        italic: true
      color: colors.fg
      info: color: colors.fg
      warning: color: colors.brown
      'error': color: colors.red

  :content_box

  popup:
    background:
      color: colors.bg
    border:
      color: colors.grey

  editor: delegate_to content_box, {
    indicators:
      default:
        color: colors.fg
      title:
        font: bold: false
      vi:
        font: bold: true

    caret:
      color: colors.fg
      width: 1

    current_line:
      background: colors.brown -- ?

    gutter:
      color: colors.fg
      background:
        color: colors.bg
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: colors.fg, -- ?
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: colors.grey,
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: colors.grey,
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: colors.grey,
      foreground_alpha: 0.5,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: colors.grey,
      foreground_alpha: 0.5,
      line_width: 0.5

    search: -- selected search
      type: highlight.ROUNDED_RECTANGLE
      foreground_alpha: 1
      background: colors.turq
      text_color: colors.bg
      height: 'text'

    search_secondary: -- non selected search
      type: flair.ROUNDED_RECTANGLE
      background: colors.red
      text_color: colors.bg
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: colors.fg -- ?
      background: colors.bg
      text_color: colors.fg
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: colors.turq
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: colors.turq
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: colors.brown -- CHECK!
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: colors.fg
      text_color: colors.fg
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: colors.fg
      width: 1
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: colors.fg
      text_color: colors.bg
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: colors.turq
      background_alpha: 0.2
      min_width: 'letter'

  styles:
    default:
      color: colors.fg

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup: -- ?
      background: colors.brown
      color: colors.fg

    comment:
      font: italic: true
      color: colors.grey

    variable:
      color: colors.fg

    label:
      color: colors.fg
      font: italic: true

    key:
      color: colors.fg
      font: bold: false

    fdecl:
      color: colors.blue
      font: bold: false

    keyword:
      color: colors.turq
      font: bold: false

    class:
      color: colors.fg

    type_def:
      color: colors.fg
      font: bold: false

    definition:
      color: colors.fg

    function:
      color: colors.fg
      font: italic: true

    type:
      color: colors.red
      font: italic: false

    char: color: colors.brown
    number: color: colors.turq
    operator: color: colors.fg
    preproc: color: colors.fg
    special: color: colors.turq
    tag: color: colors.fg
    member: color: colors.fg
    info: color: colors.fg
    constant: color: colors.fg
    string: color: colors.brown

    regex:
      color: colors.fg
      background: colors.bg

    embedded:
      color: colors.fg
      background: colors.bg

    -- Markup and visual styles

    error:
      font: italic: true
      color: colors.fg
      background: colors.bg

    warning:
      font: italic: true
      color: colors.fg

    h1:
      font: bold: true
      color: colors.turq

    h2:
      font: bold: true
      color: colors.turq

    h3:
      font: italic: true
      color: colors.turq

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: colors.brown
    link_url: color: colors.brown

    table:
      color: colors.fg
      background: colors.bg
      underline: true

    addition: color: colors.fg
    deletion: color: colors.fg
    change: color: colors.fg
  }
