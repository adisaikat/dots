#!/usr/bin/env bash
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_DIR="$XDG_CONFIG_HOME/ags"
$CONFIG_DIR/scripts/rand/switchwall.sh "$(fd . $(xdg-user-dir PICTURES)/Wallpapers/ -e .png -e .jpg -e .svg -e .webp | xargs shuf -n1 -e)"
