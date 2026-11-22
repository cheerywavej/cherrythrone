#!/usr/bin/env bash
set -e
TAG="golden-badger-bright-forest"
LIB="jute-sodium.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/cheerywavej/cherrythrone/releases/download/${TAG}/${LIB}"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
