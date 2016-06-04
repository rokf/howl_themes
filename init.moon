theme = howl.ui.theme

themes = {
  'Berrykai': bundle_file('berrykai/berrykai.moon'),
  'Play': bundle_file('play/play.moon'),
}

for name,file in pairs themes
  theme.register(name, file)

unload = ->
  for name in pairs themes
    theme.unregister(name)

{
  info: {
    author: 'rokf@github',
    description: 'Some aditional themes for Howl',
    license: 'MIT',
  },
  unload: unload
}
