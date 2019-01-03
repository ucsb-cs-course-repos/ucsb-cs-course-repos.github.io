---
topic: "Running Locally: setup.sh"
desc: "When running locally, what should the setup.sh file contain?"
indent: true
prefix: "Running Locally: "
---

The `Gemfile.lock` is computed from the Gemfile by running the commands in `setup.sh`.  

The contents of `setup.sh` should look something like this.  
```
#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"


rvm install ruby-2.5.1
rvm use 2.5.1
gem install bundler
bundle install --path vendor/bundle
echo "Done."
```

Use the command `chmod a+x setup.sh` to make the file executable (this should be a one time thing).

Then, use `./setup.sh` to execute the file.

Note that one "non-DRY" aspect of our current practice is that the ruby version has to be specified in both the `Gemfile` and the `setup.sh`; be sure to edit the version of Ruby to match the one in your Gemfile.

# Loading rvm as a function in `setup.sh`

The line of code:
```
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
```

is designed to ensure that "rvm is loaded as a function", i.e. that the file that defines rvm as a Bash shell function has been loaded into the environment.   That allows the `rvm use 2.5.1` command to work properly. 

The reference to  `$HOME/.rvm/scripts/rvm` is designed to work with the default rvm setup on MacOS.  If that file lives somewhere else on your system, you may need to add a line such as the one referencing `/etc/profile.d/rvm.sh`, which is the location of the file on  Debian Linux.  Note that since the file begins with a test to see if the target file exists, you can include as many of these lines as you need in order to ensure the script works across multiple environments.

As long as `rvm` is already installed (see [Installing RVM](/topics/rvm_installation/), running the `setup.sh` script should update the gems needed to run Jekyll locally (so you can test the site before pushing it to github).

If you get errors with running `setup.sh`, these are usually from the `bundle install...` step.   The most common error is one with installing Nokogiri on MacOS; see [Nokogiri on MacOS](/topics/nokogiri/) for help with debugging that.
