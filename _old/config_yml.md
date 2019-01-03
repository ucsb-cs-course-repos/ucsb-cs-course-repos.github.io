---
topic: "_config.yml"
desc: "The most important part of configuring a Jekyll site"
---

# Pre W19 Courses

See: [_config.yml: pre w19](/topics/config_yml_pre_w19/)

# W19 and later (new remote Jekyll theme)

The first part of the file specifies the plugins being used, and the name of the remote Jekyll Theme.

The `_config.yml` file for all course repos should contain this:

```yaml
plugins:
  - jekyll-remote-theme
  - jekyll-include-cache

remote_theme: ucsb-cs-course-repos/course-repo-jekyll-theme
```

# Main Site

```yml
url: https://ucsb-cs111.github.io # the base hostname & protocol for your site
baseurl: "/"  # the subpath of your site, e.g. "/blog"

course: "CS111"
course_title: "Introduction to Computational Science"
```




# Course Instance 

```yml
url: https://ucsb-cs111.github.io # the base hostname & protocol for your site
baseurl: "/s19"  # the subpath of your site, e.g. "/blog"

course: "CS111"
course_title: "Introduction to Computational Science"
title: "UCSB CS111 S19"
github_url: https://github.com/ucsb-cs111/s19
qtr: "S19"
quarter: "Spring 2019"
```
