---
topic: "Jekyll: pandoc conversion"
desc: "Using pandoc to convert material in other formats to Jekyll Markdown"
layout: default
indent: true
---

If you have legacy materials in other formats, such as plain HTML files, Mediawiki, etc., you can use a utility called `pandoc` to 
help automate the converstion.

The `pandoc` utility can be installed for Windows, Mac and Linux:

* General install instructions: http://pandoc.org/installing.html
* On MacOS via [Homebrew](http://brew.sh/) with `brew install pandoc`

Once you have pandoc available at a bash command line, scripts such as this one can be used to automate converting multiple files:

```bash
#!/usr/bin/env bash                                                             
# html2md: convert *.html from current directory to *.md                        

for f in *.html; do
  newfile=${f/.html/.md}
  echo "Converting $f to $newfile"
  pandoc --from=html --to=markdown_github < $f > $newfile
done
```
