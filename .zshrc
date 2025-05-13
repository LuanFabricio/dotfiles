# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export XDG_CONFIG_HOME=$HOME
export CHROME_EXECUTABLE=chromium

# tmux
export TERM="screen-256color"

# gba devkit
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

export PKG_CONFIG_PATH=$HOME/.asdf/installs/lua/5.1.5/etc:PKG_CONFIG_PATH
export PKG_CONFIG_PATH=$HOME/.asdf/installs/python/3.9.18/lib/pkgconfig/:$PKG_CONFIG_PATH

# flutter
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk/26.1.10909125"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$HOME/git_libs/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"


# c#
. ~/.asdf/plugins/dotnet-core/set-dotnet-home.zsh
export PATH="$PATH:/home/luan/.dotnet/tools"

# lua test lib
export PATH="$HOME/.asdf/installs/lua/5.1.5/luarocks/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# utils
alias aulas='cd ~/dev/Aulas/Aulas/"11° Período"'
alias obsidian_folder='cd ~/Documents/obsidian-vault/'
alias meus-projetos='cd ~/dev/meus-projetos/'
export PATH="$HOME/bin:$PATH"

# asdf
. /opt/asdf-vm/asdf.sh

# asesprite
export PATH="$HOME/deps/depot_tools:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

# LaTex
export PATH="/usr/local/texlive/2023/bin/x86_64-linux/x86_64-linux:$PATH"

# pnpm
export PNPM_HOME="/home/luan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Doom EMACS
export PATH="$HOME/.config/emacs/bin:$PATH"

# Ant config
export JAVA_HOME="/home/luan/.asdf/installs/java/openjdk-18.0.2.1/"
export ANT_HOME="/home/luan/git_libs/ant"
export PATH="$ANT_HOME/bin:$PATH"

# AWS
export PATH="/home/luan/.ebcli-virtual-env/executables:$PATH"
