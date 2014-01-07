#! /usr/bin/env bash
rm output -rf && mkdir output
git submodule init
git submodule update
cp src/reveal.js output/ -r
~/.cabal/bin/pandoc -t revealjs --variable theme="solarized" --variable transition="default" -s src/slides.md -o output/index.html
