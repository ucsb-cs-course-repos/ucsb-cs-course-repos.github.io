---
topic: "troubleshooting"
desc: "What to do when it doesn't seem to be working"
---

Suppose you are trying to follow the processes described on this website for updating the course materials in a site such as:

* <http://ucsb-cs16-sp17.github.io> (CS16, S17, Diba Mirza)
* <http://ucsb-cs16-s17.github.io> (CS16, S17, Ziad Matni)
* <http://ucsb-cs24-sp17.github.io> (CS24, S17, Diba Mirza)
* <http://ucsb-cs32-s17.github.io> (CS32 ,S17, Andrew Duncan)
* etc.

And further suppose that you keep making edits, and yet the changes don't seem to be taking effect.  What should you do?

There are three possible courses of action:

* Just wait and keep refreshing your browser. It may just be a delay.   Github pages takes a moment to update.
* If waiting doesn't work, it could be a caching thing.  Try emptying your cache, or opening a "Incognito Window".
* If that doesn't work, try looking at your commit history to see the most recent change, and look for any obvious syntax errors in your Markdown.

If you are still getting nowhere, then it's very possible that you made some kind of serious syntax error that is preventing the page from being rebuilt.  

Regrettably, there is no place to look at the error messages for github pages.  Github's suggested solution is to run Jekyll locally to 
see the error messages.   

This requires some one-time setup, but the benefits are worth it.  In addition to being able to see error messages, you also now can
get previews of edits before they go live, with no delay at all.

Here's how to do it:

1.  As a one-time step (for all time), install rvm on your machine.  Visit <https://rvm.io/rvm/install> for information for your particular OS.

    `rvm` is the "Ruby Version Manager".  It is a small utility that simply installs various versions 
     of Ruby (and associated Ruby modules/packages, called "gems") and keeps track, for any given directory, of which version of Ruby you need for that project.  (It is similar to the role that `virtualenv` plays in the Python ecosystem, or `nvm` for the node.js JavaScript environment.) 
     
     For installing on mac, you may need gpg first.  Here is a site that tells you how to install homebrew, then gpg
     
     <http://blog.ghostinthemachines.com/2015/03/01/how-to-use-gpg-command-line/>

2.  In each of the repos that contains one of these course websites, there is a `./setup.sh` 
    script that installs the correct version of Ruby and all of the necessary gems to run Jekyll 
    (the software that is the basis of github pages).
    That should be a one-time thing per repo.

3.  Run ./jekyll.sh whenever you want to check for syntax errors, and 
    then temporarily launch a private local web server on http://localhost:4000 where you can preview your site.


# What if the ./setup.sh doesn't build correctly?

Try deleting the directories `vendor/bundle`, `.bundle/` and the file `Gemfile.lock` (though do NOT delete `Gemfile`).

Then try the `./setup.sh` again.  Sometimes this fixes things (it's similar to doing a `make clean`).

On Mac, if you get advised to try doing a `gem install` and you get a Permisssions error, try the solution
at [this link](https://stackoverflow.com/questions/14607193/installing-gem-or-updating-rubygems-fails-with-permissions-error)

