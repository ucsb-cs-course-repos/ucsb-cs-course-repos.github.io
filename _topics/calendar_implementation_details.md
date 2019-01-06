---
topic: "Calendar: Implementation Details"
desc: "Under the hood with the calendar"
category_prefix: "Calendar: "
indent: true
---

This article assumes you've already read through the main [Calendar: ]({{'/topics/calendar/' | relative_url }}) article.

# Where to find the code that controls the calendar

In the theme [`ucsb-cs-course-repos/course-repo-jekyll-theme`](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme),
under the directory `assets`, there are several subdirectories:

| subdirectory | purpose |
|--------------|---------|
| 'assets/css'  | CSS files |
| 'assets/img'  | Image files |
| 'assets/js'  | JavaScript files |
| 'assets/pdf'  | PDF files |
{:.table .table-sm .table-striped .table-bordered}

As you might expect, the CSS rules for the calendar can be found in:
* [assets/css/calendar.css](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme/blob/master/assets/css/calendar.css)

Contrary to expectation, however, the JavaScript file that controls the calendar, however, is not in [assets/js](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme/tree/master/assets/js)
but instead, is found here:

* [`_includes/calendar.js`](https://github.com/ucsb-cs-course-repos/course-repo-jekyll-theme/blob/master/_includes/calendar.js)

# `calendar.js`

The code in calendar.js has several parts.


