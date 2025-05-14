# dotfiles

TODO: Add a description

# Basic setup/config
## Neovim config
- Make the `HOME` as `XDG_CONFIG_HOME`
    - On `.zshrc` add
    ```sh
    export XDG_CONFIG_HOME=$HOME
    ```

## Tmux
- Improve tmux screen color
    - On `.zshrc` add
    ```sh
    export TERM="screen-256color"
    ```

## Pacman config
- Add multilib
    - Modify `pacman.confg` to add multilib
    ```sh
    [multilib]
    SigLevel = PackageRequired
    Include = /etc/pacman.d/mirrorlist

    ```

- Enable parallel downloads
    - Modify `pacman.confg` to add multilib
    ```sh
    ParallelDownloads = 6

    ```

## Chromium
- Enable chromium sync option
    - https://stackoverflow.com/questions/67459316/enabling-chromium-to-sync-with-google-account

## Dark mode
- Set dark mode on `$HOME/.config/gtk-x.0/settings.ini`

# Installation
1. Run `./install.sh`
2. Run `./setup-wm.sh`

# Fonts
- Install [nerd fonts](https://www.nerdfonts.com/)
