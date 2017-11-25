---
topic: "repo organization"
desc: "the basic files that you need in the repo to set up a course website"
---

# The basic plumbing for a minimal site

| Filename | Purpose |
|-----------|---------|
| `Gemfile` | Stores a list of the gems needed to run a Ruby application, in this case Jekyll |
| `Gemfile.lock` | Stores a list of the specific versions of gems in the current bundle.  (You typically do not need to know what this file does.)|
| `_config.yml` | The central file (in YaML syntax) when you configure everything for your Jekyll site |
| `index.md` | The home page of the site |

## A few more details about some of these.

* `Gemfile`
    * Stores a list of the gems needed to run a Ruby application, in this case Jekyll, 
      the static site generate for github-pages.  
    * This file is not used by github pages, and so it is only needed 
       when when generating the site on localhost 
       or a cloud computing provider such as Heroku


# The special subdirectories 

These special subdirectories are a part of any typical Jekyll setup. 

| Directory | Purpose |
|-----------|---------|
| `_includes` | Stores files that can be included (via `include` directives) into any other content file |
| `_layouts` | Allows user to define standard layouts for various kinds of content (e.g. hwk, lab, exam, handout.) |


## A few more details about some of these.

* `_includes`
    * Include directives have the following syntax (where `asn_table.html`
       is the name of the file you want to include, and which should live
       inside the `_includes` directory.)
    
    `{``% include asn_table.html %``}`
* `_layouts`
    * A typical use case for UCSB CS Course repos is to have separate layouts for content that 
       is intended to be viewed in a web browser, vs. content that is primarily intended to be 
       a printed handout. 
    * The layout is specified in the "front matter" of each page as in this example:
       ```
       ---
       layout: handout
       topic: "Linked Lists"
       ---
       ```
       
# Convenience scripts added for UCSB course repos

These scripts are not part of a standard Jekyll setup, but rather were added for convenience.

| Filename | Purpose |
|-----------|---------|
| `setup.sh` | A custom script that can be helpful for setting up Jekyll to run on localhost for testing |
| `jekyll.sh` | A custom script used to run Jekyll on localhost for testing |

# User Defined Collections

The "collections" for a site are user defined, and are configured in the `_config.yml` file.    Typical collections for a course site include these.  Note that the directory *must* start with an underscore (e.g. `_lab`) while the variable used in scripts that denotes the collection does *not* have the underscore (e.g. `for h in hwk`).

| Directory | Purpose | Collection Name  |
|-----------|---------|------------------|
| `_hwk`  | Homework Assignments | `hwk` |
| `_lab`  | Lab Assignment | `lab` |
| `_exam` | Exams | `exam` |
| `_lecture` | Lecture Notes | `lecture` |

It is possible to define additional collections, or remove any of these at will.   

Collections are not automatically indexed on the main `index.md` page; since the way in which each collection is listed may vary according to user preferences, the user must edit the `index.md` page to add code to customized the listing. Fortunately, this is straightforward&mdash;the examples already present for the collections `hwk`, `lab` etc. should serve
as a model.

