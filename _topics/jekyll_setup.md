---
topic: "Jekyll Setup"
desc: "Dealing with Jekyll versions, Ruby Versions, etc."
---

In the `Gemfile` of each course repo, there is a line like this:

```
ruby "2.4.2"
```

In principle, the version of Ruby you "want" comes from this page:

* <https://pages.github.com/versions/>

That ruby version should also be set in the `setup.sh` file on these lines of code:

```
rvm install ruby-2.4.2
rvm use	2.4.2
```

And in `jekyll.sh` in this line of code:

```
rvm use ruby-2.4.2
```

Even better, just specify the following to automatically choose the Ruby version from the Gemfile.

```
rvm use
``` 

