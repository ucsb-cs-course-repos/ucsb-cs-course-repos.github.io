---
topic: "Setup: "
desc: "Setting up a new course repo in this format"
category_prefix: "Setup: "
---

So you want to set up a new course repo in this format.  There are six cases, as shown in the table below.

The row in the table is determined by whether you are starting from scratch, or copying materials from a repo that already exists:

* If you are just getting started with this format, the "Starting from scratch" option is the only one you need to consult.
* If you are offering a course that has used this format before, and you are copying a repo from another instructor, then the first question is whether that repo uses the new w19 and later format, or the old legacy format.
   * If the `_config.yml` file of the repo has `jekyll-remote-theme` in it, then it's the new format.
   * Otherwise, it's the old pre-w19 format.

The column is determined by what kind of repo you are setting up:
* If you are setting up a site for a course that has never used this format before, you'll actually follow the instructions in BOTH columns.
* If you are setting up a repo that serves as the base of the website, and holds material that is global across all offerings of the course,  you want the first column.
* If you are setting up a repo for a particular instructor's offering of a course in a particular term, (e.g. `S19` or `S19-mirza`, you want the second column.


{%- capture c_from_scratch -%}{{'/topics/setup_course_from_scratch/' | relative_url }}{%- endcapture -%}
{%- capture o_from_scratch -%}{{'/topics/setup_offering_from_scratch/' | relative_url }}{%- endcapture -%}
{%- capture c_from_pre_w19 -%}{{'/topics/setup_course_from_pre_w19/' | relative_url }} {%- endcapture -%}
{%- capture o_from_pre_w19 -%}({{'/topics/setup_offering_from_pre_w19/' | relative_url }}{%- endcapture -%}
{%- capture c_from_prev -%}{{'/topics/setup_course_from_previous/' | relative_url }} {%- endcapture -%}
{%- capture o_from_prev -%}{{'/topics/setup_offering_from_previous/' | relative_url }} {%- endcapture -%}

|    | Course-level-repo <br> e.g. [ucsb-cs8.github.io](https://ucsb-cs8.github.io) | Instance repo <br> e.g. [ucsb-cs8.github.io/w19/](https://ucsb-cs8.github.io/w19/) |
|---|---|---|
| Starting from scratch   | [instructions]({{ c_from_scratch}})  | [instructions]({{ o_from_scratch}}) | 
| Starting from pre-W19 repo  | [instructions]({{ c_from_pre_w19}}) | [instructions]({{ o_from_pre_w19}})  | 
| Starting from a previous post W19 repo  | [instructions]({{ c_from_prev}})  | [instructions]({{ o_from_prev}})  | 
