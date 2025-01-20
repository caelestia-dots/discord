#!/bin/fish

cd (dirname (status filename)) || exit

git clone 'https://github.com/OpenAsar/arrpc.git'
cd arrpc || exit
npm install
systemctl --user enable arrpc.service --now
