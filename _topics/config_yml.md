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

# Special Subdirectories

The software we are using, Jekyll, requires two special subdirectories:
* `_layouts`, where we store the default layout of pages on our site
* `_includes`, where we will store partial HTML files that can be included in others, e.g. for common layout of pages (common headers, footers, etc.)

For now, create these directories and put an empty file in them called `keep`.  You can do this through the github web interface, or at command line with these commands:

```
mkdir _layouts
mkdir _includes
touch _layouts/keep
touch _includes/keep
git add _layouts _includes
git commit -m "add placeholders for _layouts and _includes"
git push origin master
```

The empty `keep` file is just a placeholder; git ignores empty directories, so if we want the directory to exist, it needs at least one file in it.  Once we add some real content to either directory, the `keep` file may be deleted.

# The collections

Except for the special directories called `_layouts` and `_includes`, all of the directories we created
that start with underscore correspond to a collection.  These include such directories as:
* `_hwk`, `_exam`, `_info`, etc. for repo such as `ucsb-cs16-f18-mirza.github.io` or
* `_topics` for a repo such as `ucsb-cs16.github.io`

Collections:
* need to be defined in the `_config.yml`
* can be iterated over to make nice tables or calendars
* can have a default layout that can be overridden 

Here is an example of the part of the `_config.yml` that specifies the `_info` and `_hwk` collections:

Here's the explanation of each:
* `output: true` means you actually want the items in this collection to end up on your website
* `permalink: /hwk/:path/` means you want the items in that collection to end up a url that starts with `/hwk/`, and where the second part is the path of the file (without the .html or .md extension, typically).
* `last_before` is the default value of a variable that we use to put the midterm and final exams into lists of 
   assignments at a particular spot.   It is a user-defined variable that is NOT part of the standard Jekyll setup.
   In general, for *any* variable that can be defined in the front matter of any file in any collection, you can
   define a default value here, and then just override it when you want something different.

```
collections:
  hwk:
    output: true
    permalink: /hwk/:path/
    last_before: false
  lab:
    output: true
    permalink: /lab/:path/
    last_before: false
  exam:
    output: true
    permalink: /exam/:path/
  info:
    output: true
    permalink: /info/:path/
  lectures:
    output: true
    permalink: /lectures/:path/
 ```
 
 
# The `defaults` section
 
In the `defaults` section, we specify the mapping between the path in our repo,  the type of each collection,
and what the default layout for that collection should be.

To be honest, the code below could probably be made much cleaner and more efficient with some refactoring.
We went with simple examples, and some copying/pasting, and what you see below is the result.
 
``` 
 defaults:
  -
    scope:
      path: "" # an empty string here means all files in the project
    values:
      layout: default
  -
    scope:
      path: ""
      type: hwk
    values:
      layout: hwk
  -
    scope:
      path: ""
      type: lab
    values:
      layout: lab
  -
    scope:
      path: ""
      type: exam
    values:
      layout: exam_info
  -
    scope:
      path: ""
      type: info
    values:
      layout: info
  -
    scope:
      path: ""
      type: lectures
    values:
      layout: lecture
  -
    scope:
      path: "syllabus.md"
      type: info
    values:
      layout: handout
```
