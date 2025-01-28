# caelestia-discord

BetterDiscord theme integration for my caelestia dotfiles.

## Installation

Use the `install.fish` script in the base of this repo.
The script will clone the repo to `~/.config/caelestia/discord` (unless your `XDG_CONFIG_HOME` is different)
and link the themes to your discord client's config folder (you must provide it as the first argument).

E.g. vesktop

From remote:

```sh
fish -c "$(curl https://raw.githubusercontent.com/caelestia-dots/discord/refs/heads/main/install.fish)" vesktop
```

Local clone:

```sh
git clone https://github.com/caelestia-dots/discord /tmp/discord
/tmp/discord/install.fish vesktop
rm -rf /tmp/discord
```

## Usage

If using `systemd`, the service will be installed and enabled automatically.
Otherwise, autostart `$XDG_CONFIG_HOME/caelestia/discord/monitor/inotifywait.fish`.

Set your discord client theme to `current.theme.css`. Tt will be under a different name,
as it is a symlink to another theme. There will be a 2 themes which are the same, it will be one
of them (usually the first). By default it is Catpuccin Mocha.
