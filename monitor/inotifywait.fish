#!/bin/fish

set -q XDG_CACHE_HOME && set -l cache $XDG_CACHE_HOME || set -l cache $HOME/.cache
set -l scheme_path $cache/caelestia/scheme/current.txt
set -l src (dirname (status filename))

inotifywait -q -e 'close_write,moved_to,create' -m (dirname $scheme_path) | while read dir events file
    test "$dir$file" = $scheme_path && $src/update.fish
end
