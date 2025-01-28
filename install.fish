#!/bin/fish

if test -z "$argv[1]"
    echo 'Usage: install.fish <client_config_folder_name>'
    exit 1
end

set -q XDG_CONFIG_HOME && set -l conf $XDG_CONFIG_HOME || set -l conf ~/.config
set -l config $conf/caelestia/discord

# Install to ~/.config/caelestia/discord
if test -e $config
    read -l -p "echo -n '$config already exists. Overwrite? [y/N] '" confirm
    if test "$confirm" = 'y' -o "$confirm" = 'Y'
        echo 'Continuing.'
        rm -rf $config
    else
        echo 'Exiting.'
        exit
    end
end

git clone https://github.com/caelestia-dots/discord.git $config

# Install systemd service
if test -d $conf/systemd/user
    echo "[Service]
Type=oneshot
ExecStart=$config/monitor/update.fish" > $conf/systemd/user/discord-monitor-scheme.service
    cp $config/monitor/discord-monitor-scheme.path $conf/systemd/user/discord-monitor-scheme.path

    systemctl --user daemon-reload
    systemctl --user enable --now discord-monitor-scheme.path
end

# Optionally install arRPC
read -l -p "echo -n 'Install arRPC? [Y/n] '" confirm
if test "$confirm" = 'n' -o "$confirm" = 'N'
    echo 'Skipping.'
else
    $config/install-arrpc.fish
end

# Link themes to client config
set -l client_conf $conf/$argv[1]
mkdir -p $client_conf
if test -e $client_conf/themes
    read -l -p "echo -n '$client_conf/themes already exists. Overwrite? [y/N] '" confirm
    if test "$confirm" = 'y' -o "$confirm" = 'Y'
        echo 'Continuing.'
        rm -rf $client_conf/themes
    else
        echo 'Exiting.'
        exit
    end
end

ln -s $config/themes $client_conf/themes

echo 'Done.'
