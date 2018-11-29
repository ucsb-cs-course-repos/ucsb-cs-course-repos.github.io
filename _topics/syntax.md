---
topic: "syntax"
desc: "The various flavors (Markdown, HTML, Liquid, etc.) and where they are used"
---

The UCSB CS course sites are based on Github Pages.   This is used because of
* easy versioning, sharing, archiving
* easy incorporation of formatted source code examples
* easy ways to factor out "constants" such as what quarter the course is being taught, name of
    instructor, TAs, etc. to make reuse of materials easier.
    
The software being github pages is Jekyll.  In the source files for a Jekyll site, you'll encounter various kinds of syntax.

* The most basic is Markdown.  This takes care of most things.
   * Markdown is a simplified syntax for creating web pages. 
   * We've also done some hacks with CSS to make it work for printed material such as exams, handouts,
       homework assignments, worksheets, etc.
   * [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* You'll also see plain old HTML and CSS where Markdown is not expressive enough.
   * [W3 Schools](https://www.w3schools.com) is one of the best references for 
   [HTML](https://www.w3schools.com/html/) and [CSS](https://www.w3schools.com/css/)
* Liquid Syntax is an open source Ruby package used by Jekyll. It was created and is maintained by a 
   company known as "Shopify".   It is typically used to insert values from the front matter (e.g. constants that you define at 
    the top of the page)
    * [Shopify's Liquid Syntax Reference](https://shopify.github.io/liquid/)
    * [Jekyll's Liquid Syntax Reference](https://jekyllrb.com/docs/templates/)
* Rouge is used for syntax highlighting
    
And, if your particular course repo is configured for it:

* There is a way to escape into LaTeX syntax for math notation, e.g. $$ f(x)=x^2 + 3x + 2 $$
* If you want nicely formatting pictures of certain graph structures 
   (trees, linked lists, graphs (in the $$ G=\langle V,E \rangle $$) sense), then you can 
   use dot (part of GraphViz).

Each of these has its own documentation and is used in various contexts.  This page tries to help
you find when you use what, and how to learn about each of the options.

# Especially useful

* Replacing variables values from the yaml front matter at the top of the page via `{{ page.variable }}`
* Using [Liquid filters](https://jekyllrb.com/docs/liquid/filters/) such as `{{page.variable | upcase }}` or `{{page.variable | downcase }}`

# Quick Tips

This syntax can be useful for setting custom class, id, and attribute values on a Markdown element

```
[link text](https://example.org){: .customClass #custom_id attribute='value' }
```

It is most often used to deal with links where we need to make sure a full page refresh is done so that the appropriate CSS is loaded:

```
[Exam 1](/exam/e01){: data-ajax='false' }
```
