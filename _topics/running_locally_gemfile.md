---
topic: "Running Locally: Gemfile"
desc: "Specifying the version of Ruby and Github Pages used to create the site locally and on Travis CI"
category_prefix: "Running Locally: "
indent:true
---

# Setting up the Gemfile and Gemfile.lock

These files are typically only needed for running locally.

The Gemfile and Gemfile.lock files specify what version(s) of various software components are used to process the contents of your repo into a web page.   For best results, you want those versions to be close to the ones used by Github Pages, which are specified on this website: <https://pages.github.com/versions/>.

The Gemfile specifies where to look for gems, the Ruby version, and the version of the `github-pages` gem, for example:

```
source 'https://rubygems.org'
ruby "2.5.1"
gem 'github-pages'
```
