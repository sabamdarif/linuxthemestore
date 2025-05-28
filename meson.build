project('linuxthemestore', 'rust', version: '0.1.0')
i18n = import('i18n')
gnome = import('gnome')
cargo = find_program('cargo', required: true)

# Build the Rust binary
build_target = custom_target(
  'linuxthemestore',
  build_by_default: true,
  output: 'linuxthemestore',
    command: [
    'sh', '-c',
    'cargo build --release --target-dir . && chmod 755 release/linuxthemestore && rm ../executable/linuxthemestore && pwd && cp release/linuxthemestore ../executable/linuxthemestore'
  ],
)

install_data('executable/linuxthemestore',
  install_dir: get_option('prefix') / get_option('bindir'),
  install_mode: ['rwxr-xr-x']
)

# Install the app icon
install_data(
  'assets/com.github.debasishpatra1987.linuxthemestore.svg',
  install_dir: join_paths(get_option('datadir'), 'icons/hicolor/scalable/apps'),
)

# Configure and install desktop file
desktop_file = configure_file(
  input: 'assets/com.github.debasishpatra1987.linuxthemestore.in',
  output: 'com.github.debasishpatra1987.linuxthemestore.desktop',
  configuration: {'bindir': get_option('prefix') / get_option('bindir')}
)

install_data(
  desktop_file,
  install_dir: join_paths(get_option('datadir'), 'applications'),
  install_mode: ['rwxr-xr-x']
)

gnome.post_install(
    gtk_update_icon_cache: true,
    update_desktop_database: true,
)

