---
topic: "config.yml: common"
desc: "The central configuration file for the site"
category_prefix: "config_yml: "
indent: true
---

The settings listed below should be present in every `_config.yml` file that uses the `ucsb-cs-course-repos/course-repo-jekyll-theme`, including both course level repos and offering level repos.

You can click the `_config.yml` links for examples of what each `_config.yml` looks like.  Comparing what is the same, and what varies as you read over the documentation below can be helpful in understanding the structure of this file.



| Level | Site | Repo | `_config.yml` |
|----|------|------|--------------|
|Course| [ucsb-cs8.github.io](https://ucsb-cs8.github.io) | [ucsb-cs8/ucsb-cs8.github.io](https://github.com/ucsb-cs8/ucsb-cs8.github.io) | [`_config.yml`](https://github.com/ucsb-cs8/ucsb-cs8.github.io/blob/master/_config.yml) |
| &nbsp;&nbsp; Offering | [ucsb-cs8.github.io/w19-mirza/](https://ucsb-cs8.github.io/w19-mirza/) | [ucsb-cs8/w19-mirza/](https://github.com/ucsb-cs8/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs8/w19-mirza/blob/master/_config.yml) |
|Course | [ucsb-cs24.github.io](https://ucsb-cs24.github.io) | [ucsb-cs24/ucsb-cs24.github.io](https://github.com/ucsb-cs24/ucsb-cs24.github.io) | [`_config.yml`](https://github.com/ucsb-cs24/ucsb-cs24.github.io/blob/master/_config.yml) |
| &nbsp;&nbsp; Offering| [ucsb-cs24.github.io/w19/](https://ucsb-cs24.github.io/w19/) | [ucsb-cs24/w19/](https://github.com/ucsb-cs24/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs24/w19/blob/master/_config.yml) |
|Course | [ucsb-cs111.github.io](https://ucsb-cs111.github.io) | [ucsb-cs111/ucsb-cs111.github.io](https://github.com/ucsb-cs111/ucsb-cs111.github.io) | [`_config.yml`](https://github.com/ucsb-cs111/ucsb-cs111.github.io/blob/master/_config.yml) |
| &nbsp;&nbsp; Offering|[ucsb-cs111.github.io/w19/](https://ucsb-cs111.github.io/w19/) | [ucsb-cs111/w19/](https://github.com/ucsb-cs111/w19/) | [`_config.yml`](https://github.com/ucsb-cs111/w19/blob/master/_config.yml) |
{:.table .table-sm .table-striped .table-bordered}

# `plugins:` and `remote_theme:`

`plugins:` is a list of Jekyll plugins to be used.   Note that when using GitHub Pages to host the site, only a very [limited number of whitelisted Jekyll plugins are supported](https://help.github.com/articles/configuring-jekyll-plugins/).

```
plugins:
  - jekyll-remote-theme
  - jekyll-include-cache

remote_theme: ucsb-cs-course-repos/course-repo-jekyll-theme  
```

The [jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme) plugin is what allows us to centrally maintain many of the files that structure our sites and give them a common set of functionality, while still allowing instructors to customize their sites to their own needs and preferences.

The `jekyll-include-cache` allows the use of `{% raw %}{{% endraw %}% include-cached foo.html % {% raw %}}{% endraw %}` instead of `{% raw %}{{% endraw %}% include foo.html % {% raw %}}{% endraw %}` as a performance optimization
when including files.    

Note that if the include file contains references to context-specific variables or parameters, you should not use `{% raw %}{{% endraw %}% include-cached foo.html % {% raw %}}{% endraw %}`  

`remote_theme:` specifies the github repo of the remote theme used by the [jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme) plugin.  It is the name of a [github.com](https://github.com) repo, with the `https://github.com` part being implied and not specified:

It is possible to specify a particular branch (e.g. the `develop` branch) with this syntax:

```
remote_theme: ucsb-cs-course-repos/course-repo-jekyll-theme@develop
```

See the [jekyll-remote-theme README.md file](https://github.com/benbalter/jekyll-remote-theme/blob/master/README.md) for more documentation of the syntax for this line.

# `kramdown:`, `exclude:`, `#include` and `timezone:`

This block should typically be copied as is.   You may want to change the timezone if you are outside of California.

```
kramdown:
  parse_block_html: false

exclude: ['vendor', 'setup.sh', 'jekyll.sh']
include:
  - _pages

timezone: America/Los_Angeles
```
