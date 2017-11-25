---
topic: "repo organization"
desc: "the basic files that you need in the repo to set up a course website"
---

# The basic plumbing

| Filename | Purpose |
|-----------|---------|
| `Gemfile` | Stores a list of the gems needed to run a Ruby application, in this case Jekyll |
| `setup.sh` | A custom script that can be helpful for setting up Jekyll to run on localhost for testing |
| `jekyll.sh` | A custom script used to run Jekyll on localhost for testing |


## A few more details about some of these.

* `Gemfile`
    * Stores a list of the gems needed to run a Ruby application, in this case Jekyll, 
      the static site generate for github-pages.  
    * This file is not used by github pages, and so it is only needed 
       when when generating the site on localhost 
       or a cloud computing provider such as Heroku
