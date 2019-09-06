---
topic: "JavaScript: "
desc: "An overview of how JavaScript works with the course websites"
category_prefix: "JavaScript: "
---

Everything on this page applies to the w19 and later course repos.

In the main Jekyll theme, there is JavaScript code that is loaded for
* JQuery
* Bootstrap

There is also custom JavaScript code that runs to 
* set up the course calendar
* set up pagination on homeworks and exams

If you want custom JavaScript to be loaded for a particular site, you can create a directory called
`assets/js` and put, for example, `cs111_head.js` in that directory, i.e. (/assets/js/cs111_head.js).

You can set the name of the script (or scripts) in _config.yml that you want to run in the head of each page, like this:

```yml
head_scripts: 
   - /assets/js/cs111_head.js
```

For best results, use JQuery syntax to indicate scripts that should be run when the page is loaded.  For example:

```javascript
$( document ).ready(function() {
    console.log( "cs111_head.js" );
});
```

