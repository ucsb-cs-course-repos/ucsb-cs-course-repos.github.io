---
topic: "Troubleshooting"
desc: "Frequently Encountered Problems"
---


# Cant find gem bundler (>= 0.a) with executable bundle

Solution: 

```
gem update --system
```

Source: <https://bundler.io/blog/2019/05/14/solutions-for-cant-find-gem-bundler-with-executable-bundle.html>



# You published a page and it is not showing up

For example, in Winter 2020, we thought we published a lab but it wouldn't show up on the website.

Solution: check the markup, especially for valid Markdown: the issue ended up being in a file that had a * that was part of a "code": https://github.com/ucsb-cs8/w20/commit/bf3ce87ebba8c9469a02dc8ca66bc96f28e7b86e.
