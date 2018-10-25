---
topic: "Jekyll on localhost: MacOS"
desc: "How to run Jekyll on localhost on a Mac (install rvm, etc.)"
---

# Short version 

1.  Install rvm (Ruby Version Mangager) (this may be slightly painful, but you only have to do it once.)
2.  Use the ./install.sh script (once)
3.  Use the ./jekyll.sh script each time you want to run Jekyll locally.

# Slightly longer version of step 1 above.

See instructions at: <https://rvm.io/rvm/install>

1. Install gpg (needed to install rvm)
   1.  [Install Homebrew](https://brew.sh) (needed to install gpg)
   2.  Install `gpg` (might be `brew install gpg`)
1. Install rvm (needed for running Jekyll) (This installs Homebrew too if you don't already have it.)

# Troubleshooting

1. Make sure you have done `source ~/.rvm/scripts/rvm` in your current shell
1. If you get `bundle: command not found`, try this:
   * `sudo gem install bundler` 
   
1. If you have trouble, consider removing the directory `vendor/bundle` before retrying the `./setup.sh` step.  This forces a refresh of all the Ruby gems (i.e. the dependencies), which sometimes helps when things get stuck.

