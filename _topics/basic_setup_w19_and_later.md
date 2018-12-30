---
topic: "Basic Setup: W19 and later"
desc: "Basic Setup for a new course"
category_prefix: "Basic Setup: "
indent: true
---

# Designed for Github Pages

This format is designed to be used with Github Pages, a web publishing service integrated with Github.   

Some advantages of Github pages:
* Professionally-managed free hosting by Github
* Changes are automatically reflected in the website shortly after you do a push your changes to the master branch of the associated repo

# Do I have to use Github pages?

No.  You can use the format described here, and still host the pages anywhere.  For instance, you could still host the pages on the UCSB CS department webserver.   That's also an option you can use if/when there is a (rare) github.com outage.

To publish the site to, for example, `https://cs.ucsb.edu/~cs111`, you would
* Set up your system to be able run Jekyll Locally
* Change the site url in `_config.yml` from `https://github.com/ucsb-cs111.github.io` to `https://cs.ucsb.edu/`
* Change the `baseurl`
   * In the main site, from `/` to `/~cs111`
   * In the quarter specific site from `/w19` to `/~cs111/w19`
* Run the provided `./setup.sh` and `./jekyll.sh` scripts once in each of the two repos
* Copy the contents of `_site` from each of the two repos to the `public_html` directories

The catch is that you would then need to do this again each time you make changes to the Github repos.   That could get onerous.  It may be possible to do some automation of that step; but to be honest, that's what Github Pages has already done.  So unless there is a compelling reason to *NOT* use Github pages, that's the recommended approach.

# How Github pages works



A course website in this format is 

| Github Repo | URL | Description |
|---------|-------------|----|
| <https://github.com/ucsb-cs56/ucsb-cs56.github.io> | <https://ucsb-cs56.github.io> |  Material that goes with the course permanently, e.g. lessons, tutorials, etc. |
| <https://github.com/ucsb-cs56/f18> | <https://ucsb-cs56.github.io/f18> | Material that is specific to a particular quarter and instructor, e.g. syllabus, homework assignments, labs, exams, seating charts, etc. |

When transitioning to a new quarter, a new repo is created for that quarter, e.g.

| Github Repo | URL | Description |
|---------|-------------|---|
| <https://github.com/ucsb-cs56/ucsb-cs56.github.io> | <https://ucsb-cs56.github.io> |  Material that goes with the course permanently, e.g. lessons, tutorials, etc. |
| <https://github.com/ucsb-cs56/f18> | <https://ucsb-cs56.github.io/f18> | Material that is specific to a particular quarter and instructor, e.g. syllabus, homework assignments, labs, exams, seating charts, etc. |

When setting up a brand new course for the first time, you'll create one new github organizations, e.g.

* ucsb-cs111

All of the repos for websites for that course will go into this organization.  For example:

* <https://github.com/ucsb-cs111/ucsb-cs111.github.io>
* <https://github.com/ucsb-cs111/w19>
* <https://github.com/ucsb-cs111/s19>
* etc.


If there are multiple instructors teaching multiple instances of a particular course in a particular quarter, the naming convention is to add the instructor's last name, e.g.

* <https://github.com/ucsb-cs16/ucsb-cs16.github.io>
* <https://github.com/ucsb-cs16/f18-mirza>
* <https://github.com/ucsb-cs16/f18-nichols>
* etc.


If there are multiple sections of a course with the same instructor in the same quarter, the lecture section day or time can be used to differentiate, if separate websites are desired.

* <https://github.com/ucsb-cs16/ucsb-cs16.github.io>
* <https://github.com/ucsb-cs16/w19-330> for the 3:30pm TR section
* <https://github.com/ucsb-cs16/w19-630> for the 6:30pm TR section
* etc.

You should add a `.gitignore` file customzied for Jekyll based on these instructions: [/topics/gitignore/](/topics/gitignore/)

# Setting up the main course website (e.g. `ucsb-cs111.github.io`)

You should now have a course organization (e.g. `ucsb-cs111`) and an empty course repo (e.g. `ucsb-cs111.github.io`)

You should use an exisiting course repo as a model, e.g. <https://github.com/ucsb-cs48/ucsb-cs48.github.io>

We'll go over the files you need, one at a time.

## Plumbing for Jekyll

The following files are ones that you should copy over "as is".    They only need to be updated if/when the preferred Ruby version changes (e.g. from `2.5.1` to a later version).   While I've specified the purpose of the files below for documentation, you don't need to look into those details at this moment unless you really want to.

| File to copy | Purpose |
|--------------|---------|
| `Gemfile`    | This is needed for any Ruby application; it specifies the version of Ruby you are using, and what Ruby gems your application depends on. |
| `setup.sh`   | This is a shell script that does the `bundle install` step for setting up Ruby to run locally for testing purposes | 
| `jekyll.sh`   | This is a shell script that does the `bundle exec jekyll serve` step; if you run `setup.sh` once, then you can run this script to test updates to your website locally before pushing to Github. | 
| `.travis.yml` | Allows you to set up automated testing via <https://travis-ci.org>; this runs tests and help you find and debug configuration errors in your site as it's pushed to Github Pages. | 


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

