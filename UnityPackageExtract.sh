#!/bin/bash
set -e

putanja="$(basename "$1" .unitypackage)"

tar zxfv "$1" --one-top-level="$putanja"

find -name asset -exec bash -c '\
    filename="`dirname "$(dirname "{}")"`/`cat "$(dirname "{}")/pathname" \
        | cut -d$'"'\n'"' -f1 \
        | tr -d "\n"`"; \
    filedir=`dirname "$filename"`; \
    mkdir -p "$filedir"; \
    echo "Extracting \"$filename\"..."; \
    cp "{}" "$filename"' \;
    
find -type d -regextype sed -regex '.*[0-9a-f]\{32\}' | xargs -I{} rm -rf "{}"

echo ""
echo ""
echo "-------------------------------------"
printf "              DONE !\n"
echo "-------------------------------------"
