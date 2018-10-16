---
topic: "Basic Setup"
desc: "Basic Setup for a new course"
---

# The two parts

A course website in this format is really two websites in one.

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


# Setting up the website for the quarter

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

More info on setting up the actual content of the `_layouts` and `_includes` directories is here: [/topics/layouts_and_includes/](/topics/layouts_and_includes)


# Setting up directories for collections

One of the basic parts of setup is to set up the collections you'll want.

In the repo for the course instance for the quarter (e.g. `ucsb-int-5-f18.github.io`), create these directories, and in each one, put an empty file called `keep`
as a placeholder, just as we did for `_layouts` and `_includes`:

* `_hwk`
* `_lab`
* `_demo`
* `_info`
* `_exam`



# Setting up the Gemfile and Gemfile.lock

These files are typically only needed for running locally.

The Gemfile and Gemfile.lock files specify what version(s) of various software components are used to process the contents of your repo into a web page.   For best results, you want those versions to be close to the ones used by Github Pages, which are specified on this website: <https://pages.github.com/versions/>.

The Gemfile specifies where to look for gems, the Ruby version, and the version of the `github-pages` gem, for example:

```
source 'https://rubygems.org'
ruby "2.4.2"
gem 'github-pages'
```

The `Gemfile.lock` is computed from the Gemfile by running the commands in `setup.sh`.  

The contents of `setup.sh` should look something like this.   One "non-DRY" aspect of our current practice is that the ruby version has to be specified in both the `Gemfile` and the `setup.sh`.

```
#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

rvm install ruby-2.4.2
rvm use
gem install bundler
bundle install --path vendor/bundle
echo "Done."
```

As long as `rvm` is already installed (see [Installing RVM](/topics/rvm_installation/), running the `setup.sh` script should update the gems needed to run Jekyll locally (so you can test the site before pushing it to github).

If you get errors with running `setup.sh`, these are usually from the `bundle install...` step.   The most common error is one with installing Nokogiri on MacOS; see [Nokogiri on MacOS](/topics/nokogiri/) for help with debugging that.

Once `./setup.sh` completes successfully, you should be able to run `./jekyll.sh` and preview the site at <http://localhost:4000>.

