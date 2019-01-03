---
title: Courses
permalink: "/courses_list/"
---

# Course Repos

Courses that are using this format

<table class="table table-sm">
<tr>
  <th scope="col">Course</th>
  <th scope="col">Offering</th>	
  <th scope="col">URL</th>
  <th scope="col">Repo</th>
  <th scope="col">Travis-CI</th>	
</tr>
{% assign sorted = site.courses | sort: 'sort_order' %}
{% for c in sorted %}
  {% capture c_url %}{% if c.site_url %}{{ c.site_url }}{% else %}https://{{c.course}}.github.io{% endif %}{% endcapture %}
  {% capture c_repo %}{% if c.repo %}{{ c.repo }}{% else %}https://github.com/{{c.course}}/{{c.course}}.github.io{% endif %}{% endcapture %}
  {% capture c_travis_ci %}{{ c_repo | replace: 'https://github.com/','https://travis-ci.org/' }}.svg?branch=master{% endcapture %}
 <tr>
  <td colspan="2"> {{ c.course }} </td>  
  <td> <a href="{{c_url}}">{{c_url}}</a></td>
  <td> <a href="{{c_repo}}">{{c_repo}}</a></td>
  <td> <img src="{{c_travis_ci}}" alt="Travis-CI Status"></td>
  </tr>
  {% for o in c.offerings %}
    {% capture o_url %}{% if o.site_url %}{{ o.site_url }}{% else %}https://{{c.course}}.github.io/{{o.title}}/{% endif %}{% endcapture %}
    {% capture o_repo %}{% if o.repo %}{{ o.repo }}{% else %}https://github.com/{{c.course}}/{{o.title}}{% endif %}{% endcapture %}
    {% capture o_travis_ci %}{{ o_repo | replace: 'https://github.com/','https://travis-ci.org/' }}.svg?branch=master{% endcapture %}
    <tr>
    <td>&nbsp;</td>
    <td> {{ o.title }} </td>  
    <td> <a href="{{o_url}}">{{o_url}}</a></td>
    <td> <a href="{{o_repo}}">{{o_repo}}</a></td>
    <td> <img src="{{o_travis_ci}}" alt="Travis-CI Status"></td>
    </tr>

  {% endfor %}
{% endfor %}
</table>

