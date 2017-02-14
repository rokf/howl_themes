{:delegate_to} = howl.util.table

colors = {
  "#000"
  "#111"
  "#222"
  "#333"
  "#444"
  "#555"
  "#666"
  "#777"
  "#888"
  "#999"
  "#aaa"
  "#bbb"
  "#ccc"
  "#ddd"
  "#eee"
  "#fff"
}

content_box = {
  background:
    color: colors[2]
  border:
    width: 1
    color: colors[2]
  border_right:
    width: 3
    color: colors[2]
  border_bottom:
    width: 3
    color: colors[2]
  header:
    background:
      color: colors[2]
    border_bottom:
      color: colors[2]
    color: colors[16]
    font: bold: false
    padding: 1
  footer:
    background:
      color: colors[2]
    border_top:
      color: colors[2]
    color: colors[16]
    padding: 1
}

return {
  window:
    background:
      color: colors[2]
    status:
      font:
        bold: false
        italic: true
      color: colors[16]
      info: color: colors[15]
      warning: color: colors[15]
      'error': color: colors[15]

  :content_box

  popup:
    background:
      color: colors[2]
    border:
      color: colors[3]

  editor: delegate_to content_box, {
    indicators:
      default:
        color: colors[15]
      title:
        font: bold: false
      vi:
        font: bold: true

    caret:
      color: colors[4]
      width: 1

    current_line:
      background: colors[5] -- ?

    gutter:
      color: colors[11]
      background:
        color: colors[2]
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: colors[16], -- ?
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: colors[7],
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: colors[7],
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: colors[7],
      foreground_alpha: 0.5,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: colors[7],
      foreground_alpha: 0.5,
      line_width: 0.5

    search: -- selected search
      type: highlight.ROUNDED_RECTANGLE
      -- foreground: colors[16]
      foreground_alpha: 1
      background: colors[1]
      text_color: colors[16]
      height: 'text'

    search_secondary: -- non selected search
      type: flair.ROUNDED_RECTANGLE
      background: colors[2]
      text_color: colors[16]
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: colors[15] -- ?
      background: colors[2]
      text_color: colors[15]
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: colors[16]
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: colors[15]
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: colors[5] -- CHECK!
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: colors[14]
      text_color: colors[14]
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: colors[13]
      width: 1
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: colors[15]
      text_color: colors[1]
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: colors[1] -- CHECK!
      background_alpha: 0.6
      min_width: 'letter'

  styles:
    default:
      color: colors[10]

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup: -- ?
      background: colors[5]
      color: colors[16]

    comment:
      font: italic: true
      color: colors[6]

    variable:
      color: colors[16]

    label:
      color: colors[15]
      font: italic: true

    key:
      color: colors[13]
      font: bold: false

    fdecl:
      color: colors[8]
      font: bold: false

    keyword:
      color: colors[13]
      font: bold: true

    class:
      color: colors[13]
      font: bold: true

    type_def:
      color: colors[13]
      font: bold: true

    definition:
      color: colors[13]

    function:
      color: colors[13]
      font: italic: true

    type:
      color: colors[10]
      font: italic: false

    char: color: colors[5]
    number: color: "#5696E1"
    operator: color: colors[5]
    preproc: color: colors[13]
    special: color: colors[13]
    tag: color: colors[13]
    member: color: colors[13]
    info: color: colors[8]

    constant:
      color: colors[12]

    string:
      color: "#73A4DD"

    regex:
      color: colors[15]
      background: colors[1]

    embedded:
      color: colors[14]
      background: colors[2]

    -- Markup and visual styles

    error:
      font: italic: true
      color: colors[16]
      background: colors[1]

    warning:
      font: italic: true
      color: colors[10]

    h1:
      font: bold: true
      color: colors[16]

    h2:
      font: bold: true
      color: colors[16]

    h3:
      font: italic: true
      color: colors[16]

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: colors[5] -- ?
    link_url: color: colors[5]

    table:
      color: colors[16]
      background: colors[1]
      underline: true

    addition: color: colors[15]
    deletion: color: colors[15]
    change: color: colors[15]
  }
