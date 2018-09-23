---
topic: "RVM installation"
desc: "How to install RVM, and why you might want to"
---

RVM is the "Ruby Version Manager".  As the name suggests, it is a way of managing versions of the Ruby 
programming language on your local machine.  It's free, and open-source, and works on Mac OS and Linux. 
(and on Windows too, provided you have already installed the Ubuntu shell, Cygwin, or some other bash-like environment.)

If you are happy with developing and debugging  your website "in production", that you won't need to worry about installing rvm.

You'll want to install rvm if you'd like to be able to do 
* make changes and see what they look like on a "staging" version of your site before those changes go live
* debug error messages  

# Installing rvm on MacOS

The instructions are [here](https://rvm.io/rvm/install), but they leave out two important pre-cursor steps:

1. Install homebrew, a package manager for open source software for Mac: <https://brew.sh/>
2. Use brew to install curl and gpg:
   * `brew update`
   * `brew install curl`
   * `brew install gpg2`
3. Then follow instructions here: <https://rvm.io/rvm/install>

