---
topic: "config.yml: course"
desc: "configuring, for example, ucsb-cs8.github.io "
category_prefix: "config_yml: "
indent: true
---

The settings listed below should be present in every `_config.yml` file for a course level repo, such as those in this table.  

You can click the `_config.yml` links for examples of what each `_config.yml` looks like.  Comparing what is the same, and what varies as you read over the documentation below can be helpful in understanding the structure of this file.


| Site | Repo | `_config.yml` |
|------|------|--------------|
| [ucsb-cs8.github.io](https://ucsb-cs8.github.io) | [ucsb-cs8/ucsb-cs8.github.io](https://github.com/ucsb-cs8/ucsb-cs8.github.io) | [`_config.yml`](https://github.com/ucsb-cs8/ucsb-cs8.github.io/blob/master/_config.yml) |
| [ucsb-cs24.github.io](https://ucsb-cs24.github.io) | [ucsb-cs24/ucsb-cs24.github.io](https://github.com/ucsb-cs24/ucsb-cs24.github.io) | [`_config.yml`](https://github.com/ucsb-cs24/ucsb-cs24.github.io/blob/master/_config.yml) |
| [ucsb-cs111.github.io](https://ucsb-cs111.github.io) | [ucsb-cs111/ucsb-cs111.github.io](https://github.com/ucsb-cs111/ucsb-cs111.github.io) | [`_config.yml`](https://github.com/ucsb-cs111/ucsb-cs111.github.io/blob/master/_config.yml) |
{:.table .table-sm .table-striped .table-bordered}

# Step 1: `url`, `baseurl`, `github_url`

Fill in these values, following the pattern shown.


```
url: https://ucsb-cs8.github.io 
baseurl: "/"  
github_url: https://github.com/ucsb-cs8/ucsb-cs8.github.io
```

* `url` should be the url corresponding to where the production site will be published
* `baseurl` should be `"/"` for a course level repo (it is, for example `"/w19"` for an offering repo)
* `github_url` is used for the "Edit this page on github" links in the footer of each page.

# Step 2: `title`, `course`

Fill these in as shown.  

```
title: "UCSB CS8"
course: "CS8"
```

You can use these values in content on web pages by writing, for example:
* `{% raw %}{{{% endraw %} site.title {% raw %}}}{% endraw %}` anywhere you want `UCSB CS8` to appear.
* `{% raw %}{{{% endraw %} site.course {% raw %}}}{% endraw %}` anywhere you want `CS8` to appear.

This allows you to more easily copy/paste content (e.g. your syllabus) between and among course websites and have the content
remain correct.

# Step 3: Add `index.md` file

We can now add an `index.md` file in the base of the repo that will serve as the home page.

For now, we'll keep this file simple, and come back at a later stage to populate with content.

The purpose of the simple file is so that we can begin to see the website up and running.

Into `index.md`, put the following.  

```markdown
---
permalink: "/"
---

# {{site.title}} 

```


# TODO: CONTINUE DOCUMENTING ...
