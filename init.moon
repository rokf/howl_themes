theme = howl.ui.theme

themes = {
  'Berrykai': bundle_file('berrykai.moon'),
  'Play': bundle_file('play.moon'),
  'Flatron': bundle_file('flatron.moon'),
  'Darkness': bundle_file('darkness.moon'),
  'Light': bundle_file('light.moon'),
  'Fruity': bundle_file('fruity.moon'),
  'Eleterm': bundle_file('eleterm.moon'),
  'Snazzy': bundle_file('snazzy.moon'),
}

for name,file in pairs themes
  theme.register(name, file)

unload = ->
  for name in pairs themes
    theme.unregister(name)

{
  info: {
    author: 'rokf',
    description: 'Additional themes for Howl',
    license: 'MIT',
  },
  :unload
}
