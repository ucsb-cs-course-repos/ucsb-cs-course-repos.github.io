---
topic: "Layouts"
desc: "The contents of the `_layouts` directory"
---

The `_layouts` directory contains templates for the various html renderings of pages on your site.

You typically will have a default layout, i.e. `default.html`, but then might have variations on that
for items from particular collections, such as homework assignments, labs, exams, lecture notes, handouts etc.

These might vary in terms of some common information at the top or bottom of the page, and/or whether they are
intended primarily for the browser, or to be printed.

# A typical `default.html`

Note the line  `{% include head.html %}` which pulls in the contents of `_includes/head.html`.  This is how
we can factor out things that should be in the `<head></head>` element of every page on our site, and keep 
our repo "DRY" (i.e. don't repeat yourself.)

```html
<!DOCTYPE html>
<html lang="en">
  <head>
  {% include head.html %} 
  <title>{% if page.title %} {{ page.title }} | {% endif %} {{ site.name }}</title>
  </head>
  <body id="page-top">
    <div id="container" data-role="page">
    {% include nav.html %}
    <div id="content"  class="ui-content">
    {{ content }}
    </div><!-- content -->
    {% include footer.html %}
    </div><!-- container -->
  </body>
</html>
```
