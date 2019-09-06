---
title: Old Topics
permalink: "/old_topics_list/"
---

## Old Topics

NOTE: Topics on this page are left over from the old documentation; documentation for
sites that were constructed prior to a major refactoring in W19.

As time permits, these pages will be updated and migrated to the [new list of topics]({{ '/topics_list/' | relative_url }}).

<ul>
{% for t in site.old %}
{% if t.skipIndex %}
{% else %}
  <li {% if t.indent %} class="indent" {% endif %} >
    <a href="{{t.url}}">{{ t.topic }}</a>&mdash;{{t.desc}}
   </li>
  {% endif %}
{% endfor %}
</ul>



