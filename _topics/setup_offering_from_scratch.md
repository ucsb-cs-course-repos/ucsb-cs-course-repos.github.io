---
topic: "Setup: Offering From Scratch"
desc: "Setting up a new offering level repo in this format"
category_prefix: "Setup: "
indent: true
---

# Step 1: Course repo

The instructions for creating a course level repo include 
* Setting up an organization 
* Setting up a repo for the base url

For example:

| You need this organization | and this course level repo | before you can create this instance level repo | for this offering level web site |
|-|-|-|
| [ucsb-cs24](https://github.com/ucsb-cs8) | [ucsb-cs24/ucsb-cs24.github.io](https://github.com/ucsb-cs24/ucsb-cs24.github.io) |  [ucsb-cs24/w19](https://github.com/ucsb-cs24/w19) |  <https://ucsb-cs24.github.io/w19/> | 

# Step 2: Create Github repo

The github repo MUST follow the Github Pages standard naming convention if you want to host on Github pages

* <https://github.com/ucsb-cs8/ucsb-cs8.github.io>
* <https://github.com/ucsb-cs24/ucsb-cs24.github.io>
* <https://github.com/ucsb-cs111/ucsb-cs111.github.io>
etc.


# Step 3: Copy in boilerplate files

Follow instructions to [Copy in boilerplate files]({{'/topics/setup_boilerplate/' | relative_url }}).
They all go in the root directory of the repo.

# Step 4: Configure `_config.yml`

Create a file with the name `_config.yml` in the root directory of the repo,
following both sets of instructions below.

The order of items in the `_config.yml` file doesn't matter.

* [`_config.yml` instructions for all repos]({{  | relative_url}})
* [`_config.yml` instructions for course repos]({{  | relative_url}})

# TODO: Continue from here

