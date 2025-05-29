datadir = get_option('prefix') / get_option('datadir')

application_id = 'io.github.debasishpatra1987.linuxthemestore'
# Read more <https://mesonbuild.com/Reference-manual.html#install_data>

# Install the app icon
install_data(
  'io.github.debasishpatra1987.linuxthemestore.svg',
  install_dir: join_paths(get_option('datadir'), 'icons/hicolor/scalable/apps'),
)

# Configure and install desktop file
desktop_file = configure_file(
  input: 'io.github.debasishpatra1987.linuxthemestore.in',
  output: 'io.github.debasishpatra1987.linuxthemestore.desktop',
  configuration: {'bindir': get_option('prefix') / get_option('bindir')}
)


install_data(
    '@0@.metainfo.xml'.format(application_id),
    install_dir: datadir / 'metainfo'
)

install_data(
    '@0@.svg'.format(application_id),
    install_dir: datadir / 'icons' / 'hicolor' / 'scalable' / 'apps'
)
