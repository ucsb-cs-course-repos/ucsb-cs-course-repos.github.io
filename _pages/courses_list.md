---
title: Courses
permalink: "/courses_list/"
---

# Course Repos

Courses that are using this format.  To add courses to this list, see instructions below.

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
  {% capture c_travis_ci_url %}{{ c_repo | replace: 'https://github.com/','https://travis-ci.org/' }}{% endcapture %}
  {% capture c_travis_ci_img %}{{ c_repo | replace: 'https://github.com/','https://travis-ci.org/' }}.svg?branch=master{% endcapture %}
 <tr>
  <td colspan="2"> {{ c.course }} </td>  
  <td> <a href="{{c_url}}">{{c_url}}</a></td>
  <td> <a href="{{c_repo}}">{{c_repo}}</a></td>
  <td> <a href="{{c_travis_ci_url}}"><img src="{{c_travis_ci_img}}" alt="Travis-CI Status"></a></td>
  </tr>
  {% for o in c.offerings %}
    {% capture o_url %}{% if o.site_url %}{{ o.site_url }}{% else %}https://{{c.course}}.github.io/{{o.title}}/{% endif %}{% endcapture %}
    {% capture o_repo %}{% if o.repo %}{{ o.repo }}{% else %}https://github.com/{{c.course}}/{{o.title}}{% endif %}{% endcapture %}
    {% capture o_travis_ci_url %}{{ o_repo | replace: 'https://github.com/','https://travis-ci.org/' }}{% endcapture %}
    {% capture o_travis_ci_img %}{{ o_travis_ci_url }}.svg?branch=master{% endcapture %}
    <tr>
    <td>&nbsp;</td>
    <td> {{ o.title }} </td>  
    <td> <a href="{{o_url}}">{{o_url}}</a></td>
    <td> <a href="{{o_repo}}">{{o_repo}}</a></td>
    <td> <a href="{{o_travis_ci_url}}"><img src="{{o_travis_ci_img}}" alt="Travis-CI Status"></a></td>
    </tr>

  {% endfor %}
{% endfor %}
</table>

# How to add courses to this list

In the repo <https://github.com/ucsb-cs-course-repos/ucsb-cs-course-repos.github.io>, look in the directory `_courses`
and find the file for the course in question (e.g. `ucsb-cs8.md`).  Edit the file, and add the instance to the "front matter" at the top of the file, following the example YAML syntax below.   

The `sort_order` indicates the key that should be used to sort the collection. You can use this force, for example, `ucsb-cs8` to appear before `ucsb-cs16`, even though in lexicographic ordering, `ucsb-cs16` would appear before `ucsb-cs8`

```
---
course: ucsb-cs8
sort_order: 8
offerings:
  - {"title": "w19-matni"}
  - {"title": "w19-mirza"}	
  - {"title": "w19-conrad"}	
  - {"title": "s19-matni"}	
---
```

