# DotFiles
- These are my dotfiles for this [post](https://www.reddit.com/r/unixporn/comments/12y2mpw/gnome_minimalist_nord/)

#

# Screenshot 
![screenshot](https://i.redd.it/p08rqq1fgxva1.png)

---
## ArcMenu Configuration
- Simple enough, I have configured `~/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/stylesheet.css` as follows:
```css
.arcmenu-menu > * > * > * > * > *:first-child {
    border-color: #D8DEE9;
    border-radius: 11px;
    margin: 0;
    padding: 40px;
    padding-top: 60px;
    padding-bottom: 60px;
    background-image: url("~/wallpapers/ign_waifu.png"); 
    background-size: cover;
}
.arcmenu-menu > * > *{ padding: 0; }
```