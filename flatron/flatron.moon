{:delegate_to} = howl.util.table

c = { -- COLORS
  text: "#C0C5CE"
  comments: "#CCC97F"
  punctuation: "#C0C5CE"
  delimeeters: "#C0C5CE"
  operators: "#c0c5ce"
  keywords: "#CDC6D8"
  variables: "#CDC6D8"
  functions: "#B887DD"
  classes: "#6CA6C9"
  classes2: "#EFF1F5"
  methods: "#8FA1B3"
  storage: "#67B1D7"
  support: "#6A6474"
  strings: "#69B7A6"
  integers: "#CDC6D8"
  floats: "#CDC6D8"
  booleans: "#CDC6D8"
  constants: "#CDC6D8"
  tags: "#CDC6D8"
  attributes: "#CDC6D8"
  attribute_ids: "#8FA1B3"
  selector: "#CDC6D8"
  values: "#CDC6D8"
  headings: "#8FA1B3" -- blueish
  units: "#CDC6D8" -- violet
  code: "#A3BE8C" -- greeny
  quotes: "#D08770" -- orange
  separator_f: "#C0C5CE"
  separator_b: "#4F5B66"
  inserted: "#A3BE8C"
  colors: "#6A6474"
  regex: "#6A6474"
  escape_chars: "#6A6474"
  embedded: "#AB7967"
  tag_start_end: "#9A38D9"
  invalid_b: "#2B303B"
  invalid_f: "#CDC6D8"
  background: "#25222A"
  caret: "#C0C5CE"
  foreground: "#898295"
  invisibles: "#65737E"
  line_highlight: "#19161B"
  selection: "#4F5B66"
  brace: "#D08770"
}

content_box = {
  background:
    color: "#201D24"

  border:
    width: 1
    color: "#1D1B21"

  border_right:
    width: 3
    color: "#1D1B21"

  border_bottom:
    width: 3
    color: "#1D1B21"

  header:
    background:
      color: "#1D1B21"

    border_bottom:
      color: "#1D1B21"

    color: c.foreground
    font: bold: false -- true
    padding: 1

  footer:
    background:
      color: "#1D1B21"

    border_top:
      color: "#1D1B21"

    color: c.foreground
    padding: 1
}

return {
  window:
    background:
      color: c.background

    status:
      font: bold: false, italic: true
      color: c.foreground

      info: color: c.foreground
      warning: color: "#D08770"
      'error': color: "#DB6369"

  :content_box

  popup:
    background:
      color: c.background
    border:
      color: c.foreground

  editor: delegate_to content_box, {
    indicators:
      default:
        color: c.foreground

      title:
        font: bold: false -- true

      vi:
        font: bold: true

    caret:
      color: c.caret
      width: 1

    current_line:
      background: c.line_highlight

    gutter:
      color: c.foreground
      background:
        color: "#1D1B21"
  }

  flairs:
    -- indentation guides are fixed
    indentation_guide:
      type: flair.PIPE,
      foreground: c.foreground,
      foreground_alpha: 0.3,
      line_width: 0.5

    indentation_guide_1:
      type: flair.PIPE,
      foreground: c.foreground,
      foreground_alpha: 0.3,
      line_width: 0.5

    indentation_guide_2:
      type: flair.PIPE,
      foreground: c.foreground,
      foreground_alpha: 0.3,
      line_width: 0.5

    indentation_guide_3:
      type: flair.PIPE,
      foreground: c.foreground,
      foreground_alpha: 0.3,
      line_width: 0.5
    edge_line:
      type: flair.PIPE,
      foreground: c.foreground,
      foreground_alpha: 0.3,
      line_width: 0.5

    search:
      type: highlight.ROUNDED_RECTANGLE
      foreground: c.foreground -- ?
      foreground_alpha: 1
      background: c.background
      text_color: c.foreground
      height: 'text'

    search_secondary:
      type: flair.ROUNDED_RECTANGLE
      background: c.background
      text_color: c.foreground
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: c.foreground
      background: c.background
      text_color: c.foreground
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: c.brace
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      text_color: c.brace
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: c.selector
      background_alpha: 0.3

    list_highlight:
      type: highlight.UNDERLINE
      foreground: c.foreground
      text_color: c.foreground
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: c.foreground
      width: 2
      height: 'text'

    block_cursor: -- ?
      type: flair.ROUNDED_RECTANGLE,
      background: c.foreground
      text_color: c.background
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: c.selection
      background_alpha: 0.4
      min_width: 'letter'

  styles:
    default:
      color: c.foreground

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup:
      background: c.background
      color: c.foreground

    comment:
      font: italic: true
      color: c.comments

    variable:
      color: c.variables

    label:
      color: c.foreground
      font: italic: true

    key:
      color: c.keywords
      font: bold: false

    fdecl:
      color: c.functions
      font: bold: false

    keyword:
      color: c.keywords
      font: bold: true

    class:
      color: c.classes
      font: bold: true

    type_def:
      color: c.classes
      font: bold: true

    definition:
      color: c.classes

    function:
      color: c.functions
      font: bold: false

    type:
      color: c.classes
      font: italic: false

    char: color: c.strings
    number: color: c.integers
    operator: color: c.operators
    preproc: color: c.text -- TODO
    special: color: c.text -- TODO
    tag: color: c.tags -- tag_start_end?
    member: color: c.methods -- TODO
    info: color: c.text -- TODO

    constant:
      color: c.constants

    string:
      color: c.strings

    regex:
      color: c.regex
      background: c.background -- ?

    embedded:
      color: c.embeded
      background: c.background -- ?

    -- Markup and visual styles

    error:
      font: italic: true
      color: c.invalid_f
      background: c.invalid_b

    warning:
      font: italic: true
      color: c.invalid_f

    h1:
      font: bold: true
      color: c.headings

    h2:
      font: bold: true
      color: c.headings

    h3:
      font: italic: true
      color: c.headings

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: c.variables
    link_url: color: c.variables

    table:
      color: c.foreground -- TODO
      background: c.background
      underline: true

    addition: color: c.foreground -- TODO
    deletion: color: c.foreground
    change: color: c.foreground
  }
