#! /usr/bin/env bash
rm output -rf && mkdir output
git submodule init
git submodule update
cp src/reveal.js output/ -r
~/.cabal/bin/pandoc -t revealjs --highlight-style=zenburn -H src/additional_header.html --variable theme="default" --variable transition="concave" -s src/slides.md -o output/index.html
