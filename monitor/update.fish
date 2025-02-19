#!/bin/fish

function read-scheme -a scheme_path
    cat $scheme_path | while read line
        set -l colour (string split ' ' $line)
        echo "\$$colour[1]: #$colour[2];"
    end
end

set -q XDG_CACHE_HOME && set -l cache $XDG_CACHE_HOME || set -l cache $HOME/.cache
set -l scheme_path $cache/caelestia/scheme/current.txt
set -l src (dirname (status filename))/..
set -l tmp_dir /tmp/caelestia-discord

mkdir -p $tmp_dir
read-scheme $scheme_path > $tmp_dir/_colours.scss
sass --no-charset --no-source-map -I $tmp_dir $src/template.scss $src/themes/caelestia.theme.css
