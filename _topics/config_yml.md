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

