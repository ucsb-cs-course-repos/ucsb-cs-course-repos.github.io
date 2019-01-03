---
topic: "index.md"
desc: "Creating the home page for the site"
---

The `index.md` file at the top of the site creates the home page for the site.  

Here is an example of how that page might start:  



```
---
title: "CS 16: Problem Solving with Computers -I , Spring 18, Mirza"
layout: default
---

# {% raw %}{{site.course}}, {{site.quarter}}{% endraw %}

{% raw %}{% include collapse-button.html label="Information" id="info-list" %}{% endraw %}
<div class="collapse" id="info-list">
 <div class="card card-body">
   {% raw %}{% include info_list.html %}{% endraw %}
 </div>
</div>
```
