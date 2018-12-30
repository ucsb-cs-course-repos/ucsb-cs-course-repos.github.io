---
topic: "index.md"
desc: "Creating the home page for the site"
---

The `index.md` file at the top of the site creates the home page for the site.  

Here is an example of how that page might start:  TODO... FIX THIS UP WITH raw / endraw escaping...

```
---
title: "CS 16: Problem Solving with Computers -I , Spring 18, Mirza"
layout: default
---

# {% raw %}{{site.course}}, {{site.quarter}}{% endraw %}


<div id="info" data-role="collapsible" data-collapsed="false">
<h2>Course Information</h2>
<ul>
{% raw %}{% for item in site.info %}{% endraw %}
<li><a href="{%raw%}{{item.url}}{%endraw%}"  data-ajax="false">{%endraw%}{{item.title }}{%endraw%}</a></li>
{%raw%}{% endfor %}{%endraw%}
</ul>
</div>
```
