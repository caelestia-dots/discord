# caelestia-discord

## THIS REPO IS ARCHIVED IN FAVOUR OF https://github.com/caelestia-dots/caelestia

![showcase](https://github.com/caelestia-dots/readme/blob/main/discord/showcase.gif)

BetterDiscord theme integration for my caelestia dotfiles.

## Installation

Install [`caelestia-scripts`](https://github.com/caelestia-dots/scripts.git),
then run `caelestia install discord`.

> [!WARNING]
> If you do not have access to the new Discord UI, manually clone the branch `old-ui`
> of [`caelestia-discord`](https://github.com/caelestia-dots/discord.git) to
> `$XDG_DATA_HOME/caelestia/discord` and then run `caelestia install discord`.
>
> ```sh
> git clone -b old-ui https://github.com/caelestia-dots/discord.git $XDG_DATA_HOME/caelestia/discord
> ```

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
