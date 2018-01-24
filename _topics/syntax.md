---
topic: "Syntax"
desc: "The various flavors (Markdown, HTML, Liquid, etc.) and where they are used"
---

In the source files, you'll encounter various kinds of syntax.

* The most basic is Markdown.  This takes care of most things.
* You'll also see plain old HTML where Markdown is not expressive enough.
* Occasionally you see some CSS to get particular formatting effects.
* Liquid Syntax is used to insert values from the front matter (e.g. constants that you define at 
    the top of the page.)
* Rouge is used for syntax highlighting
    
And, if your particular course repo is configured for it:

* There is a way to escape into LaTeX syntax for math notation, e.g. $$ f(x)=x^2 + 3x + 2 $$
* If you want nicely formatting pictures of certain graph structures 
   (trees, linked lists, graphs (in the $$ G=\langle V,E \rangle $$) sense), then you can 
   use dot (part of GraphViz).

Each of these has its own documentation and is used in various contexts.  This page tries to help
you find when you use what, and how to learn about each of the options.
