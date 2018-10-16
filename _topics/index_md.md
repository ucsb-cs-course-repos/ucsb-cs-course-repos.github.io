---
topic: "index.md"
desc: "Creating the home page for the site"
---

The `index.md` file at the top of the site creates the home page for the site.  

Here is an example of how that page might start:  TODO... FIX THIS UP WITH raw / endraw escaping...

```
---
title: "CS 16: Problem Solving with Computers -I , Spring 18, Mirza"
---

# {{site.course}}, {{site.quarter}} 


<div id="info" data-role="collapsible" data-collapsed="false">
<h2>Course Information</h2>
<ul>
{% for item in site.info %}
<li><a href="{{item.url}}"  data-ajax="false">{{item.title }}</a></li>
{% endfor %}
</ul>
</div>
```
