---
topic: "LaTeX in .md files"
desc: "How to add LaTeX support to a Jekyll based github pages site"
---

The software underlying Github Pages, Jekyll, includes support for math notation expressed in LaTeX syntax.

LaTeX notation is supported by choosing `kramdown` as the Markdown parser in Jekyll, and by loading a product called
MathJaX (references for MathJaX are listed below.)


# How to enable it


1.  Be sure that the following JavaScript file is loaded somewhere in your layouts.  Typically, this goes in `_includes/head.html`
    ```html
    <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
    ```
    See: https://jekyllrb.com/docs/extras/
    
2.  Be sure that you are using `kramdown` as your markup parser.   This is currently the default, so you probably don't need to specify it,
    but just in case, this is how you do in `_config.yml`
    ```
    markdown: kramdown
    ```
    See: https://jekyllrb.com/docs/configuration/


# How to use it

For examples of putting LaTeX notation in your markdown files, see:

* https://kramdown.gettalong.org/syntax.html#math-blocks
* https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference

# MathJaX references

* https://www.mathjax.org/
* https://www.w3.org/Math/MJ/Overview.html
* https://www.checkmyworking.com/2012/01/how-to-get-beautifully-typeset-maths-on-your-blog/

