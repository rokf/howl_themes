{:delegate_to} = howl.util.table

background   = '#ffffff'
current      = '#75715e'
selection    = '#CE7993'
foreground   = '#0E1F23'
comment      = '#75715e'
red          = '#F87C7A'
darkred      = '#D34846'
orange       = '#FA8A51'
redish       = '#DD194E'
redish_dark  = '#A61D43'
dark_purple  = '#736093'
aqua         = '#88A9A9'
blue         = '#48596F'
purple       = '#8255D2'
magenta      =  blue
grey         = '#EFEFEF'
grey_darker  = '#EFEFEF'
fafafa       = '#FAFAFA'
grey_light   = '#828282'
embedded_bg  = '#9C9C9C'
border_color = '#B3B3B3'
dark_gutter  = '#444444'
light_gutter  = '#EAEAEA'

content_box = {
  background: color: background
  border:
    width: 1
    color: border_color
  border_right:
    color: border_color
  border_bottom:
    color: border_color
  header:
    color: blue -- acts weird
    background:
      color: border_color
    border_bottom:
      color: border_color
      width: 1
    padding: 3
  footer:
    color: white
    background:
      color: border_color
    border_top:
      color: border_color
    font: bold: true
    padding: 3
}

return {
  window:
    background:
      color: background
    status:
      font:
        bold: true
        italic: false
      color: foreground -- weird
      info:
        color: grey_light
      warning:
        color: orange
      'error':
        color: red
  :content_box
  popup:
    background:
      color: fafafa
    border:
      color: foreground
  editor: delegate_to content_box, {
    indicators:
      default:
        color: blue
      title:
        color: blue -- acts weird
        font:
          bold: true
      vi:
        font: bold: true
    caret:
      color: grey_light
      width: 1
    current_line:
      background: current
    gutter:
      color: foreground -- comment
      background:
        color: light_gutter -- fafafa
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: grey_darker,
      :background,
      line_width: 1

    indentation_guide_1:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    indentation_guide_2:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    indentation_guide_3:
      type: flair.PIPE,
      foreground: grey_darker,
      line_width: 1

    edge_line:
      type: flair.PIPE,
      foreground: grey_darker, -- blue ?
      foreground_alpha: 0.3,
      line_width: 0.5

    search:
      type: highlight.ROUNDED_RECTANGLE
      foreground: black
      foreground_alpha: 1
      background: redish
      text_color: fafafa
      height: 'text'

    search_secondary:
      type: flair.ROUNDED_RECTANGLE
      background: redish_dark
      text_color: fafafa
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: black
      background: red
      text_color: black
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: foreground
      -- background: '#0064b1'
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      foreground: '#0064b1'
      text_color: foreground
      line_width: 1
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: current
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: foreground
      text_color: foreground
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: foreground
      width: 2
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: foreground
      text_color: background
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: selection
      background_alpha: 0.3
      min_width: 'letter'

  styles:
    default:
      color: foreground

    red: color: red
    dark_purple: color: dark_purple
    redish: color: redish
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup:
      background: fafafa
      color: foreground

    comment:
      font: italic: true
      color: comment

    variable:
      color: redish

    label:
      color: orange
      font: italic: true

    key:
      color: blue
      font: bold: true

    fdecl:
      color: dark_purple
      font: bold: true

    keyword:
      color: magenta
      font: bold: true

    class:
      color: blue
      font: bold: true

    type_def:
      color: dark_purple
      font:
        bold: true

    definition:
      color: redish

    function:
      color: blue
      font: bold: true

    type:
      color: blue
      font: italic: true

    char: color: dark_purple
    number: color: purple
    operator: color: magenta
    preproc: color: aqua
    special: color: purple
    tag: color: purple
    member: color: red
    info: color: blue

    constant:
      color: redish

    string:
      color: redish

    regex:
      color: dark_purple
      background: embedded_bg

    embedded:
      color: blue
      background: embedded_bg

    -- Markup and visual styles

    error:
      font: italic: true
      color: white
      background: darkred

    warning:
      color: foreground -- orange

    h1:
      font: bold: true
      color: magenta

    h2:
      font: bold: true
      color: aqua

    h3:
      font: italic: true
      color: purple

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: aqua
    link_url: color: comment

    table:
      color: blue
      background: embedded_bg
      underline: true

    addition: color: dark_purple
    deletion: color: red
    change: color: redish
  }
