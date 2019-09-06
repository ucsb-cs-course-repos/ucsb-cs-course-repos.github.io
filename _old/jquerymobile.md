---
topic: JQueryMobile
desc: Oddities of working with JQueryMobile
---

NOTE: This page only applies to pre-w19 course repos.  The w19 and later format uses Bootstrap instead of JQuery Mobile.

JQueryMobile is used on all of these sites in order to provide "responsiveness", i.e. making the site look good and perform well across web browsers on many different platforms 
(cell phones, iPads, desktops).

It provides some nice things but also comes with a few quirks.

# The normal JQuery way of doing things doesn't work

The typical JQuery idiom for "doing something" is this:

```javascript
// A $( document ).ready() block.
$( document ).ready(function() {
    console.log( "ready!" );
});
```

That DOES NOT NECESSARILY DO WHAT YOU WANT when doing JQuery mobile.   The reason is that JQuery mobile tries to optimize page loading through AJAX&mdash;if the browser
tries to navigate to another page on the same website, instead of doing a full page refresh and rebuild, it tries to just swap out the content of the page, leaving the old
page cached in the browser.    This is a nice feature, but has some consequences.

1.  Always put trailing slashes on internal links to pages.  Navigate to `[H04](/hwk/h04/)` with a trailing slash, NOT to  `[H04](/hwk/h04)` without a trailing slash.

2.  If you want some JavaScript to run on EVERY PAGE LOAD and not just on the first page load, use the following idiom instead of `$( document ).ready(...`.   This is the remedy for things that "work on the first page you navigate to, but not subsequent page", or that "fix themselves" on a page refresh, for example.

   ```javascript
   <script>
      $(document).on("pageshow",function(){
         console.log("pageshow event");
         /* DO THE THINGS... */
      });
   </script>
   ```
