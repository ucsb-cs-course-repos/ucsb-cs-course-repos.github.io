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

Go to that site, and find the homework assignment or lab that you want to migrate.

Then, you need to decide whether to do a hand conversion from Mediawiki format to Markdown, or whether to do that with software.   

If you do it by hand, you'll want to consult the handy table of "Mediawiki to Markdown" syntax chart below.

If you do it with software, the software you want is called `pandoc`.  It is available on CSIL (I think), or you can install it on your mac with `homebrew`.


# Mediawiki to Markdown

| Mediawiki | Markdown|  HTML  |
| ----------|---------|--------|
| `== Topic == ` | `## Topic` | `<h2>Topic</h2>` |
