project('linuxthemesstore', 'rust', version: '0.1.0')
i18n = import('i18n')
gnome = import('gnome')
cargo = find_program('cargo', required: true)

# Build the Rust binary
build_cmd = [
  cargo, 'build', '--release'
]

build_target = custom_target(
  'linuxthemesstore-bin',
  build_by_default: true,
  output: 'linuxthemesstore',
  command: build_cmd,
)

# Manually install the binary from target/release
install_data(
  'target/release/linuxthemesstore',
  install_dir: get_option('bindir'),
  rename: 'linuxthemesstore'
)

# Install the app icon
install_data(
  'assets/com.ScalpelSoftwares.LinuxThemesStore.png',
  install_dir: join_paths(get_option('datadir'), 'icons/hicolor/256x256/apps'),
)

# Configure and install desktop file
desktop_file = configure_file(
  input: 'data/com.ScalpelSoftwares.LinuxThemesStore.desktop.in',
  output: 'com.ScalpelSoftwares.LinuxThemesStore.desktop',
  configuration: {'bindir': get_option('bindir')}
)

install_data(
  desktop_file,
  install_dir: join_paths(get_option('datadir'), 'applications'),
  install_mode: ['rwxr-xr-x', 'root', 'root']
)

gnome.post_install(
     glib_compile_schemas: true,
    gtk_update_icon_cache: true,
  update_desktop_database: true,
)

