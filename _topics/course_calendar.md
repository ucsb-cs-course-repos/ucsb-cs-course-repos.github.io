---
topic: "Course Calendar"
desc: "How to use the course calendar system"
---

# Calendar System

A calendar of course events can be calculated automatically from dates
in the front matter of various collections through some custom
Javascript code.  This is definitely the part of the system most in
need of some "refactoring love"&mdash;it is a bit of a hack, albeit an
extraordinarily useful one.

# Configurig start date, and length of term

First, configure the following information for your term in `_config.yml`.

<style>
div.table1 * code { white-space: pre; }
</style>

<div class="table1" markdown="1">

| variable | explanation | example  |
|----------|-------------|----------|
| `start_week` | The number to use for the first week on the calendar.  Normally `1`, except for example during Fall quarter at UCSB, when the first week is an incomplete week starting on a Thursday. | `start_week: 0` |
| `start_date`| The date on which the term starts.  It should be a Sunday, or an error message will be generated | `start_date: 2017-09-24 00:00:00.00-7:00` |
| `num_weeks` | Number of weeks in the calendar, not including the exam week, if any. | `num_weeks: 10` |
|`extra_exam_week` | Do you want an exam week (e.g. for final exams) to be included in the calendar? Normally true except for summer session terms. | `extra_exam_week: true`|

</div>


# Adding holidays and other custom dates

Custom dates can be added to the calendar using this syntax in the
`_config.yml` file.  For UCSB, the [Office of the Registar's Calendar Page](https://registrar.sa.ucsb.edu/calinfo.aspx) is a good source for these dates.

```yml
cal_dates: >
  [
  {"label":"First day of classes", "date":"2017-09-24" },
  {"label":"Last day to drop classes via GOLD","date":"2017-10-25" },
  {"label":"Univ Holiday", "date":"2017-11-10" },
  {"label":"Clocks back 1 hour", "date":"2017-11-05" },	
  {"label":"Univ Holiday", "date":"2017-11-23" },
  {"label":"Univ Holiday", "date":"2017-11-24" },
  {"label":"Last day of classes", "date":"2017-12-08" },			
  ]
```

# How it works

The files needed for the calendar system include these (paths relative to root)

{% include calendar_files.md %}


A further discussion of the calendar can be found on a separate page: [Course Calendar](/topics/course_calendar/)

The calendar itself is produced by a single file, `_info/calendar.md` which contains almost nothing; the entirety of the file is typically as follows:

{% highlight markdown linenos %}
---
title: Calendar
layout: calendar
---

<div id='calendar' class='calendar'></div>

{% endhighlight %}



The layout file `_layouts/calendar.html` specifies, indirectly, that some extra javascript should be included from a few third party libraries (mostly for date handling) as well as, crucially, `calendar.js`, which where most of the work is done to calculate the calendar.

The bulk of the code that produces the calendar is in the file `_includes/calendar.js`, which together with `calendar.css` is the place that, if you need to make changes, you'll want to consult.

The calculation of the calendar happens in three phases.   

* Phase 1: Create JavaScript objects for each Collection
* Phase 2: Iterate through those objects, and populate an object indexed by dates.
* Phase 3: Use JQuery rules to add custom content to each date for the things that should appears on that date.
