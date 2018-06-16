---
topic: "code blocks"
desc: "Getting nice preformatted code on your site, perhaps with syntax highlighting and line numbers"
---

# The simplest thing (this always works)

If you put code inside a block starting and ending with {% raw %}```{% endraw %}, it will render as code:


You write:


<pre>
```
# This is Python code
print ("Hello, World")
```
</pre>

You get:

```
# This is Python code
print ("Hello, World")
```

# Syntax Highlighting

If you have things set up properly, you can get fancier, with syntax highlighting for specific languages, line numbers, 
and so forth.

You write:

<pre>
```python
# This is Python code
print ("Hello, World")
```
</pre>

A list of supported languages appears here: <https://github.com/jneen/rouge/wiki/List-of-supported-languages-and-lexers>


You get:

```python
# This is Python code
print ("Hello, World")
```

A list of supported languages is here: <https://github.com/jneen/rouge/wiki/List-of-supported-languages-and-lexers>

# Syntax Highlighting with Line Numbers

<pre>
{% raw %}{% highlight python linenos %}{% endraw %}
def hello():
   print ("Hello, World!")
{% raw %}{% endhighlight %}{% endraw %}
</pre>

Gives:

{% highlight python linenos %}
def hello():
   print ("Hello, World!")
{% endhighlight %}

# Troubleshooting the colors and highlighting

If syntax highlighting with colors is not working, make sure that:

* The file `jekyll-github.css` should appear in the `_includes` directory.  You can find a copy here: [jekyll-github.css](https://github.com/ucsb-cs8-s18/ucsb-cs8-s18.github.io/blob/master/_includes/jekyll-github.css)
* That file should be included by `site.css` like this:
   <pre>
   &#123;% include jekyll-github.css %}
   </pre>
 * You may also have to do this in `homework.css`, `exam.css`, etc. if you have alternative css files for various layouts.


# See also

* <https://www.minh.io/blog/2015/06/28/jekyll-line-numbers/>
* <https://drewsilcock.co.uk/proper-linenumbers>
