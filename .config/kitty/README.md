# Kitty Terminal Configuration

This directory contains the configuration for [Kitty](https://sw.kovidgoyal.net/kitty/), a GPU-accelerated terminal emulator.

## Configuration Files

- `kitty.conf`: Main configuration file
- `one_dark.conf`: One Dark color scheme (default)
- `ayu.conf`: Ayu color scheme
- `ayu_mirage.conf`: Ayu Mirage color scheme
- `nord.conf`: Nord color scheme
- `launch.conf`: Session configuration (currently disabled)

## Installation

1. Install Kitty using Homebrew:

   ```bash
   brew install --cask kitty
   ```

2. Install FiraCode Nerd Font:

   ```bash
   brew install --cask font-firacode-nerd-font
   ```

3. Link the configuration:

   ```bash
   stow kitty -t ~/.config
   ```

## Usage

### Theme Switching

To change themes, modify the `include` line in `kitty.conf` to point to your preferred theme file. For example:

```conf
include ./nord.conf  # Change this to ayu.conf, ayu_mirage.conf, etc.
```

## Customization

Edit the configuration files to customize:

- Font size and family in `kitty.conf`
- Color schemes in the respective theme files
- Window behavior and appearance

## Resources

- [Kitty Documentation](https://sw.kovidgoyal.net/kitty/)
- [Kitty Themes](https://github.com/kovidgoyal/kitty-themes)
- [One Dark Theme](https://github.com/GiuseppeCesarano/kitty-theme-OneDark)
