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


# Setting up the website for the quarter

## Configure the basic information for your course in `_config.yml`:

Example:

```yml
course: "CS56"
qtr: "F17"
quarter: "Fall 2017"
piazza_url: https://piazza.com/class/j80k1o0zsxg1j7
gauchospace_course_page: https://gauchospace.ucsb.edu/courses/course/view.php?id=19139
```

# Setting up the Gemfile and Gemfile.lock

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

