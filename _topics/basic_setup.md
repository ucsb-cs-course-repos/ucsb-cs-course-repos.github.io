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

TODO: Add this in

# Setting up the `index.md` file

The `index.md` file defines the home page for the site, and it goes in the root of the site.  It's structure will vary slightly from site to site, but we've described typical ones here:

* An `index.md` for a site for a specific course in a specific quarter
* An `index.md` for a general site for a course or a topic

TODO: ADD THIS IN

# Setting up the Gemfile and Gemfile.lock

These files are typically only needed for running locally.

The Gemfile and Gemfile.lock files specify what version(s) of various software components are used to process the contents of your repo into a web page.   For best results, you want those versions to be close to the ones used by Github Pages, which are specified on this website: <https://pages.github.com/versions/>.

The Gemfile specifies where to look for gems, the Ruby version, and the version of the `github-pages` gem, for example:

```
source 'https://rubygems.org'
ruby "2.5.1"
gem 'github-pages'
```

# The `setup.sh` file

The `Gemfile.lock` is computed from the Gemfile by running the commands in `setup.sh`.  

The contents of `setup.sh` should look something like this.  
```
#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"


rvm install ruby-2.5.1
rvm use 2.5.1
gem install bundler
bundle install --path vendor/bundle
echo "Done."
```

Use the command `chmod a+x setup.sh` to make the file executable (this should be a one time thing).

Then, use `./setup.sh` to execute the file.

Note that one "non-DRY" aspect of our current practice is that the ruby version has to be specified in both the `Gemfile` and the `setup.sh`; be sure to edit the version of Ruby to match the one in your Gemfile.

# Loading rvm as a function in `setup.sh`

The line of code:
```
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
```

is designed to ensure that "rvm is loaded as a function", i.e. that the file that defines rvm as a Bash shell function has been loaded into the environment.   That allows the `rvm use 2.5.1` command to work properly. 

The reference to  `$HOME/.rvm/scripts/rvm` is designed to work with the default rvm setup on MacOS.  If that file lives somewhere else on your system, you may need to add a line such as the one referencing `/etc/profile.d/rvm.sh`, which is the location of the file on  Debian Linux.  Note that since the file begins with a test to see if the target file exists, you can include as many of these lines as you need in order to ensure the script works across multiple environments.

As long as `rvm` is already installed (see [Installing RVM](/topics/rvm_installation/), running the `setup.sh` script should update the gems needed to run Jekyll locally (so you can test the site before pushing it to github).

If you get errors with running `setup.sh`, these are usually from the `bundle install...` step.   The most common error is one with installing Nokogiri on MacOS; see [Nokogiri on MacOS](/topics/nokogiri/) for help with debugging that.

# The `jekyll.sh` file

Once `./setup.sh` completes successfully, you should be able to create  a `./jekyll.sh` file that allows you to preview the site at <http://localhost:4000>.  A typical `jekyll.sh` file looks like this:

```
#!/usr/bin/env bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"

rvm use 2.5.1
bundle exec jekyll serve

```

Use the command `chmod a+x jekyll.sh` to make the file executable (this should be a one time thing).

Then, use `./jekyll.sh` to execute the file.

