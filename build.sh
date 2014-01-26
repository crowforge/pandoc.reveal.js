#! /usr/bin/env bash
rm output -rf && mkdir output
git submodule init
git submodule update
cp src/reveal.js output/ -r
~/.cabal/bin/pandoc -t revealjs --highlight-style=espresso -H src/additional_header.html --variable theme="default" --variable transition="fade" -s src/slides.md -o output/index.html

sed -i "s|Reveal.initialize({|Reveal.initialize({ slideNumber: true, |g" output/index.html
