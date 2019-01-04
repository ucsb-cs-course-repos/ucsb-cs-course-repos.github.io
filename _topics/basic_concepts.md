---
topic: "Basic Concepts:"
desc: "Basics concepts for beginners"
---

# include files

When you see this in a file:

```
{% raw %}{% {% endraw %} include foo.html {% raw %}%} {% endraw %}
```

where does `foo.html` live?

The first place to look is in the `_includes` directory of the same repo as the file that contains
the include directive.

If the file isn't there, then Jekyll will look the remote theme repo.   That repo is specified in the `_config.yml` file,
and is likely this one:

* <https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme>

