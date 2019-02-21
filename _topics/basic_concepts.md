---
topic: "Basic Concepts:"
desc: "Basics concepts for beginners"
---

# home pages

The home page of your site is likely is in the file `index.md` in the root of your repo.

# Front Matter

Each Markdown file has a section with so-called "front matter" which defines value using the YAML format.
This "front-matter" sits in between two lines of three hyphens each, like this:

```
---
layout: lab
num: lab00
ready: true
desc: "Getting Started"
assigned: 2019-01-10 16:00
due: 2019-01-18 17:00
signup_app: https://ucsb-cs-github-linker.herokuapp.com/
slack_url: https://ucsb-cs48-w19.slack.com
---
```

As explained below under "Using variables", the values in the front matter can be used as constants that are inserted into the text of the page.

# Using variables

On any page in the repo, you can use variables inside curly braces.  

For example, at the top of
each lab, you will typically have a variable in the front matter called `num` that has a value such as `lab01`, `lab02` etc.

If you want a student to create a repo inside the course github organization you could write something like this:

```
Please create a repo inside {{site.github_org}} with the name {{page.num}}_yourgithubid
```

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

# Customizing the navigation bar

The navigation bar is driven by the file

* `_data/navigation.yml`

For the time being, regrettably, this file needs to be kept in sync between the course level repo and the the course instance repos.    Eventually, we hope to implement code in the course level repo that will pull the navigation automatically from the course instance repos, but that hasn't happened yet (as of 2019-01-04).

Here's the structure of the `navigation.yml`

## `main_dropdown`

`main_dropdown` is intended to be a list of links to pages on the course level website.
If you don't want one of those, you can just leave this entire section out of your `navigation.yml`
   
## `offering`   

In a course offering repo, the `offerings` section lists the offerings that will be available.

* The top level `title:` value should identify the offering in *this* repo (the one that the `navigation.yml` file
lives in) (e.g. 'W19' or 'W19-mirza')
* The top level `url:` value should typically be `/`
* The top level `baseurl:` value should be the baseurl of the repo, e.g.  `/w19` or `/w19-mirza` with no trailing slash.
* The `items` list is a list of these three values for each instance that you want to appear in the menu.   The first
   item in the list should match the repo (e.g. if you want both `W19` and `S19` in the menu in the `S19` repo, list
   `S19` first.

```yml
offerings:
   title: W19
   url: /	
   baseurl: /w19
   items:
      - title: W19
        url: /
        baseurl: /w19
      - title: S19
        url: /
        baseurl: /s19
```        
