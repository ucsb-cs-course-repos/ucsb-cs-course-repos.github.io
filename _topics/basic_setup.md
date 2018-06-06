---
topic: "Basic Setup"
desc: "Basic Setup for a new course"
---

# The two parts

A course website in this format is really two websites in one.

| Example | Description |
|---------|-------------|
| <https://ucsb-cs8.github.io> | Material that goes with the course permanently, e.g. lessons, tutorials, etc. |
| <https://ucsb-cs8=s18.github.io> | Material that is specific to a particular quarter and instructor, e.g. syllabus, homework assignments, labs, exams, seating charts, etc. |

# Setting up the website for the quarter

## Configure the basic information for your course in `_config.yml`:

Example:

```yml
course: "CS56"
qtr: "F17"
quarter: "Fall 2017"
piazza_url: https://piazza.com/class/j80k1o0zsxg1j7
gauchospace_course_page: https://gauchospace.ucsb.edu/courses/course/view.php?id=19139
```

