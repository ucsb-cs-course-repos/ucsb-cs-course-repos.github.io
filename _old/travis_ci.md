---
topic: "Travis CI"
desc: "Automatically checking and reporting your errors"
---

The backend of github pages isn't always very good about providing useful error messages in the case that a site doesn't build.
However, you can configure a service called Travis CI to do this, at no cost.

Travis CI is a service that provides *continuous integration* for public github repos at no cost.  (Paid plans provide 
continuous integration for private repos.)

# How to set up Travis CI

1. Create a file called `.travis.yml` in the root of the repo, with these contents.  The Ruby version should match that
   in the `Gemfile`, `setup.sh`, and `jekyll.sh`
   
   ```yml
   language: ruby
   rvm:
     - 2.5.1
   script: "bundle exec jekyll build"
   ```
   
2. Navigate to <https://travis-ci.org/> and login with your Github account.

3. To add a button in the README.md that indicates the pages status on Travis CI
   * see [these instructions](https://docs.travis-ci.com/user/status-images/) for information on how to get the URL of the image.
   * With that URL, put code such as this in the README.md file.  Adjust the URLs in example code below as needed:
      ```
      Jekyll status on Travis-CI: [![Build Status](https://travis-ci.org/pconrad-webapps/pconrad-webapps.github.io.svg?branch=master)](https://travis-ci.org/pconrad-webapps/pconrad-webapps.github.io)
      ```
