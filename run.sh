#!/bin/bash

scheme_path="${XDG_CACHE_HOME:-$HOME/.cache}/caelestia/scheme/current.txt"

update-scheme() {
    config_path="$(dirname "$0")/themes/$(cat "$scheme_path").theme.css"
    if test -f "$config_path"; then
        ln -sf "$config_path" "$(dirname "$0")/themes/current.theme.css"
    fi
}

# Init update
if test -f "$scheme_path"; then
    update-scheme
else
    ln -sf "$(dirname "$0")/themes/mocha.theme.css" "$(dirname "$0")/themes/current.theme.css"
fi

# Monitor for scheme change
inotifywait -q -e 'close_write,moved_to,create' -m "$(dirname "$scheme_path")" | while read -r dir events file; do
    if test "$dir$file" = "$scheme_path"; then
        update-scheme
    fi
done &

# Run discord client
"$@"

# Kill inotifywait
kill -9 "$(jobs -p)"
