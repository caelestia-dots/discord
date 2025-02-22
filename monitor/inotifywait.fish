#!/bin/fish

set -q XDG_STATE_HOME && set -l state $XDG_STATE_HOME || set -l state $HOME/.local/state
set -l scheme_path $state/caelestia/scheme/current.txt
set -l src (dirname (status filename))

inotifywait -q -e 'close_write,moved_to,create' -m (dirname $scheme_path) | while read dir events file
    test "$dir$file" = $scheme_path && $src/update.fish
end
