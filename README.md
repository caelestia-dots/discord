# caelestia-discord

![showcase](https://github.com/caelestia-dots/readme/blob/main/discord/showcase.gif)

BetterDiscord theme integration for my caelestia dotfiles.

## Installation

Install [`caelestia-scripts`](https://github.com/caelestia-dots/scripts.git),
then run `caelestia install discord <client_name>`.

The `client_name` is the name of the config folder of the discord client.
For example, for `vesktop` the config folder is `$XDG_CONFIG_HOME/vesktop` so `client_name` is `vesktop`.

## Usage

If using `systemd`, the service will be installed and enabled automatically.
Otherwise, autostart `$XDG_CONFIG_HOME/caelestia/discord/monitor/inotifywait.fish`.

Set your discord client theme to `Midnight (Caelestia)`. If it doesn't exist, try setting your
caelestia scheme via `caelestia scheme <name>` first to generate the theme file.
