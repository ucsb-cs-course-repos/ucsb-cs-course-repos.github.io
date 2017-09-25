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
