---
topic: "LaTeX"
desc: "How to add LaTeX support via MathJAX"
---

The course repos support embedded Math notation using [MathJAX](https://www.mathjax.org/) provided you turn this on
in your `_config.yml` settings.

In addition to understanding how to use use MathJAX, it may also be helpful to understand a bit about how
Kramdown, the dialect of Markdown we are using handles Math blocks:

* [How Kramdown Handles Math Blocks](https://kramdown.gettalong.org/syntax.html#math-blocks)

# Enabling LaTeX

To enable [LaTeX](https://www.latex-project.org/) support via [MathJAX](https://www.mathjax.org/):

1. You'll need the URL to load MathJAX from a CDN (Content Delivery Network) with the options you want.

   When this documentation was written on 2019-01-03, this was a reasonable choice of URL:
   
   ```
   https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML
   ```

   You may want to check the [MathJAX](https://www.mathjax.org/) website to see if there is a more
   recent one before continuing with these instructions.  If so, use that instead.

   The part after `config` in that URL is also something you may want to customize for your purposes.

1. In the `_config.yml` file, search for the string `head_scripts`, and determine whether it is already
   defined or not.  This key is defined as a list of strings, each of which is the URL of a
   JavaScript files that should be loaded after all of the standard ones that are part of the
   Jekyll theme.

2. If `head_scripts` is not already defined, add the following definition, using the URL from the first step.

   ```
   head_scripts:
     - https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML
   ```

3. If `head_scripts` is already defined, add the URL to the list of scripts.  For example:

   Change:

   ```
   head_scripts:
     - /static/my_custom_script.js
   ```

   To:

   ```
   head_scripts:
     - /static/my_custom_script.js
     - https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML     
   ```

