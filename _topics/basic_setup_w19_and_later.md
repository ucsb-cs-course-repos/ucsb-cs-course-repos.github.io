---
topic: "Basic Setup: W19 and later"
desc: "Basic Setup for a new course"
category_prefix: "Basic Setup: "
indent: true
---

# The two parts

A course website in this format is typically two websites in one.

| Example | Description |
|---------|-------------|
| <https://ucsb-cs8.github.io> | Material that goes with the course permanently, e.g. lessons, tutorials, etc. |
| <https://ucsb-cs8-s18.github.io> | Material that is specific to a particular quarter and instructor, e.g. syllabus, homework assignments, labs, exams, seating charts, etc. |

When setting up a brand new course for the first time, you'll create two organizations, e.g.

* ucsb-int5
* ucsb-int5-f18

If there are multiple instructors teaching multiple instances of a particular course in a particular quarter, the naming convention is to add the instructor's last name, e.g.

* ucsb-cs16-f18-mirza
* ucsb-cs16-f18-nichols

After creating the organizations, create repos with these names:

| Inside this org | Create this repo |
|-|-|
| `ucsb-int5` | `ucsb-int5.github.io` |
| `ucsb-int5-f18` | `ucsb-int5-f18.github.io` |

You should add a `.gitignore` file customzied for Jekyll based on these instructions: [/topics/gitignore/](/topics/gitignore/)

# Setting up the websites

## Configure the basic information for your course in `_config.yml`

Setting up the `_config.yml` is such a crucial topic, that we 
have factored it out into its own page here: [/topics/config_yml](/topics/config_yml/)

Example:

```yml
course: "CS56"
qtr: "F17"
quarter: "Fall 2017"
...
```

## Create special directories for Jekyll

In the top level of the repo, we will also create the following directories which have special roles in Jekyll, the software that power Github Pages:

* `_layout`, a directory that will contain the basic layout templates for the web pages on our site.
* `_include`, a directory that will contain short segments of HTML, CSS, JavaScript or Markdown that can be included in other files, such as common headers, footers, etc.  

Having these common `_layout` and `_include` files allows us to keep our course materials "DRY", i.e. we we can follow the practice "Don't Repeat Yourself".  We want avoid having to copy/paste sections of code, and then having to update these in multiple places.

Temporarily, you can create each of these directories initially with a placeholder empty file called `keep`.   This is a convention used with git repos to create a directory that will contain content later (git will ignore empty directories).    The empty `keep` file can be deleted once you have content in this directory.

You can do that through the web interface, or at command line with these commands:

```
mkdir _layouts
mkdir _includes
touch _layouts/keep
touch _includes/keep
git add _layouts _includes
git commit -m "add placeholder for _layouts and _includes"
git push origin master
```

More info on setting up the actual content of the `_layouts` and `_includes` directories is here: [/topics/layouts_and_includes/](/topics/layouts_and_includes/)


# Setting up directories for collections

One of the basic parts of setup is to set up the collections you'll want.

If this is a repo for the course instance for the quarter (e.g. `ucsb-int5-f18.github.io`), create these directories, and in each one, put an empty file called `keep`
as a placeholder, just as we did for `_layouts` and `_includes`:

* `_hwk`
* `_lab`
* `_demo`
* `_info`
* `_exam`

If this is a repo for the course "in general", or for something other than a specific course (e.g. a collection of general resources, such as this very website, [ucsb-cs-course-repos.github.io](/) then you may instead want to create directories such as these:

* `_topics`
* `_resources`

These directories will correspond to the *collections* that you define in the `_config.yml` file which is our next step.

# Setting up collections

TODO: Add this in.   Most of it is already documented in [/topics/config_yml](/topics/config_yml/) but it could be made less confusing.

# Setting up the `index.md` file

The `index.md` file defines the home page for the site, and it goes in the root of the site.  It's structure will vary slightly from site to site, but we've described typical ones here:

* An `index.md` for a site for a specific course in a specific quarter  (TODO)
* An `index.md` for a general site for a course or a topic (TODO

TODO: ADD THIS IN.   A start is here: [/topics/index_md/](/topics/index_md/)

# Setting up the Gemfile and Gemfile.lock

These files are typically only needed for running locally.

The description of the `setup.sh` file has been moved here: [/topics/running_locally_gemfile/](/topics/running_locally_gemfile/)

# The `setup.sh` file

The description of the `setup.sh` file has been moved here: [/topics/running_locally_setup_sh/](/topics/running_locally_setup_sh/)


# The `jekyll.sh` file

The description of the `jekyll.sh` file has been moved here: [/topics/running_locally_jekyll_sh/](/topics/running_locally_jekyll_sh/)

