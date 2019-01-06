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

# Step 4: Make updates to the `_config.yml`

You should make these updates to the `_config.yml`

* 
