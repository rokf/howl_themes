-- source: https://github.com/Jaredk3nt/laserwave

{:delegate_to} = howl.util.table

scheme = {
  raisin_black: "#27212e"
  white: "#ffffff"
  mustard: "#ffe261"
  roman_silver: "#716385"
  old_lavender: "#91889b"
  pearl_aqua: "#74dfc4"
  african_violet: "#b381c5"
  powder_blue: "#b4dce7"
  hot_pink: "#EB64B9"
  maximum_blue: "#40b4c4"
}

content_box = {
  background:
    color: scheme.raisin_black
  border:
    width: 0
    color: scheme.raisin_black
  border_right:
    width: 0
    color: scheme.raisin_black
  border_bottom:
    width: 0
    color: scheme.raisin_black
  header:
    background:
      color: scheme.raisin_black
    border_bottom:
      color: scheme.hot_pink
    color: scheme.white
    font: bold: false
    padding: 0
  footer:
    background:
      color: scheme.raisin_black
    border_top:
      color: scheme.hot_pink
    color: scheme.hot_pink
    padding: 0
}

return {
  window:
    background:
      color: scheme.raisin_black
    status:
      font:
        bold: false
        italic: true
      color: scheme.white
      info: color: scheme.white
      warning: color: scheme.mustard
      'error': color: scheme.hot_pink

  :content_box

  popup:
    background:
      color: scheme.raisin_black
    border:
      color: scheme.powder_blue

  editor: delegate_to content_box, {
    indicators:
      default:
        color: scheme.white
      title:
        font: bold: false
      vi:
        font: bold: true

    caret:
      color: scheme.old_lavender
      width: 1

    current_line:
      background: scheme.mustard

    gutter:
      color: scheme.old_lavender
      background:
        color: scheme.raisin_black
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: scheme.old_lavender, -- ?
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: scheme.old_lavender,
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: scheme.old_lavender,
      foreground_alpha: 0.5,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: scheme.old_lavender,
      foreground_alpha: 0.5,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: scheme.old_lavender,
      foreground_alpha: 0.5,
      line_width: 0.5

    search: -- selected search
      type: highlight.ROUNDED_RECTANGLE
      foreground_alpha: 1
      background: scheme.hot_pink
      text_color: scheme.raisin_black
      background_alpha: 0.8
      height: 'text'

    search_secondary: -- non selected search
      type: flair.ROUNDED_RECTANGLE
      background: scheme.mustard
      text_color: scheme.raisin_black
      background_alpha: 0.8
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: scheme.white
      background: scheme.raisin_black
      text_color: scheme.white
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: scheme.pearl_aqua
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: scheme.hot_pink
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: scheme.hot_pink
      background_alpha: 0.2

    list_highlight:
      type: highlight.UNDERLINE
      foreground: scheme.hot_pink
      text_color: scheme.white
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: scheme.white
      width: 2
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: scheme.white
      text_color: scheme.raisin_black
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: scheme.maximum_blue
      background_alpha: 0.6
      min_width: 'letter'

  styles:
    default:
      color: scheme.white

    red: color: scheme.white
    green: color: scheme.white
    yellow: color: scheme.white
    blue: color: scheme.white
    magenta: color: scheme.white
    cyan: color: scheme.white

    popup: -- ?
      background: scheme.raisin_black
      color: scheme.white

    comment:
      font: italic: true
      color: scheme.old_lavender

    variable:
      color: scheme.white

    label:
      color: scheme.mustard
      font: italic: true

    key:
      color: scheme.maximum_blue
      font: bold: false

    fdecl:
      color: scheme.hot_pink
      font: bold: false

    keyword:
      color: scheme.maximum_blue
      font: bold: true

    class:
      color: scheme.hot_pink

    type_def:
      color: scheme.hot_pink
      font: bold: true

    definition:
      color: scheme.white

    function:
      color: scheme.hot_pink
      font: italic: true

    type:
      color: scheme.african_violet
      font: italic: false

    char: color: scheme.powder_blue
    number: color: scheme.african_violet
    operator: color: scheme.pearl_aqua
    preproc: color: scheme.white
    special: color: scheme.white
    tag: color: scheme.pearl_aqua
    member: color: scheme.white
    info: color: scheme.white
    constant: color: scheme.mustard
    string: color: scheme.powder_blue

    regex:
      color: scheme.white
      background: scheme.raisin_black

    embedded:
      color: scheme.white
      background: scheme.raisin_black

    -- Markup and visual styles

    error:
      font: italic: true
      color: scheme.hot_pink
      background: scheme.raisin_black

    warning:
      font: italic: true
      color: scheme.mustard

    h1:
      font: bold: true
      color: scheme.mustard

    h2:
      font: bold: true
      color: scheme.mustard

    h3:
      font: italic: true
      color: scheme.mustard

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: scheme.mustard
    link_url: color: scheme.mustard

    table:
      color: scheme.white
      background: scheme.raisin_black
      underline: true

    addition: color: scheme.white
    deletion: color: scheme.white
    change: color: scheme.white
  }
