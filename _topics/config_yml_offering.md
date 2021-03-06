---
topic: "config.yml: offering"
desc: "The central configuration file for the site"
category_prefix: "config_yml: "
indent: true
---

The settings listed below should be present in every `_config.yml` file that for an offering level repo, such as those in this table.  You can click the `_config.yml` links for examples of what each `_config.yml` looks like.  Comparing what is the same, and what varies as you read over the documentation below can be helpful in understanding the structure of this file.

| Site | Repo | `_config.yml` |
|------|------|--------------|
| [ucsb-cs8.github.io/w19-mirza/](https://ucsb-cs8.github.io/w19-mirza/) | [ucsb-cs8/w19-mirza/](https://github.com/ucsb-cs8/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs8/w19-mirza/blob/master/_config.yml) |
| [ucsb-cs24.github.io/w19/](https://ucsb-cs24.github.io/w19/) | [ucsb-cs24/w19/](https://github.com/ucsb-cs24/w19-mirza/) | [`_config.yml`](https://github.com/ucsb-cs24/w19/blob/master/_config.yml) |
| [ucsb-cs111.github.io/w19/](https://ucsb-cs111.github.io/w19/) | [ucsb-cs111/w19/](https://github.com/ucsb-cs111/w19/) | [`_config.yml`](https://github.com/ucsb-cs111/w19/blob/master/_config.yml) |
{:.table .table-sm .table-striped .table-bordered}

etc.


# `url`, `baseurl`, `github_url`

Fill in these values, following the pattern shown.

The value of `github_url` is used for the "Edit this page on github" links in the footer of each page.

```
url: https://ucsb-cs64.github.io 
baseurl: "/w19"  
github_url: https://github.com/ucsb-cs64/w19
```

If there are two or more sites in a given quarter for a certain course, the `baseurl` and `github_url` for those will differ.
For example:

```
url: https://ucsb-cs8.github.io 
baseurl: "/w19-matni"  
github_url: https://github.com/ucsb-cs8/w19-matni
```

and

```
url: https://ucsb-cs8.github.io 
baseurl: "/w19-mirza"  
github_url: https://github.com/ucsb-cs8/w19-mirza
```



# `title`, `course`, `qtr`, `quarter`

Fill these in as shown.  

```
title: "UCSB CS8"
course: "CS8"
qtr: "W19"
quarter: "Winter 2019"
```

You can use these values in content on web pages by writing, for example:
* `{% raw %}{{{% endraw %} site.title {% raw %}}}{% endraw %}` anywhere you want `UCSB CS8` to appear.
* `{% raw %}{{{% endraw %} site.course {% raw %}}}{% endraw %}` anywhere you want `CS8` to appear.

This allows you to more easily copy/paste content (e.g. your syllabus) between and among course websites and have the content
remain correct.

# `lecture_days_of_week`

This value is used by the scripts in the repo <https://github.com/ucsb-cs-course-repos/tools>.  The scripts in that repo are a work in progress.  When complete, they will assist in populating the `_lecture` directory with files that have the correct dates for the lectures for a particular quarter.

```
lecture_days_of_week: MW
```

# `start_week`, `start_date`, etc.

The following values are used to configure the calendar:

```
start_week: 1
start_date: 2020-01-05
num_weeks: 10
extra_exam_week: true
```

For `start_week`, the usual value should be `1`.  At UCSB, Fall quarter has an extra partial week sometimes called "week 0". To start t
the calendar with week 0, enter `0` for `start_week`.

For `start_date`, enter the date for the *Sunday that starts the week in which classes start*.  This is a limitation of the software; the `start_date` needs to be a Sunday for it to work properly.

For `num_weeks`, enter the number of weeks in the term.  This is typically `10` at UCSB, except for Fall, when it is `11` (when starting with week 0), and summer sessions A and B, which are `6`.

The `extra_exam_week` includes a week for Finals on the calendar.    This is typically `true` for Fall, Winter and Spring, and false in Summer Sessions.

# `cal_dates`

The `cal_dates` section is formatted as JSON objects representing dates that will be placed on the calendar.  
Edit it as appropriate entering the dates for your particular term.

```
cal_dates: >                                                                 
  [                                                                          
    {"label":"F19 official start date", "date":"2019-09-22" },               
    {"label":"F19 1st day of instruction", "date":"2019-09-26" },            
    {"label":"Univ Holiday", "date":"2019-11-11" },                          
    {"label":"Univ Holiday", "date":"2019-11-28" },                          
    {"label":"Univ Holiday", "date":"2019-11-29" },                          
    {"label":"F19 instruction ends", "date":"2019-12-06" },                  
    {"label":"F19 finals start", "date":"2019-12-07" },                      
    {"label":"F19 finals end", "date":"2019-12-13" },                        
    {"label":"F19 qtr ends", "date":"2019-12-13" }                           
  ]    
```

TODO: CONTINUE DOCUMENTING ...

TODO: FILL THIS IN
