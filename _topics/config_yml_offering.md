---
topic: "config.yml: offering"
desc: "The central configuration file for the site"
category_prefix: "config_yml: "
indent: true
---

The settings listed below should be present in every `_config.yml` file that for an offering level repo, such as those in this table.  You can click the `_config.yml` links for examples of what each `_config.yml` looks like.  Comparing what is the same, and what varies as you read over the documentation below can be helpful in understanding the structure of this file.

| Site | Repo | `_config.yml` |
|------|------|--------------|
| [ucsb-cs8.github.io/w19-mirza/](https://ucsb-cs8.github.io/w19-mirza/) | [ucsb-cs8/w19-mirza/](https://github.com/ucsb-cs8/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs8/w19-mirza/blob/master/_config.yml) |
| [ucsb-cs24.github.io/w19/](https://ucsb-cs24.github.io/w19/) | [ucsb-cs24/w19/](https://github.com/ucsb-cs24/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs24/w19/blob/master/_config.yml) |
| [ucsb-cs111.github.io/w19/](https://ucsb-cs111.github.io/w19/) | [ucsb-cs111/w19/](https://github.com/ucsb-cs111/w19/) | [`_config.yml`](https://github.com/ucsb-cs111/w19/blob/master/_config.yml) |
{:.table .table-sm .table-striped .table-bordered}

etc.


# `url`, `baseurl`, `github_url`

Fill in these values, following the pattern shown.

The value of `github_url` is used for the "Edit this page on github" links in the footer of each page.

```
url: https://ucsb-cs64.github.io 
baseurl: "/w19"  
github_url: https://github.com/ucsb-cs64/w19
```

If there are two or more sites in a given quarter for a certain course, the `baseurl` and `github_url` for those will differ.
For example:

```
url: https://ucsb-cs8.github.io 
baseurl: "/w19-matni"  
github_url: https://github.com/ucsb-cs8/w19-matni
```

and

```
url: https://ucsb-cs8.github.io 
baseurl: "/w19-mirza"  
github_url: https://github.com/ucsb-cs8/w19-mirza
```



# `title`, `course`, `qtr`, `quarter`

Fill these in as shown.  

```
title: "UCSB CS8"
course: "CS8"
qtr: "W19"
quarter: "Winter 2019"
```

You can use these values in content on web pages by writing, for example:
* `{% raw %}{{{% endraw %} site.title {% raw %}}}{% endraw %}` anywhere you want `UCSB CS8` to appear.
* `{% raw %}{{{% endraw %} site.course {% raw %}}}{% endraw %}` anywhere you want `CS8` to appear.

This allows you to more easily copy/paste content (e.g. your syllabus) between and among course websites and have the content
remain correct.

TODO: CONTINUE DOCUMENTING ...

TODO: FILL THIS IN
