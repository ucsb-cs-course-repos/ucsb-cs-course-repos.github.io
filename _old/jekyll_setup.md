---
topic: "Jekyll: Setup"
desc: "Dealing with Jekyll versions, Ruby Versions, etc."
category_prefix: "Jekyll: "
indent: true
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


And in the `.travis.yml` file as well:

```yml
rvm:
  - 2.5.1
```
