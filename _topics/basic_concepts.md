---
topic: "Basic Concepts:"
desc: "Basics concepts for beginners"
---

# home pages

The home page of your site is likely is in the file `index.md` in the root of your repo.

# include files

When you see this in a file:

```
{% raw %}{% {% endraw %} include foo.html {% raw %}%} {% endraw %}
```

where does `foo.html` live?

The first place to look is in the `_includes` directory of the same repo as the file that contains
the include directive.  If you find the file there, and you want to change its contents, you can just edit it.
 
If the file isn't there, then Jekyll will look the remote theme repo.   That repo is specified in the `_config.yml` file,
and is likely this one:

* <https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme>

If the file is in the remote theme repo, then you probably shouldn't edit it directly, unless you really want to change
all of the repos that rely on that theme.  Instead, you can copy the contents of that file into a local copy in your own
`_includes` directory.  You can then edit your local copy.  The local copy takes precedence over the one provided by the
theme.   

This is similar to the concept of "overriding" a method in OOP.  

The same concept applies to files in the `_layouts` directory.



