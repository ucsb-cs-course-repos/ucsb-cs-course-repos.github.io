---
topic: "Setup: Offering From Previous"
desc: "Setting up a new offering in this format, starting with an existing repo"
category_prefix: "Setup: "
indent: true
---

These instructions apply to the case where:
* there is already a repo set up in this format for your course for a previous offering,
(e.g. <https://ucsb-cs56.github.io/s19> 
* you want to use that offering as a template to set up a website for a new offering (e.g. <https://ucsb-cs56.github.io/f19>

In this case, 

* The course level organization, e.g. <https://github.com/ucsb-cs56>, is already setup 
* The course level repo, e.g. <https://github.com/ucsb-cs16/ucsb-cs56.github.io> is already setup
* The offering level repo for the previous quarter, e.g. <https://github.com/ucsb-cs16/ucsb-cs56.github.io> is already setup

# Step 1: Get yourself added as an "owner" of the course level organization.

There will be a course level github organization, e.g. <https://github.com/ucsb-cs56>. You will need owner permission for this organziation.  Contact whomever you need to contact to get yourself added to that organization. That will typically be one of the instructors that taught the course in the past.

# Step 2: Create a new repo with the name of the term (quarter or semester)

Inside the course level github organization, e.g. <https://github.com/ucsb-cs56>, create a repo with the name of the term, e.g. `f19`.

If there is more than one offering of that course at your institution during that term, use a naming convention that disambiguates such as `f19-mwf vs. `f19-tr` or `f19-smith` vs. `f19-jones`.

# Step 3: Clone repo to local system

TODO: Write instructions

Now you have a choice between either step 4, which copies the old material along with the github revision history, or step 5 which copies only the files (a fresh start).

# Step 4a: Add remote for old repo 

NOTE: Only perform step 4a/4b OR step 5a/5b, NOT BOTH.

TODO: Write instructions

# Step 4b: Pull in files from old repo

TODO: Write instructions

# Step 5a: Copy files from old repo 

NOTE: Only perform step 4a/4b OR step 5a/5b, NOT BOTH.

TODO: Write instructions

# Step 5b: Commit files to new repo

TODO: Write instructions


# Step 6: Copy in boilerplate files (overwriting old ones)

The following boilerplate files are ones that typically do not change with the course, but ARE periodically updated for newer versions of software packages (to get security updates, etc.).  It is a good idea to copy in fresh copies periodically; at least at the start of a new course.

Follow instructions to [Copy in boilerplate files]({{'/topics/setup_boilerplate/' | relative_url }}).
They all go in the root directory of the repo.

# Step 7: Configure `_config.yml`

# Step 8: CONTINUE INSTRUCTIONS FROM HERE...
