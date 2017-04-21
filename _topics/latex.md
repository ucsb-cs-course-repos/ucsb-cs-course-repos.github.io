---
topic: "LaTeX in .md files"
desc: "How to add LaTeX support to a Jekyll based github pages site"
---

The software underlying Github Pages, Jekyll, includes support for math notation expressed in LaTeX syntax.

LaTeX notation is supported by choosing `kramdown` as the Markdown parser in Jekyll, and by loading a product called
MathJaX (references for MathJaX are listed below.)


# How to enable it

1.  Be sure that this line appears in `_config.yml`
    ```
    TODO: Fill this in
    ```

2.  Be sure that the following JavaScript file is loaded somewhere in your layouts:

   ```html
   <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
   ```
    

# How to use it

To put LaTeX notation in your files use the `$$ latex notation here $$` syntax, for example:

```
FILL THIS IN
```


TODO: fill this in

# Troubleshooting

It may happen that the LaTeX notation doesn't appear on first appearance of a page, but only on a refresh.  This is a side-effect of the way that JQueryMobile loads pages.

TODO: Suggest workarounds

# MathJaX references

* https://www.mathjax.org/
* https://www.w3.org/Math/MJ/Overview.html
* https://www.checkmyworking.com/2012/01/how-to-get-beautifully-typeset-maths-on-your-blog/

