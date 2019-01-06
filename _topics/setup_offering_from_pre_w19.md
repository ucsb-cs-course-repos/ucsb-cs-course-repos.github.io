---
topic: "Setup: Offering From Pre-W19"
desc: "Setting up a new offering level repo in this format, starting with a pre-W19 repo"
category_prefix: "Setup: "
indent: true
---

# Step 1: Create an empty offering repo

* Create the new repo with the correct name (e.g. `w19`) under the course organization (e.g. `ucsb-cs64`) 
* `git clone` it into a directory
* `cd` into that directory

# Step 2: Add a remote for the old repo, and pull in its contents

For example, from inside the directory for the new repo, add a git *remote* for the offering
repo you are copying from.  For example:

```
git remote add F18 git@github.com:ucsb-cs64-f18/ucsb-cs64-f18.github.io.git
```

Then pull in that repos contents:

```
git pull F18 master
```

If you have time to do the next steps now, don't push just yet.  We want to get a working site first.

# Step 3: Copy in the updated boilerplate

Follow instructions to [Copy in boilerplate files]({{'/topics/setup_boilerplate/' | relative_url }}).
They all go in the root directory of the repo.  Do this even if those files are already there;
you want to get the latest versions.

# Step 4: Make updates to the `_config.yml` that are "for all repos" first.

You should make these updates to the `_config.yml`.  

* [`_config.yml` instructions for all repos]({{ '/topics/config_yml_common/'  | relative_url}})

# Step 5:  Change these things *specific* to moving from pre-w19 repos for course offerings


1. Look for the `include:` line.  If it not present, add the following line:
   ```
   include: [`_pages']
   ```
   If it *is* already present, you should add `_pages` to the existing list using one of the acceptable
   YAML syntaxes for lists.
   
   An alternative equivalent syntax for this is as follows.  If there is an `exclude` key, it is good style to group these together.
   
   ```
   include:
   - _pages
   ```
   
2. Follow the instructions from * [`_config.yml` instructions for offering repos]({{ '/topics/config_yml_offering/' | relative_url}})
   specifically for these keys:
   *  `url`, `baseurl`, `github_url`
   
      For example:
      ```
      url: https://ucsb-cs8.github.io 
      baseurl: "/w19-matni"  
      github_url: https://github.com/ucsb-cs8/w19-matni
      ```
      
   *  `title`, `course`
      
      For example:
      ```
      title: "UCSB CS64"
      course: "CS64"
      ```
   
# Step 6:  Try running the repo

Try running the repo locally via `./setup.sh` and `./jekyll.sh` if possible.

Debug any problems you see.  At this point the repo will likely still look like the pre-w19 format, because all of those files
are still present in the repo, overriding the defaults from the theme.

If you aren't able to run locally, just go ahead and push to Github and debug there.   The instructions for [Travis CI]({{ `/topics/travis_ci/`| relative_url}}) may be helpful.

Assuming all is well, continue to the next step.   
   
# Step 7:  Bravely delete a bunch of stuff

The next steps may be a bit nerve-wracking.  Remember, everything is in git, so don't worry too much.

Look in `_includes` and `_layouts` and see if there is anything in there that you customized for your specific repo.
If so, temporarily copy it to another directory, because are going to *completely wipe out* both the `_includes` and `_layouts` directories:

```
git rm -rf _layouts
git rm -rf _includes
```

The reason this is ok is that these files are now going to be provided by the remote theme, i.e. <https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme>.

The same is true of all `*.js` and `*.css` files in the root directory.  Delete them all:

```
git rm -rf *.js
git rm -rf *.css
```

Then, try running again with `./setup.sh` and `./jekyll.sh` if possible.

If all is well, or you can't test locally, try pushing to github.  You should now see a repo in the new format; however it will lack the navigation menu.  We'll be setting that up next.

# Step 8:  Create directory `_pages` and copy a set of pages from a prototype repo

TODO: Write these instructions

# Step 9:  Create directory `_data` and create `navigation.yml` in that directory

TODO: Write these instructions

# Step 10:  Review the general instructions for `_config.yml` for offering repos

Most of the items in these instructions are likely now already taken care of, but just in case, review these and make sure
that all the values look reasonable.

* [`_config.yml` instructions for offering repos]({{ '/topics/config_yml_offering/' | relative_url}})


