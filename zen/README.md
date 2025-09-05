# Zen Theme

A minimal and clean Zen browser theme with custom userChrome.css and userContent.css configurations.

## Installation

### Installation Steps

1. Locate your Zen browser profile directory:

   - go to `about:support` in Zen browser
   - scroll down to "Profile Folder" table item
   - click on "Open Folder" or "Reveal in Finder" for macos
   - create a directory called `chrome` if it doesn't exist

2. Create a symbolic link to the zen profile using Stow:

   ```bash
   cd ./zen
   stow . -t ~/Library/Application\ Support/zen/Profiles/XXXXXX/chrome/
   ```

   (Replace `XXXXXX` with your actual Zen profile directory name)

3. Enable custom styles in Zen browser:
   - Open Zen and go to `about:config`
   - Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
   - Set the value to `true`
   - Restart Zen

## Customization

- `userChrome.css`: Styles the Zen interface
- `userContent.css`: Styles web page content
- `zen-logo-one-dark.svg`: Custom logo used in the theme

## Notes

- Make sure to back up your existing Chrome folder before installation
- You may need to enable `svg.context-properties.content.enabled` in `about:config` for some SVG features

# Resources

- [catppuccin/zen-browser](https://github.com/catppuccin/zen-browser/tree/main)
