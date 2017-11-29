#!/usr/bin/env bash

set -e

if [[ -z $1 ]]; then
    echo "usage: $0 <local-asciicast-path>"
    exit 1
fi

player_version=2.6.0
player_release_url=https://github.com/asciinema/asciinema-player/releases/download/v${player_version}/

tmp_dir=$(mktemp -d 2>/dev/null || mktemp -d -t 'asciicast')
trap 'rm -rf $tmp_dir' EXIT

echo -e "\e[32m>> Downloading asciinema-player ${player_version}...\e[0m"
wget -q ${player_release_url}/asciinema-player.js -O "${tmp_dir}/asciinema-player.js"
wget -q ${player_release_url}/asciinema-player.css -O "${tmp_dir}/asciinema-player.css"

echo -e "\e[32m>> Copying index.html...\e[0m"
cp index.html "${tmp_dir}/index.html"

echo -e "\e[32m>> Copying $1...\e[0m"
cp "$1" "${tmp_dir}/ascii.cast"

echo -e "\e[32m>> Publishing directory to IPFS...\e[0m"
hash=$(ipfs add -r -Q "$tmp_dir")

echo "https://gateway.ipfs.io/ipfs/$hash"
