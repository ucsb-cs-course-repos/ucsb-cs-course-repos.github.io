---
topic: "Calendar: "
desc: "Features that generate the calendar automatically"
category_prefix: "Calendar: "
---

<style>
.table-first-col-wide td:first-of-type {
   width: 15em; 
}
</style>

One of the value added features of the
[course-repo-jekyll-theme](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme)
is the ability to automatically generate a calendar of course
materials that updates itself whenever any assignment dates change.

# How to set up the calendar

To get a calendar, you need the following:

1.  A page where the layout is specified as calendar in the front matter,
    (i.e. that bit of YAML code at the top of each file that generates a page):

    ```
    ---
    title: Course Calendar
    layout: calendar
    ---
    ```

    This layout pulls in the necessary CSS and JavaScript files to generate
    the calendar

2.  The calendar is placed on the page by inserting this
    unassuming bit of HTML code:

    ```html
    <div id='calendar'
        class='calendar'
        data-weeks="{{site.num_weeks}}"
        data-start-date="{{site.start_date}}">
    </div>
    ```

3.  In the `_config.yml` for the site, the following values are used
    to control the calendar settings:

    | Value | Explanation |
    |-------|-------------|
    | `start_week` | The number used to label the first week of the quarter.  Typically `1` except for Fall Quarters at UCSB that have a `0` week starting on a Thursday |
    | `start_date` | The date of the Sunday that starts the calendar.  This must be a Sunday, or the calendar will not be generated and an error message will be generated in its place. |
    | `num_weeks` | Typically 10 for a 10 week UCSB quarter, but may be 6 for a summer session A or B.  Use 11 in Fall when there is a week 0.|
    | `extra_exam_week` | Typically `true` when you want a final exam week to be added to the calendar. The value `false` is used when there is no final exam for the course, or in Summer Sessions when the final is given during the last week of the course. |
    | `cal_dates` | A YAML array (list) of objects, each of which is a an extra date to put on the calendar. |
    {:.table .table-sm .table-striped .table-bordered .table-first-col-wide}


    The objects in the `cal_dates` list have two keys:

    |Key | Explanation |
    |----|-------------|
    | `label` | The text that you want to appear on that date |
    | `date` | The date on which the text should appear |
    {:.table .table-sm .table-striped .table-bordered .table-first-col-wide}

# Complete example of `_config.yml` file settings for calendar

```
start_week: 1
start_date: 2019-01-06 
num_weeks: 10
extra_exam_week: true

cal_dates: >
     [
     {"label":"First day of classes", "date":"2019-01-07" },
     {"label":"Univ Holiday", "date":"2019-01-21" },
     {"label":"Drop deadline (no W grade)","date":"2019-02-04" },
     {"label":"Univ Holiday", "date":"2019-02-18" },
     {"label":"W19 Instruction Ends", "date":"2019-03-15" },  
     {"label":"W19 Quarter Ends", "date":"2019-03-22" }          
     ]
```

   
