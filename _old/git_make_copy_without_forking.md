---
topic: "git: make copy without forking"
desc: "Making a copy of one repo from another without forking"
indent: true
---

This page describes the typical workflow that is used with git.

# The short version (just an example)

1.  Create a new repo that contains just a README.md, clone it and cd into it.  In this case, that
    repo is called `ucsb-cs-course-repos.github.io`

2.  Add the other repo as a "remote".  Here is an example of that command.  In this case
    the `cs32` as the first parameter to `git remote add` is just an identifier (we could
    have used `potato` or `thingy` or `x`.   The second parameters is the git url of the 
    repo we are copying from.

    ```
    git remote add cs32 git@github.com:ucsb-cs32/ucsb-cs32.github.io.git
    ```

3.  Do a git pull with the special flag `--allow-unrelated-histories`.  

    If that flag produces an error message, you have an older version of git that does
    not treat merging repos with unrelated histories as an error&mdash;in that case,
    just leave it off.

4.  There will almost certainly be a merge conflict in the README.md.   It will
    be trivial to resolve it.   

    It will look something like this:

    ```
    <<<<<<< HEAD
    # ucsb-cs-course-repos
    Tutorial for how to use github to maintain course materials for UCSB CS courses
    =======
    # ucsb-cs32.github.io
    website https://ucsb-cs32.github.io
    >>>>>>> 2768905e96ab7a6a2c51e458a7628a0d520c7dbe
    ```

    To resolve it, just edit README.md, then do:

    ```
    git add README.md
    git commit "fix merge conflict in README.md"
    git push origin master
    ```

5.  You now have a new repo that is NOT a fork of the old one; but a copy (perhaps
    apart from the README.md).   It has all of the commit history of the older one, but
    is independent of it.

