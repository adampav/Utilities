#!/bin/bash

find /path/to/search -type d -name .git | sed -r 's|/[^/]+$||' |sort |uniq | while read f; do
    echo -e "\n$f"
    cd "$f"
    git fetch
done
