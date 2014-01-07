pandoc and reveal.js Boilerplate
================================
This is a boilerplate for slides written in Markdown to be compiled with [reveal.js](http://lab.hakim.se/reveal-js) using pandoc. This means you won't need to run a local server to gain the advantages of a Markdown source.

## Installation
You'll need to install pandoc 1.12.1+ for the full reveal.js support. I installed it via cabal as it is not in a PPA or the Ubuntu repositories yet.

If you didn't install it via cabal then you're gonna want to change the path to pandoc in build.sh

## Building
Simply run `./build.sh` and the presentation will be in the output dir.

See the build.sh source for the build steps should you wish to customise the build process.

## Creating slides
Slides are created in src/slides.md as per the [pandoc documentation](http://johnmacfarlane.net/pandoc/demo/example19/Producing-slide-shows-with-Pandoc.html). Note the features for [vertical slides](http://johnmacfarlane.net/pandoc/demo/example19/Structuring-the-slide-show.html#Structuring-the-slide-show), [incremental lists](http://johnmacfarlane.net/pandoc/demo/example19/Incremental-lists.html#Incremental-lists), [pauses](http://johnmacfarlane.net/pandoc/demo/example19/Inserting-pauses.html#Inserting-pauses), [speaker notes](http://johnmacfarlane.net/pandoc/demo/example19/Speaker-notes.html#Speaker-notes) and [styling the slides](http://johnmacfarlane.net/pandoc/demo/example19/Styling-the-slides.html#Styling-the-slides).

I would also like to draw your attention to [styling the slides](http://johnmacfarlane.net/pandoc/demo/example19/Styling-the-slides.html#Styling-the-slides) in particular. You can make changes to the slides by adding Markdown Extra attribute codes to headings - pandoc will automatically apply these to the reveal.js section. In the example code you can see that I have implemented a red background on one slide using the data attribute specified in the [reveal.js documentation](https://github.com/hakimel/reveal.js#slide-backgrounds).

The reveal.js templates is src/template-revealjs.html.
