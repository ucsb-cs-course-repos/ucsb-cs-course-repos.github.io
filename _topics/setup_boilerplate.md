---
topic: "Setup: Boilerplate"
desc: "Files that you just copy directly"
category_prefix: "Setup: "
indent: true
---

<div class="d-none">http://ucsb-cs-course-repos.github.io/topics/setup_boilerplate/</div>

There are several files that every repo in this format needs, and that are seldom modified.

Typically, the only modification needed is to copy a brand new set of these files from here:

* <https://github.com/ucsb-cs-course-repos/boilerplate>

There is a script in that repo that does exactly that called [`./update.sh`](https://github.com/ucsb-cs-course-repos/boilerplate/blob/master/update.sh).  Just do the following,
where `target-directory` is the directory you are updating, e.g. `~/github/ucsb-cs24/ucsb-cs24.github.io`

```
git clone https://github.com/ucsb-cs-course-repos/boilerplate
cd boilerplate
./update.sh target-directory-here
```

# Overview of the boilerplate files

Here's a rundown of these boilerplate files.  Click the file name
to see it's source code.

<style>
.table-first-col-wide td:first-of-type { 
  width: 10em;
  padding-left: 1em;
}

</style>

{% assign bpurl="https://github.com/ucsb-cs-course-repos/boilerplate/blob/master" %}

{:.table .table-sm .table-striped .table-bordered .table-first-col-wide}
| Filename | Purpose |
|--------------|---------|
| [`Gemfile`]({{ bpurl }}/Gemfile) | This is needed for any Ruby application; it specifies the version of Ruby you are using, and what Ruby gems your application depends on. |
| [`.gitignore`]({{bpurl}}/.gitignore)    | This helps keep your repo tidy by telling github which files to ignore when committing to github |
| [`setup.sh`]({{bpurl}}/.setup.sh)   | This is a shell script that does the `bundle install` step for setting up Ruby to run locally for testing purposes | 
| [`jekyll.sh`]({{bpurl}}/jekyll.sh)   | This is a shell script that does the `bundle exec jekyll serve` step; if you run `setup.sh` once, then you can run this script to test updates to your website locally before pushing to Github. | 
| [`.travis.yml`]({{bpurl}}/.travis.yml) | Allows you to set up automated testing via <https://travis-ci.org>; this runs tests and help you find and debug configuration errors in your site as it's pushed to Github Pages. | 

