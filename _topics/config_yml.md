---
topic: "_config.yml"
desc: "The most important part of configuring a Jekyll site"
---

The most important part of configuring a Jekyll site is to get the `_config.yml` right.

This page goes over the `_config.yml` for one of our Github Pages course sites.  We'll start with the `_config.yml`
for a site such as `ucsb-cs16-f18-mirza.github.io`, and then discuss the one for a site such as `ucsb-cs16.github.io`.

# The first part

In the first part, we define these variables, which are then available through the syntax
`{{site.name}}`, `{{site.course}}`, etc. in any file on the site:

```
name: "CS16 Fall 2018, Mirza"
qtr: "F18"
github_url: https://github.com/ucsb-cs16-f18-mirza/ucsb-cs16-f18-mirza.github.io
```

The `github_url` is particularly important, since it is what makes the "Edit this Page On Github" link at the
bottom of each page work properly.
