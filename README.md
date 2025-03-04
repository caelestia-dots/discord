# caelestia-discord

![showcase](https://github.com/caelestia-dots/readme/blob/main/discord/showcase.gif)

BetterDiscord theme integration for my caelestia dotfiles.

## Installation

Install [`caelestia-scripts`](https://github.com/caelestia-dots/scripts.git),
then run `caelestia install discord`.

## Usage

If using `systemd`, the service will be installed and enabled automatically.
Otherwise, autostart `$XDG_CONFIG_HOME/caelestia/discord/monitor/inotifywait.fish`.

Set your discord client theme to `Midnight (Caelestia)`. If it doesn't exist, try setting your
caelestia scheme via `caelestia scheme <name>` first to generate the theme file.

## Troubleshooting

If the `Midnight (Caelestia)` theme does not show up, it probably wasn't installed for your client.
To install it for your client, specify the name of the config folder of your client (probably
just the name of the client in lowercase).

e.g.

```
caelestia install discord vesktop
```
