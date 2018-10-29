# The `jekyll.sh` file

The description of the `jekyll.sh` file has been moved here: [/topics/running_locally_jekyll_sh/](/topics/running_locally_jekyll_sh/)

Once `./setup.sh` completes successfully (see [/topics/running_locally_setup_sh/](/topics/running_locally_setup_sh/)) , you should be able to create  a `./jekyll.sh` file that allows you to preview the site at <http://localhost:4000>.  A typical `jekyll.sh` file looks like this:

```
#!/usr/bin/env bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"

rvm use 2.5.1
bundle exec jekyll serve

```

Use the command `chmod a+x jekyll.sh` to make the file executable (this should be a one time thing).

Then, use `./jekyll.sh` to execute the file.
