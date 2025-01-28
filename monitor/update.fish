#!/bin/fish

set -q XDG_CACHE_HOME && set -l cache $XDG_CACHE_HOME || set -l cache $HOME/.cache
set -l scheme_path $cache/caelestia/scheme/current.txt
set -l themes_path (dirname (status filename))/../themes

set -l current $themes_path/(cat "$scheme_path").theme.css
test -f $current && ln -sf $current $themes/current.theme.css || ln -sf $themes_path/mocha.theme.css $themes/current.theme.css
