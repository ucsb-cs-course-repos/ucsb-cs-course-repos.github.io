---
topic: "setup.sh"
desc: "The setup file"
---

The file `setup.sh` is a script that you typically run only occasionally,
and only if/when you are planning to try running Jekyll locally to test
your website offline.

It takes care of the `bundle install` step which is part of the
normal process of setting up Ruby application.

You should run it:

* After first doing the `git clone` of a course website repo
* Any time you change the contents of the `Gemfile`, for example
   * Changing the requested version of Ruby
   * Adding additional Ruby Gem dependencies

