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

That ruby version should also be set in the `setup.sh` file on this line of code:

```
rvm install ruby-2.4.2
```

