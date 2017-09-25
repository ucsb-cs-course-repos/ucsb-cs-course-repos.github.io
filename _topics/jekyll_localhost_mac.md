---
topic: "Jekyll on localhost: MacOS"
desc: "How to run Jekyll on localhost on a Mac (install rvm, etc.)"
---

# Short version 

1.  Install rvm (Ruby Version Mangager) (this may be slightly painful, but you only have to do it once.)
2.  Use the ./install.sh script (once)
3.  Use the ./jekyll.sh script each time you want to run Jekyll locally.

# Slightly longer version of step 1 above.

1. Install gpg (needed to install rvm)
1. Install rvm (needed for running Jekyll) (This installs Homebrew too if you don't already have it.)

# Troubleshooting

1. If you get `bundle: command not found`, try this:
   * `sudo gem install bundler` 
   
