---
topic: "Bootstrap: Tables"
desc: "Bootstrap support for formatting HTML tables"
category_prefix: "Bootstrap: "
indent: true
---

The theme includes the CSS classes that are part of [Bootstrap]({{site.bootstrap_main_url}}).

# Using Markdown

To get the Bootstrap formatting on Markdown tables, put this on a line by itself just before the table: `{:.table}`.  For example:

{% capture table_example_01 %}
{: .table}
| Heading1 | Heading2 | Heading 3 |
|----------|----------|-----------|
| Data1a   | Data2a   | Data3a    |
| Data1b   | Data2b   | Data3b    |
| Data1b   | Data2b   | Data3b    |
{% endcapture %}

<div class="row">
<div class="col-sm-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Markdown</h5>
<div class="card-text" markdown="1">
```html
{{ table_example_01 }}
```
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->
<div class="col-sm-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Result</h5>
<div class="card-text" markdown="1">
{{ table_example_01 }}
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->          
</div><!-- row -->

There are a variety of other table classes; those can be substituted for `table`, all of which are documented 
at the [Bootstrap Table Class Documentation](https://getbootstrap.com/docs/4.2/content/tables/).  Here is a sample:

{:.table .table-sm .table-bordered .table-striped}
| Class | Markdown Syntax | Description |
|-------|-----------------|-------------|
| `.table` |  `{:.table}`    | Default Bootstrap Table |
| `.table-sm` | `{:.table-sm}` | More compact table (less padding around cells) |
| `.table-striped` | `{:.table-dark}` | Zebra-striped (grey every other row) |
| `.table-bordered` | `{:.table-bordered}` | Thin border around all cells |
| `.table-borderless` | `{:.table-borderless}` | No borders |
| `.table-dark` |  `{:.table-dark}`    | Inverted Colors |

These can also be combined; for example, the table immediately above this sentences was formated with:

```
{:.table .table-sm .table-striped .table-bordered}
```

# Using HTML

If you want to format tables using HTML, you can get lots of nice formatting options by simply including the
Bootstrap CSS clases that pertain to tables.  For example:

{% capture table_example_02 %}
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{% endcapture %}

<div class="row">
<div class="col-sm-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">HTML</h5>
<div class="card-text" markdown="1">
```html
{{ table_example_02 }}
```
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->
<div class="col-sm-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">Result</h5>
<div class="card-text">
{{ table_example_02 }}
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->          
</div><!-- row -->

# For more information
* [Bootstrap v4.2 Tables Documentation](https://getbootstrap.com/docs/4.2/content/tables/)
