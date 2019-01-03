---
topic: "foo wiki migration"
desc: "The process of migrating materials from foo.cs.ucsb.edu to github"
---

For several of the courses that Phill Conrad has taught in the past, the course materials are located on a collection of Mediawiki sites
on the server <http://foo.cs.ucsb.edu>.   The long term strategy is to migrate all useful materials that are on that server into
the Markdown/Github/Jekyll format described on the website you are now reading.

This page documents some of the processes used in that migration.

As an example, we will focus on migrating materials from <http://foo.cs.ucsb.edu/32wiki> into <https://github.com/ucsb-cs32-s17.github.io> and <https://github.com/ucsb-cs32.github.io>.
A similar process would apply to any of the other courses on that site.


# Where?

We are migrating from <http://foo.cs.ucsb.edu/32wiki>.  

We are migrating to TWO sites:

* Homework, Labs, Exams, Lecture Notes and other material that is specific to a particular INSTANCE of the course with a certain professor in a certain quarter, goes here: <https://github.com/ucsb-cs32-s17.github.io> 
* Material that is generic, and reusable, such as tutorials about topics, goes here: <https://github.com/ucsb-cs32.github.io>.
* It is a best practice to factor out anything that can be factored out, so that it can be maintained on the site that is the reusable materials site (i.e. ucsb-cs32.github.io, instead of ucsb-cs32-s17.github.io).

# How to convert a homework or lab

Go to <http://foo.cs.ucsb.edu/32wiki> and find the homework assignment or lab that you want to migrate.

You'll be migrating it into <https://github.com/ucsb-cs32-s17.github.io> and putting it either under `_hwk` or `_lab` in a file such as `h00.md` or `lab00.md`.

# Manual or Auto conversion?

You need to decide whether to do a hand conversion from Mediawiki format to Markdown, or whether to do that with software.   

If you do it by hand, you'll want to consult the handy table of "Mediawiki to Markdown" syntax chart below.

If you do it with software, the software you want is called `pandoc`.  It is available on CSIL (I think), or you can install it on your mac with `homebrew`.

Even if you use pandoc, there is still some hand editing you'll have to do.

# How

In one window, have the Mediawiki page open, for example:

<https://foo.cs.ucsb.edu/32wiki/index.php/F15:Homework:H01>

In another window, open up an example of a similar assignment that already exists on the existing Jekyll/Github pages based website, e.g. H00, here: <https://ucsb-cs32-s17.github.io/hwk/h00/>.   We'll be using H00 as a template for creating H01.

The way you create a new Homework assignment is to add a new file into the `_hwk` directory of the github repo.

For example, under this directory for CS16 for Winter 2017, you can see files h00.md, h01.md, etc.

<https://github.com/ucsb-cs16-wi17/ucsb-cs16-wi17.github.io/tree/master/_hwk>   

When you see a folder in a directory such as the `h14` folder in the directory above, it signifies that the `h14.md` may refer to some embedded images.   The images, e.g. [pointerDiagramExample.png](https://github.com/ucsb-cs16-wi17/ucsb-cs16-wi17.github.io/blob/master/_hwk/h14/pointerDiagramExample.png) are located in a folder with the same name as the `.md` file that refers to them.   That way, inside the `.md` file, you can use a relative link such as:

```
![my pointer diagram](pointerDiagramExample.png)
```

That creates the following HTML:

```
<img alt="my pointer diagram" src="pointerDiagramExample.png">
```

What you want want to do is make h01.md under _hwk contain, at the top, the "front matter" that is necessary for the system to work... that looks something like this:

```
---
num: "h00"
desc: "Linear Search"
ready: true
assigned: 2017-04-13 09:30:00.00-7:00
due: 2017-04-18 09:30:00.00-7:00
---
```

You want to have this at the top of your `h01.md`, but you want to change `h00` to `h01`, change the other fields as needed.
The `ready` field should be `false` until you are ready for the assignment to go live.

# Mediawiki to Markdown

| Mediawiki | Markdown|  HTML  |
| ----------|---------|--------|
| `== Topic == ` | `## Topic` | `<h2>Topic</h2>` |
