---
topic: "Setup: Course From Pre-W19"
desc: "Setting up a new course level repo in this format, starting with a pre-W19 repo"
category_prefix: "Setup: "
indent: true
---

# Step 1: The course level repo should already exist, so clone it.

* `git clone` it into a directory
* `cd` into that directory

# Step 2: Add a remote for the old repo, and pull in its contents

For example, from inside the directory for the new repo, add a git *remote* for the offering
repo you are copying from.  For example:

```
git remote add OLD git@github.com:ucsb-cs16/ucsb-cs16.github.io.git
```

Then pull in that repos contents:

```
git pull OLD master
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

1. Find the `collections:` item in the `_config.yml`.  
   For each collection that is using `topic` as the `layout`, change this to `default`.
2. Look for the `include:` line.  If it not present, add the following line:
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
   
3. Follow the instructions from * [`_config.yml` instructions for course repos]({{ '/topics/config_yml_course/' | relative_url}})
   specifically for these keys:
   *  `url`, `baseurl`, `github_url`
   
      For example:
      ```
      url: https://ucsb-cs16.github.io 
      baseurl: "/"  
      github_url: https://github.com/ucsb-cs16
      ```
      
   *  `title`, `course`
      
      For example:
      ```
      title: "UCSB CS16"
      course: "CS16"
      ```
   
# Step 6:  Review the general instructions for `_config.yml` for offering repos

Most of the items in these instructions are likely now already taken care of, but just in case, review these and make sure
that all the values look reasonable.

* [`_config.yml` instructions for course repos]({{ '/topics/config_yml_course/' | relative_url}})



