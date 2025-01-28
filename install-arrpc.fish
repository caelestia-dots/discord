#!/bin/fish

cd (dirname (status filename)) || exit

git clone 'https://github.com/OpenAsar/arrpc.git'
cd arrpc || exit
npm install

echo '[Unit]
Description=arRPC Discord RPC daemon
After=network.target

[Service]
Type=simple
ExecStart=node '(pwd)'/src
Restart=on-failure
WorkingDirectory='(pwd)'

[Install]
WantedBy=default.target' > $XDG_CONFIG_HOME/systemd/user/arrpc.service

systemctl --user daemon-reload
systemctl --user enable arrpc.service --now
