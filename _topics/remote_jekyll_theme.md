---
topic: "Remote Jekyll Theme: Converting pre-W19 sites"
desc: "How to do the conversion"
---

Sites built in this format prior to W19 may have been built with their own full set of content for the `_includes` and `_layout` directories, 
and a variety of `.css` and `.js` files in a hacked together mess.

As of W19, we transitioned to use of a remote Jekyll theme in order to centralize the maintenance of these "plumbing" files.

This makes fixing bugs and adding features much, much easier.

This page describes how to convert one of the legacy sites to the new format.

# Steps

1. Update the Gemfile

2. Add the plugins to the _config.yml

2. Bravely delete the `site.css`, `_layouts` and `_includes` directories

