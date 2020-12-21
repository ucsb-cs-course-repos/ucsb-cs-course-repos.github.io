---
topic: "Variable Substitution"
desc: "Making your materials DRY by factoring out stuff that changes"
---

If there are things embedded in your course materials (e.g. programming assignments) that change from course instance to course instance, 
such as the link to submit the assignment, names of your TAs, the day of week that your sections meet, etc. you can factor those out into
variables at the top of the file, and then substitute them in the body of the Markdown.

Here's an example:

```
---
desc: "ArrayList, Sorting, Comparators, Lambdas"
assigned: 2020-11-02 17:00
due: 2020-11-09 23:00
layout: lab
num: jpa04
ready: true
course_org: https://github.com/ucsb-cs156-f20
starter_repo: https://github.com/ucsb-cs156-f20/STARTER-jpa04
gradescope: https://www.gradescope.com/courses/126922/assignments/814483
---
```

In the body of your assignment, you use this syntax to indicate that a substituiton from the top of the page should be made:

```
Please consult the code in the starter repo, found at this link: <{{page.starter_repo}}>.
```

The syntax here is that the double `{{page.variable}}` are used to indicate that the value of `page.variable` should be referenced and inserted.

You can also substitute variables from the `_config.yml` file that are site-wide in scope.  For example, if in your `_config.yml` you have:

```
ta_list: "Scott and Mara"
```

Then you can put this in your assignments:

```
If you have quesitons, please visit the instructor office hours, or
the office hours of your TAs, {{site.ta_list}}.
```

# What is this syntax?

The syntax here is called "Liquid Template Language", and it's a feature of Jekyll that is layered on top of Markdown.

The full documentation for it is here: <https://shopify.dev/docs/themes/liquid/reference>

# Handy Tips

This is not full documentation for Liquid Template Language; it's just a list of the features I use most often and find myself needing to look up.

Default Values: [documentation](https://shopify.dev/docs/themes/liquid/reference/filters/additional-filters#default)

```
Your TAs {{ site.TA_list | default: "(see the syllabus for their names)" }} also have office hours.
```

