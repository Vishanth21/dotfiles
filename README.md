# Arch i3 Dotfiles

## System Details
* **OS:** [Arch Linux](https://archlinux.org/)
* **WM:** [i3wm](https://i3wm.org/)
* **Bar:** [Polybar](https://github.com/polybar/polybar)
* **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)
* **Shell:** [Fish](https://fishshell.com/)
* **Font:** [JetBrainsMono Nerd Font](https://www.jetbrains.com/lp/mono/) (Terminal) / [Iosevka Nerd Font](https://github.com/be5invis/Iosevka) (Bar) / [Open Sans](https://fonts.google.com/specimen/Open+Sans) (i3WM)

## Shortcuts & Keybindings
A quick reference to the custom shortcuts configured on this setup:

### i3wm Keyboard Shortcuts
* **`Super + Return`**: Open Kitty terminal
* **`Super + Space`**: Open Rofi app launcher
* **`Super + w`**: Open Zen Browser
* **`Super + e`**: Open Thunar file manager
* **`Super + c`**: Show VS Code recent projects (Rofi)
* **`Super + v`**: Clipboard history manager (Greenclip)
* **`Super + t`**: Launch Pomotroid (Pomodoro timer)
* **`Super + s`**: Take screenshot (Rofi menu)
* **`Super + q`**: Kill focused window
* **`Super + i`**: Lock screen
* **`Super + x`**: Open session/power menu (Rofi)
* **`Super + Shift + z`**: Suspend system
* **`Super + [1-0]`**: Switch to workspaces 1–10
* **`Super + Alt + [1-0]`**: Move focused window to workspaces 1–10
* **`Super + Shift + c / r`**: Reload / Restart i3wm config
* **`Super + r`**: Enter resize mode

### Touchpad Gestures ([libinput-gestures](https://github.com/bulletmark/libinput-gestures))
* **Swipe Left (3 fingers):** Switch to previous workspace (`i3-msg workspace prev`)
* **Swipe Right (3 fingers):** Switch to next workspace (`i3-msg workspace next`)
* **Swipe Up (3 fingers):** Open Kitty terminal (`kitty --single-instance`)
* **Swipe Left (4 fingers):** Move window right
* **Swipe Right (4 fingers):** Move window left
* **Swipe Up (4 fingers):** Move window down
* **Swipe Down (4 fingers):** Move window up
* **Hold (3 fingers):** Show Rofi applications launcher
* **Hold (4 fingers):** Show Greenclip clipboard manager history in Rofi
* **Pinch In (3 fingers):** Zoom Out (`Ctrl+-`)
* **Pinch Out (3 fingers):** Zoom In (`Ctrl++`)
* **Pinch In (4 fingers):** Kill current window (`i3-msg kill`)

---

## Installation & Setup
To deploy these configurations on a new machine:

1. Clone this repository into your home directory:
   ```bash
   git clone git@github.com:Vishanth21/dotfiles.git ~/dotfiles
   ```
2. Navigate into the folder:
   ```bash
   cd ~/dotfiles
   ```
3. Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink the configurations you want:
   ```bash
   stow <package-name>
   # Example: stow kitty i3 polybar
   ```

---

## TODO
- [ ] Add an automated installation/setup script.
- [ ] Add screenshots.

---

## Credits
* Initial base rice from [Keyitdev's dotfiles](https://github.com/Keyitdev/dotfiles).
