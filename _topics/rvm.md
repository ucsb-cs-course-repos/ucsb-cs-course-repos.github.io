---
topic: "RVM:"
desc: "Ruby Version Manager"
---

RVM is the Ruby Version Manager.  It's the one thing you might need
to install on your machine if you want to maintain pages using
GitHub pages and Jekyll, although this is *entirely optional*

# Using GitHub pages without installing RVM

When using GitHub pages to publish your site, strictly speaking
you don't need to install any software on your local machine.

GitHub automatically runs Jekyll each time you push changes to GitHub,
and this generates your site.

If there are errors,
* you sometimes get an email from GitHub letting you know.
* you can also configure Travis-CI to run Jekyll in parallel, and
   look for error messages this way.

# You'll probably end up wanting it though

However, it is handy to be able to run Jekyll locally for several reasons:

*  When making big changes to the site, it's nice to preview them locally
   before they go live.  Having RVM installed allows you to do that.

*  If you make a change that results in a syntax error, you *might* be able
   to debug this from the error messages you get from GitHub Pages and/or
   Travis-CI.  But it's *much* easier to debug this if you run the site
   locally.

# Installing RVM

The instructions for installing RVM are here: <http://rvm.io/>

Note that for MacOS, you may want to do three things first:

*  Install [Homebrew](https://brew.sh) first, the open source package
   manager for MacOS.  You are installing this so that you can get two
   things that the RVM install instructions require:
*  Install `gpg2` via `brew install gpg2`
*  Install `curl` via `brew install curl`

# Using RVM

You typically don't need to interact with RVM directly.  Once it is
installed, it is invoked when needed by the `./setup.sh` and
`./jekyll.sh` scripts that are included in your repos from the
[Boilerplate files]({{'/topics/boilerplate/' | relative_url }}.
