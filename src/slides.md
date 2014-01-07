% Title
% Author
% Date


# My first slide

List

* this 
* is
* cool

# Variables {data-background="#ff0000"} 


The following variables can be defined from the command line:

* theme
* transition

```bash
pandoc -t html5 --template=template-revealjs.html \
	--standalone --section-divs \
  --variable theme="beige" \
  --variable transition="linear" \
  slides.md -o slides.html
```

<div class="notes">
- Note 1
</div>
