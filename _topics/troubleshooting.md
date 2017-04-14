---
topic: "troubleshooting"
desc: "What to do when it doesn't seem to be working"
---

Suppose you are trying to follow the processes described on this website for updating the course materials in a site such as:

* http://ucsb-cs16-sp17.github.io (Diba Mirza)
* http://ucsb-cs16-s17.github.io (Ziad Matni)
* http://ucsb-cs24-sp17.github.io (Diba Mirza)
* http://ucsb-cs32-s17.github.io (Andrew Duncan)
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




