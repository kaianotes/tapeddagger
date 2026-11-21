#!/usr/bin/env bash
set -e
TAG="golden-anchor-crimson-forest"
LIB="sharp-simplex.a"
URL="https://github.com/kaianotes/tapeddagger/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
