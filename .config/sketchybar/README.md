# Sketchybar Configuration

This directory contains the configuration for [Sketchybar](https://github.com/FelixKratz/SketchyBar), a highly customizable status bar for macOS.

## Features

- **Custom Status Bar**: Clean and minimal design
- **Widgets**: Battery, WiFi, Volume, and Media
- **Spaces Integration**: Visual indicators for workspaces
- **Spotify Integration**: Control and display current track
- **Calendar**: Date and time display
- **Custom Icons**: Using Nerd Fonts for consistent theming

## Configuration Structure

- `sketchybarrc`: Main configuration entry point
- `bar.lua`: Bar appearance and positioning
- `colors.lua`: Color scheme definitions
- `default.lua`: Default configuration and theming
- `icons.lua`: Icon definitions
- `settings.lua`: Global settings

### Items

- `items/`: Individual component configurations
  - `apple.lua`: Apple menu integration
  - `calendar.lua`: Date and time display
  - `spaces.lua`: Workspace indicators
  - `spotify.lua`: Music control and display
  - `widgets/`: Various status widgets
    - `battery.lua`: Battery level and status
    - `messages.lua`: Notification indicators
    - `volume.lua`: Volume control
    - `wifi.lua`: Network status

### Helpers

- `helpers/`: Utility scripts and components
  - `app_icons.lua`: Application icon mapping
  - `event_providers/`: Custom event handlers
    - `cpu_load/`: CPU monitoring
    - `network_load/`: Network monitoring
  - `menus/`: Custom menu implementations

## Installation

1. Install Sketchybar and dependencies from script:

   ```bash
   ~/.config/sketchybar/helpers/install.sh
   ```

2. Install additional dependencies:

   - [sketchybar-app-font-bg](https://github.com/SoichiroYamane/sketchybar-app-font-bg) using the guide in the repo

3. Link the configuration:

   ```bash
   stow sketchybar -t ~/.config
   ```

4. Build and install the helper binaries:

   ```bash
   cd ~/.config/sketchybar/helpers
   make
   ```

5. Start Sketchybar:
   ```bash
   brew services start sketchybar
   ```

## Configuration

### Theme

Edit `colors.lua` to customize the color scheme. The default theme uses a dark color palette.

### Adding New Widgets

1. Create a new `.lua` file in the `items/` directory
2. Define your widget configuration
3. Require the file in `items/init.lua`

### Custom Events

Custom event providers can be added in the `helpers/event_providers/` directory. Each provider should include:

- A C source file
- A makefile for building
- The compiled binary in the `bin/` directory

## Troubleshooting

- If the bar doesn't appear, check the logs:
  ```bash
  log stream --predicate 'process == "sketchybar"' --level info
  ```
- Ensure all helper binaries are built and executable
- Check that all required fonts are installed

## Resources

- [Sketchybar Documentation](https://github.com/FelixKratz/SketchyBar)
- [Lua API Reference](https://github.com/FelixKratz/SketchyBar/discussions/26)
- [sketchybar-app-font-bg](https://github.com/SoichiroYamane/sketchybar-app-font-bg)

## Based on

- [Praveen Gongada's dotfiles](https://github.com/PraveenGongada/dotfiles/tree/main/sketchybar)
- [Adrian Karlen's dotfiles](https://github.com/adriankarlen/dots/tree/main)
