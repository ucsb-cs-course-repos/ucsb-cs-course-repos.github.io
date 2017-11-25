---
topic: "repo organization"
desc: "the basic files that you need in the repo to set up a course website"
---

# The basic plumbing for a minimal site

| Filename | Purpose |
|-----------|---------|
| `Gemfile` | Stores a list of the gems needed to run a Ruby application, in this case Jekyll |
| `setup.sh` | A custom script that can be helpful for setting up Jekyll to run on localhost for testing |
| `jekyll.sh` | A custom script used to run Jekyll on localhost for testing |
| `_config.yml` | The central file (in YaML syntax) when you configure everything for your Jekyll site |
| `index.md` | The home page of the site |

## A few more details about some of these.

* `Gemfile`
    * Stores a list of the gems needed to run a Ruby application, in this case Jekyll, 
      the static site generate for github-pages.  
    * This file is not used by github pages, and so it is only needed 
       when when generating the site on localhost 
       or a cloud computing provider such as Heroku

# The main subdirectories

| Filename | Purpose |
|-----------|---------|
| `_includes` | Stores files that can be included (via `include` directives) into any other content file |

## A few more details about some of these.

* `_includes`
    * Include directives have the following syntax (where `asn_table.html`
       is the name of the file you want to include, and which should live
       inside the `_includes` directory.)
    
    `{``% include asn_table.html %``}`

