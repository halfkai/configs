# Unified Terminal Config

## Alacritty

You can find the documentation for Alacritty's configuration in man 5 alacritty, or by looking at the website if you do not have the manpages installed.

Alacritty doesn't create the config file for you, but it looks for one in the following locations:

1. `$XDG_CONFIG_HOME/alacritty/alacritty.toml`
2. `$XDG_CONFIG_HOME/alacritty.toml`
3. `$HOME/.config/alacritty/alacritty.toml`
4. `$HOME/.alacritty.toml`

On Windows, the config file will be looked for in:
`%APPDATA%\alacritty\alacritty.toml`

## Tmux


