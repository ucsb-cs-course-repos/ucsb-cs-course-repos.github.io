---
topic: "Setup: Migrate Offering from previous offering"
desc: "The most common case: copying from an existing offering in this format (e.g. F19 → W20)"
category_prefix: "Setup: "
indent: true
---

<div style="display:none">https://ucsb-cs-course-repos.github.io/topics/setup_offering_from_prev</div>

# Welcome!

If you are new to this format, please start with the "welcome"
section of the page [Setup: New Course](/topics/setup_new_course/).

# When do I follow these instructions?

These instructions apply to the case where:
* there is already a repo set up in this format for your course for a previous offering,
(e.g. <https://ucsb-cs56.github.io/s19> 
* you want to use that offering as a template to set up a website for a new offering (e.g. <https://ucsb-cs56.github.io/f19>

In this case, 

* The course level organization, e.g. <https://github.com/ucsb-cs56>, is already setup 
* The course level repo, e.g. <https://github.com/ucsb-cs16/ucsb-cs56.github.io> is already setup
* The offering level repo for the previous quarter, e.g. <https://github.com/ucsb-cs16/ucsb-cs56.github.io> is already setup

If that's your use case, carry on.

# Step 1: Get yourself added as an "owner" of the course level organization.

There will be a course level github organization, e.g. <https://github.com/ucsb-cs56>. You will need owner permission for this organziation.  Contact whomever you need to contact to get yourself added to that organization. That will typically be one of the instructors that taught the course in the past.

# Step 2: Create a new repo with the name of the term (quarter or semester)

Inside the course level github organization, e.g. <https://github.com/ucsb-cs56>, create a repo with the name of the term, e.g. `f19`.

If there is more than one offering of that course at your institution during that term, use a naming convention that disambiguates such as `f19-mwf` vs. `f19-tr` or `f19-smith` vs. `f19-jones`.

## Step 2a: Configure repo for GitHub Pages

Once you've created the repo, be sure to go in to the Settings for that repo, and set Github Pages to publish from the master branch, e.g. at <https://github.com/ucsb-cs56/f19/settings>.  Scroll down to GitHub Pages, and under Source, select Master Branch.  You should not select a theme under the settings page; the theme is automatically set in the `_config.yml` file of the repo.

# Step 3: Clone both the old repo and the new repo to your local file system

For example, if you are using `ucsb-cs56/f18` as the basis to create `ucsb-cs56/f19`, then use 

```
git clone git@github.com:ucsb-cs56/f18.git
git clone git@github.com:ucsb-cs56/f19.git
```

Now you have a choice between either step 4, which copies the old material along with the github revision history, or step 5 which copies only the files (a fresh start).

# Step 4a: Pull files in from old repo with git history

NOTE: Only perform step 4 OR step 5 NOT BOTH.

To add a remote for the old repo, you first cd into the directory for the new repo, e.g.

```
cd f19
```

Then use this command to add a remote for the old repo:

```
git remote add oldrepo git@github.com:ucsb-cs56/f18.git
```

Finally, pull in the files from the old repo along with their history, like this:

```
git pull --allow-unrelated-histories oldrepo master
```

If you started the repo with a README.md, there might be merge conflicts in that file.  If so, they will be trivial to resolve; just edit the README.md and edit the file so that the contents are appropriate to the new quarter.

Now skip to step 6; do NOT perform step 5.

# Step 5: Copy files from old repo 

NOTE: Only perform step 4 OR step 5 NOT BOTH.

Typically, you'll copy the following files from the old repo into the new one.  In this case, we are assuming that f18 is a "sibling" directory of the current directory.  

If any do not exist, don't worry about it.    

```
cp ../f18/_config.yml .
cp ../f18/README.md .
cp -r ../f18/_data .
cp -r ../f18/_exam .
cp -r ../f18/_hwk .
cp -r ../f18/_info .
cp -r ../f18/_pages .
cp -r ../f18/_sass .
cp -r ../f18/_staff .
cp -r ../f18/_includes .
cp -r ../f18/static .
cp -r ../f18/images .
```

Then commit these files to the new repo.

# Step 6: Copy in boilerplate files (overwriting old ones)

The following boilerplate files are ones that typically do not change with the course, but ARE periodically updated for newer versions of software packages (to get security updates, etc.).  It is a good idea to copy in fresh copies periodically; at least at the start of a new course.

Follow instructions to [Copy in boilerplate files]({{'/topics/setup_boilerplate/' | relative_url }}).
They all go in the root directory of the repo.

# Step 7: Configure `_config.yml`

# Step 8: CONTINUE INSTRUCTIONS FROM HERE...
