---
topic: "gitignore for Jekyll"
desc: "Which files should be in your .gitignore for a Jekyll repo"
---

Your .gitignore should include these files which Jekyll generates from source, or as part of the site building process:

```
_site/
vendor/bundle/
.vendor/
```

You may also want emacs backup files to be ignored, if you, or anyone editing your repo at command line, uses emacs:

```
*~
```
