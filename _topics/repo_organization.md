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
| `site.css` | Basics CSS (style) for the site |
| `site.js` | Basic JavaScript (scripts) for the site |

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

# Other directories


| Directory | Purpose |
|-----------|---------|
| static    | for static assets |

If there are static assets that you want to include in your site, you can put them in a directory called `static`.

For example, the file `static/gradescope.pdf` might contain a PDF supplied by [Gradescope](https://gradescope.com) with instructions for submitting work via Gradescope.  That can then be linked to with internal site links.

# Calendar System

A calendar of course events can be calculated automatically from dates in the front matter of various collections
through some custom Javascript code.    This is definitely the part of the system most in need of some "refactoring love"&mdash;it is a bit of a hack, albeit an extraordinarily useful one.

The files needed for the calendar system include these (paths relative to root)

{% include calendar_files.md %}


A further discussion of the calendar can be found on a separate page: [Course Calendar](/topics/course_calendar/)

The calendar itself is produced by a single file, `_info/calendar.md` which contains almost nothing; the entirety of the file is typically as follows:

{% highlight markdown linenos %}
---
title: Calendar
layout: calendar
---

<div id='calendar' class='calendar'></div>

{% endhighlight %}



The layout file `_layouts/calendar.html` specifies, indirectly, that some extra javascript should be included from a few third party libraries (mostly for date handling) as well as, crucially, `calendar.js`, which where most of the work is done to calculate the calendar.

The bulk of the code that produces the calendar is in the file `_includes/calendar.js`, which together with `calendar.css` is the place that, if you need to make changes, you'll want to consult.

The calculation of the calendar happens in three phases.   

* Phase 1: Create JavaScript objects for each Collection
* Phase 2: Iterate through those objects, and populate an object indexed by dates.
* Phase 3: Use JQuery rules to add custom content to each date for the things that should appears on that date.


# Other extras

In the root directory:

| File or Directory Name | Purpose |
|------------------------|----------|
| `flipclock.js` | For a Solari Board style flip clock to be used during exams |
| `flipclock.css` | For a Solari Board style flip clock to be used during exams |
