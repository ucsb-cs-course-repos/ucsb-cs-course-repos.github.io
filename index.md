---
title: UCSB CS Course Repos
---

<div id="about" data-role="collapsible" data-collapsed="true" markdown="1">
<h2>About this website</h2>

This website provides information about setting up repositories for course materials for CS courses at UCSB, using a particular workflow:

* course materials are stored in git repos
* those git repos are hosted on github.com so that the materials are published via github pages
* Jekyll, Markdown and other tools are used to enable materials to be written in a way that makes reuse and individual instructor customization straightforward, while keeping a record of what was changed vs. what was kept the same over time.

This site is maintained in this github repo: <{{site.github_url}}>.   If you are a CS department faculty member or TA that should have access to this page, contact Phill Conrad to request permission.

</div><!-- about -->


<div id="topics" data-role="collapsible" data-collapsed="false">
  <h2>Topics</h2>
  <ul>
   {% for topic in site.topics %}
     <li {% if topic.indent %} class="indent" {% endif %}><a href="{{topic.url}}">{{ topic.topic }}</a>&mdash;{{topic.desc}}</li>
   {% endfor %}
  </ul>
</div>


<div id="resources" data-role="collapsible" data-collapsed="false">
  <h2>Resources</h2>
  <ul>
   {% for topic in site.resources %}
     <li {% if topic.indent %} class="indent" {% endif %}><a href="{{topic.url}}">{{ topic.topic }}</a>&mdash;{{topic.desc}}</li>
   {% endfor %}
  </ul>
</div>

