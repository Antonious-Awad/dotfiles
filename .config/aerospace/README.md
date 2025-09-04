# Aerospace Window Manager Configuration

This directory contains the configuration for [AeroSpace](https://github.com/nikitabobko/AeroSpace), a tiling window manager for macOS.

## Features

- **Auto-start**: Configured to start at login
- **Integration with Sketchybar**: Automatically starts and updates Sketchybar with workspace changes
- **Layout Management**: Default accordion layout with smart orientation

## Configuration Highlights

### Startup

- Automatically starts at login
- Launches Sketchybar on startup
- Updates Sketchybar on workspace changes

### Layout

- Default layout: `accordion`
- Smart orientation: Auto-detects monitor orientation
- Accordion padding: 5px

### Keybindings

- Uses `Ctrl` instead of `Alt` to avoid conflicts with VS Code
- Custom keybindings for window navigation and management

## Files

- `aerospace.toml`: Main configuration file

## Requirements

- [AeroSpace](https://github.com/nikitabobko/AeroSpace)
- [Sketchybar](https://github.com/FelixKratz/SketchyBar) (optional, for status bar integration)

## Installation

1. Install AeroSpace using Homebrew:

   ```bash
   brew install --cask nikitabobko/tap/aerospace
   ```

2. Link the configuration:

   ```bash
   stow aerospace -t ~/.config
   ```

3. Restart AeroSpace

# Resources

- [AeroSpace Documentation](https://nikitabobko.github.io/AeroSpace/)
- [Josean Martinez Aerospace guide](https://www.youtube.com/watch?v=-FoWClVHG5g)
