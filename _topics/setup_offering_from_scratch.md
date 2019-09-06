---
topic: "Setup: Offering From Scratch"
desc: "Setting up a new offering level repo in this format"
category_prefix: "Setup: "
indent: true
---

## Welcome!

Dear instructor,

We are happy that you are considering using these website templates for your course. We've been enjoying a relatively standardized setup and the convenience of hosting our course sites via GitHub pages.
These templates are being developed and used by the instructors at UCSB, and we welcome other instructors to help us and improve documentation. Submit any questions or concerns via the [GitHub Issues](https://github.com/ucsb-cs-course-repos/ucsb-cs-course-repos.github.io/issues).

The templates run using the Jekyll engine, which mainly means that the exact file names and their relative placement are **very important**. 

Documentation for the setup is a work in progress, but below are the rough steps to get you started.


# Step 1: Course repo

The instructions for creating a course level repo include 
* Setting up an organization 
* Setting up a repo for the base url

For example:

| You need this organization | and this course level repo | before you can create this instance level repo | for this offering level web site |
|-|-|-|
| [ucsb-cs24](https://github.com/ucsb-cs8) | [ucsb-cs24/ucsb-cs24.github.io](https://github.com/ucsb-cs24/ucsb-cs24.github.io) |  [ucsb-cs24/w19](https://github.com/ucsb-cs24/w19) |  <https://ucsb-cs24.github.io/w19/> | 
{:.table .table-sm .table-striped .table-bordered}


## Create and set up the GitHub organizations and repos

* create the GitHub Organization for the overall course, and then, in that organization, create a repo for the specific instance/offering of that course: 
	* For example, `ucsb-cs16` is an organization/repo for the main CS 16 course, but the `w19` and `s19` (Winter and Spring 2019) versions are for the specific offerings of the course (summer uses the `m` prefix). 
	* Therefore, the main course repo has the info and resources applicable to the course regardless of the term (e.g., references for how to set up the programming environment, which are used every time the course is taught), whereas the course instances/offerings contain due dates, office hours, schedule, etc. that are specific to the quarter/semester the course is taught in.


# Step 2: Create Github repo for the course offering

The github repo MUST follow the Github Pages standard naming convention if you want to host on Github pages

* <https://github.com/ucsb-cs8/w19>
* <https://github.com/ucsb-cs24/s19>
* <https://github.com/ucsb-cs111/s19>
* <https://github.com/ucsb-int15/s19>

etc.


* Activate GitHub Pages by going into your repo's Settings and under the "GitHub Pages" option select Source "master branch".

* To develop the course locally on your laptop (instead of through the GitHub interface), clone your repo as well as the repo with the boilerplate files:
```bash
git clone https://github.com/ucsb-cs16/s19.git cs16-s19
```
   * **Pro tip**: as you can see above, I recommend cloning the repo into a directory that's prefixed with the course code, which allows you to differentiate between the different course repos from the same term. Otherwise, if you teach, e.g., cs16 and cs8 in the S19 quarter, you'll end up with two `s19` repos for two different quarters.



# Step 3: Copy in boilerplate files

Follow instructions to [Copy in boilerplate files]({{'/topics/setup_boilerplate/' | relative_url }}).
They all go in the root directory of the repo.


Here's the step-by-step:

* Copy the initial boilerplate files into your course repo that is in the `course_dir` path (change the path in the command below). 
For more information, see the [Basic setup for w19 and later](https://ucsb-cs-course-repos.github.io/topics/basic_setup_w19_and_later)

TODO: Dead link above, fix it.   In the meantime, 
The boilerplate files are here: <https://github.com/ucsb-cs-course-repos/boilerplate>


```bash
cd boilerplate
cp Gemfile .gitignore setup.sh jekyll.sh .travis.yml  <course_dir>
```
For example,
`cp Gemfile .gitignore setup.sh jekyll.sh .travis.yml ../int15-s19/`

* Commit the files that you just added (confirm them by first running `git status`).

For example,
```bash
$ git status
On branch master
... 
Changes not staged for commit:
...
	modified:   .gitignore

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.travis.yml
	Gemfile
	jekyll.sh
	setup.sh
$ git add .
$ git status
...
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   .gitignore
	new file:   .travis.yml
	new file:   Gemfile
	new file:   jekyll.sh
	new file:   setup.sh

$ git commit -m "Added initial boilerplate files"
```



### Develop and debug locally and via Travis CI

You can skip this step if you'd rather not have to test the site locally, which means that you'll probably be operating on the live version of the website running from the course repo.

* To be able to test your site locally, before you push it to GitHub, run the `setup.sh` script, which can take a while (it will begin installing the necessary Ruby gems):
```bash
./setup.sh
```
	* This step sometimes results in errors due to the individual laptop setup (e.g., multiple Ruby versions can make it unhappy). Help us by contributing the errors and the solutions. 
	* Make sure that your paths do not contain spaces.
  * This page might be helpful <https://ucsb-cs-course-repos.github.io/topics/rvm/>


* Activate Travis CI [https://travis-ci.org/] in order to make sure that you know when your builds are working or failing and why.



# Step 4: Configure `_config.yml`

Create a file with the name `_config.yml` in the root directory of the repo,
following both sets of instructions below.

The order of items in the `_config.yml` file doesn't matter.

* [`_config.yml` instructions for all repos]({{ '/topics/config_yml_common' | relative_url}})
* [`_config.yml` instructions for course repos]({{ '/topics/config_yml_course' | relative_url}})



* `_config.yml` file (has to be at the top level of the site) will provide the info about your course. The file essentially sets up global variables that can then be accessed from the specific course pages. It allows you to input the information that will be used by the automatically-generated course calendar (e.g., the number of weeks, dates of holidays). 
	* See examples from <https://ucsb-cs-course-repos.github.io/topics/config_yml/>. 
	* Quick hack: you can run global search and replace on the course number and quarter to adapt it to your course. E.g., I used "CS 16 W 19" config as a basis for the "INT 15 S 19" file, so I replaced "cs16" with "int15", "Winter" with "Spring", and "w19" with "s19" (note, in a few places, e.g., in `course`, such replacement changes capitalization).
	*  `start_date` has to be a Sunday 
  
  
 # Step 5: Configure the top navigation menu

* The menu of your site is handled by the file `_data/navigation.yml`. Let's create a simple version, which will allow us to display our syllabus.
	* Create the `_data` directory
	* Add to it a new file: `navigation.yml`
	* Paste the following into that file:

```
# the production_url is the url that the parent/child site have in common
#  e.g. production_url: https://ucsb-cs24.github.io
#  for main site http://ucsb-cs24.github.io
#  and child sites
#    https://ucsb-cs24.github.io/w18
#    https://ucsb-cs24.github.io/f18
#    https://ucsb-cs24.github.io/s19
#    etc.

production_url: https://ucsb-int15.github.io

# List the title and url for each item on navigation bar.
# For items that should be relative urls, put the baseurl of the site
# they come from, / for main site, and /f18, /s19, etc for child sites.

home:
   title: UCSB INT15
   url: /
   baseurl: /

offerings:
   title: S19
   url: /
   baseurl: /s19

offering_links:
  - title: Syllabus
    url: /info/syllabus/
    description: "University and course policies"
```


* Look at the example sites and select the one whose layout you like best. Then copy its `_data/navigation.yml` into your repo and modify to your liking. 


# Step 6: Add site's pages

## Step 6.1: Add index.md

* Let's add our basic index page, `index.md` (the only page that lives at the top level, next to `config.yml`), with the following content:

```
---
title: "INT 15: Data Science Tools and Techniques, Spring 2019, Franks and Kharitonova"
---

# INT 15: Data Science Tools and Techniques, Spring 2019, Franks and Kharitonova

Welcome to INT 15!
```

## Step 6.2: Create the pags to include

TODO: Add instructions about the `_include`


## Step 6.3: Update idex.md to include dropdowns

Once you see the index page show up and you added the appropriate `_include` pages, you can customize it by adding the drop-down menus, which will work with the folders you'll be creating:

```
{% raw %}{%{% endraw %} include collapse-button.html label="Information" id="info-list" {% raw %}%}{% endraw %}
<div class="collapse" id="info-list">
 <div class="card card-body">
 {% raw %} {% {% endraw %}include info_list.html {% raw %}%}{% endraw %}
 </div>
</div>


{% raw %}{% {% endraw %}include collapse-button.html label="Lecture Notes and Slides" id="lectures" {% raw %}%}{% endraw %}
<div class="collapse" id="lectures">
 <div class="card card-body" markdown="1">
   {% raw %}{%{% endraw %}include lecnot_table.html {% raw %}%}{% endraw %}
 </div>
</div>


{% raw %}{% {% endraw %}include collapse-button.html label="Homework" id="hwk" {% raw %}%}{% endraw %}
<div class="collapse" id="hwk">
 <div class="card card-body">
  {% raw %}{%{% endraw %} include hwk_table.html {% raw %}%}{% endraw %}
 </div>
</div>

{% raw %}{% {% endraw %}include collapse-button.html label="Lab" id="lab" {% raw %}%}{% endraw %}
<div class="collapse" id="lab">
 <div class="card card-body">
 {% raw %} {% {% endraw %}include lab_table.html {% raw %}%}{% endraw %}
 </div>
</div>

{% raw %}{% {% endraw %}include collapse-button.html label="Exams" id="exams" {% raw %}%}{% endraw %}
<div class="collapse" id="exams">
 <div class="card card-body">
  {% raw %}{%{% endraw %}include exam_table.html{% raw %} %}{% endraw %}
 </div>
</div>
```


### Step 6.4: Create `_info` pages

* Let's create our syllabus! Add a directory `_info` and add `syllabus.md` to it (yes, you'll be writing it in Markdown).

For now, let's just add the following stub:

```md
---
title: "Syllabus"
layout: default
ready: true
---

# Syllabus <a name="top"></a>

This document and others linked within it should be your PRIMARY source for understanding the expectations of this course. Be sure to read it *carefully*.
You must contact the instructor for clarification if you receive information from any another source that is in contradiction to what is provided below.
```

* Commit them and see that they show up on the website.

```
$ git add _data _info index.md

$ git commit -m "Added index.md, _data/navigation.yml and _info/syllabus.md"
$ git push origin master
```

Now you can begin customizing the site with the rest of the pages.
 
  
  



# TODO: Continue from here

* TODO: Write about creating `index.md`
* TODO: Write about creating `_lab`, `_hwk`, `_pages`, etc.
* TODO: Mostly this is following the leader from existing offering level repos, but a guide would be super handy.
