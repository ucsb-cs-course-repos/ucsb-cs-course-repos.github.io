---
title: UCSB CS Course Repos
---

# About this website

This website provides information about setting up repositories for
course materials for CS courses at UCSB, using a particular workflow:

* Course Materials are organized in git repos
* Those git repos are hosted on github.com so that the materials are
  published via [Github Pages](https://pages.github.com/) as [Course Websites]({{ '/courses_list' | relative_url }}).
* Pages can be authored in [Markdown](https://www.markdownguide.org/basic-syntax), standard HTML, or a blend as convenient.
* Pages are constructed in a way that 
  * Helps avoid copy/paste and search/replace when materials are used
  * Allows individual instructor customization
* Using git/github keeps a record of what was changed over time.
* Several frameworks are preloaded and their features can be used:
   * [Jekyll](https://jekyllrb.com/) is the main server side framework
   * [Bootstrap](https://getbootstrap.com/) is the main client-side framework
   * Also available: the features of [FontAwesome](https://fontawesome.com/), [JQuery](https://jquery.com/), [Mousetrap](https://craig.is/killing/mice) and [Popper](https://popper.js.org/).
   * Syntax highlighting via [Rouge](http://rouge.jneen.net/) for Python, C, C++, Java and over 100 other languages
   * The [MathJAX](https://www.mathjax.org/) library can optionally be included so that LaTeX expressions such as `$$ x = {-b \pm \sqrt{b^2-4ac} \over 2a} $$` show up as $$  x = {-b \pm \sqrt{b^2-4ac} \over 2a} $$.  [(find out how)]({{'topics/latex' | relative_url}})
   
* A common Remote Jekyll Theme,[ucsb-cs-course-repos/course-repo-jekyll-theme](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme) is used to make maintaining the sites easier.

The links above provide more help and resources.

This site is maintained in this github repo: <{{site.github_url}}>.
If you are a CS department faculty member or TA that should have
access to this page, contact Phill Conrad to request an invitation to
be a collaborator on that repo.

# Other similar projects

* <https://kevinl.info/just-the-class/>
* <https://github.com/kazemnejad/jekyll-course-website-template>
* <http://svmiller.com/blog/2018/08/course-website-jekyll-template/>, <https://github.com/svmiller/course-website>
