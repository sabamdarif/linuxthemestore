project('linuxthemesstore', 'rust', version: '0.1.0')
i18n = import('i18n')
gnome = import('gnome')
cargo = find_program('cargo', required: true)

# Build the Rust binary
build_target = custom_target(
  'linuxthemesstore',
  build_by_default: true,
  output: 'linuxthemesstore',
    command: [
    'sh', '-c',
    'rm ../executable/linuxthemesstore && cargo build --release && chmod 755 ../target/release/linuxthemesstore && cp ../target/release/linuxthemesstore ../executable/linuxthemesstore'
  ],
)

install_data('executable/linuxthemesstore',
  install_dir: get_option('prefix') / get_option('bindir'),
  install_mode: ['rwxr-xr-x']
)

# Install the app icon
install_data(
  'assets/com.ScalpelSoftwares.LinuxThemesStore.svg',
  install_dir: join_paths(get_option('datadir'), 'icons/hicolor/scalable/apps'),
)

# Configure and install desktop file
desktop_file = configure_file(
  input: 'data/com.ScalpelSoftwares.LinuxThemesStore.desktop.in',
  output: 'com.ScalpelSoftwares.LinuxThemesStore.desktop',
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

