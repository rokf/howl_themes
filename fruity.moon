{:delegate_to} = howl.util.table

content_box = {
  background:
    color: "#f8f8f8"
  border:
    width: 1
    color: "#f8f8f8"
  border_right:
    width: 3
    color: "#f8f8f8"
  border_bottom:
    width: 3
    color: "#f8f8f8"
  header:
    background:
      color: "#f8f8f8"
    border_bottom:
      color: "#f8f8f8"
    color: "#1f1f1f"
    font: bold: false
    padding: 1
  footer:
    background:
      color: "#f8f8f8"
    border_top:
      color: "#f8f8f8"
    color: "#1f1f1f"
    padding: 1
}

return {
  window:
    background:
      color: "#f8f8f8"
    status:
      font:
        bold: false
        italic: true
      color: "#1f1f1f"
      info: color: "#1f1f1f"
      warning: color: "#1f1f1f"
      'error': color: "#1f1f1f"

  :content_box

  popup:
    background:
      color: "#f8f8f8"
    border:
      color: "#708090"

  editor: delegate_to content_box, {
    indicators:
      default:
        color: "#1f1f1f"
      title:
        font: bold: false
      vi:
        font: bold: true

    caret:
      color: "#1f1f1f"
      width: 1

    current_line:
      background: "#669907" -- ?

    gutter:
      color: "#1f1f1f"
      background:
        color: "#f8f8f8"
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: "#1f1f1f", -- ?
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: "#708090",
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: "#708090",
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: "#708090",
      foreground_alpha: 0.5,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: "#708090",
      foreground_alpha: 0.5,
      line_width: 0.5

    search: -- selected search
      type: highlight.ROUNDED_RECTANGLE
      foreground_alpha: 1
      background: "#b3176e"
      text_color: "#f8f8f8"
      height: 'text'

    search_secondary: -- non selected search
      type: flair.ROUNDED_RECTANGLE
      background: "#96879d"
      text_color: "#f8f8f8"
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: "#1f1f1f" -- ?
      background: "#f8f8f8"
      text_color: "#1f1f1f"
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: "#8583aa"
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: "#b3176e"
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: "#669907" -- CHECK!
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: "#1f1f1f"
      text_color: "#1f1f1f"
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: "#1f1f1f"
      width: 1
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: "#1f1f1f"
      text_color: "#f8f8f8"
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: "#8583aa"
      background_alpha: 0.6
      min_width: 'letter'

  styles:
    default:
      color: "#1f1f1f"

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup: -- ?
      background: "#669907"
      color: "#1f1f1f"

    comment:
      font: italic: true
      color: "#708090"

    variable:
      color: "#1f1f1f"

    label:
      color: "#1f1f1f"
      font: italic: true

    key:
      color: "#1f1f1f"
      font: bold: false

    fdecl:
      color: "#0f83b1"
      font: bold: false

    keyword:
      color: "#0f83b1"
      font: bold: false

    class:
      color: "#1f1f1f"

    type_def:
      color: "#1f1f1f"
      font: bold: false

    definition:
      color: "#1f1f1f"

    function:
      color: "#1f1f1f"
      font: italic: true

    type:
      color: "#1f1f1f"
      font: italic: false

    char: color: "#669907"
    number: color: "#b3176e"
    operator: color: "#1f1f1f"
    preproc: color: "#1f1f1f"
    special: color: "#b3176e"
    tag: color: "#1f1f1f"
    member: color: "#1f1f1f"
    info: color: "#1f1f1f"
    constant: color: "#1f1f1f"
    string: color: "#669907"

    regex:
      color: "#1f1f1f"
      background: "#f8f8f8"

    embedded:
      color: "#1f1f1f"
      background: "#f8f8f8"

    -- Markup and visual styles

    error:
      font: italic: true
      color: "#1f1f1f"
      background: "#f8f8f8"

    warning:
      font: italic: true
      color: "#1f1f1f"

    h1:
      font: bold: true
      color: "#1f1f1f"

    h2:
      font: bold: true
      color: "#1f1f1f"

    h3:
      font: italic: true
      color: "#1f1f1f"

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: "#669907"
    link_url: color: "#669907"

    table:
      color: "#1f1f1f"
      background: "#f8f8f8"
      underline: true

    addition: color: "#1f1f1f"
    deletion: color: "#1f1f1f"
    change: color: "#1f1f1f"
  }
