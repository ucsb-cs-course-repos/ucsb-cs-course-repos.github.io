---
topic: "Gradescope Converstion"
desc: "Converting submit.cs labs to Gradescope"
---

# THIS IS VERY ROUGH

Let's all improve it incrementally over time.

# (1) Clone the repo that helps you build the `Autograder.zip`

This repo helps you build an `Autograder.zip`:

* <https://github.com/project-anacapa/gradescope-simple-template-draft>

# (2) Create a repo for your assignment

In that repo, put:

* All of the starter code that the students do NOT need to upload with their solution, but that should just be there
* These special files:
   * `grade.sh`
   * `apt-get.sh`  (should have command to install libjson)
   * OPTIONAL: `requirements.txt` only for Python assignments that needs special `pip install` stuff
   
