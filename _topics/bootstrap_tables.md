---
topic: "Bootstrap: Tables"
desc: "Bootstrap support for formatting HTML tables"
category_prefix: "Bootstrap: "
indent: true
---

The theme includes the CSS classes that are part of [Bootstrap]({{site.bootstrap_main_url}}).

So if you want to format tables using HTML, you can get lots of nice formatting options by simply including the
Bootstrap CSS clases that pertain to tables.  For example:

{% capture table_example_01 %}
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
<div class="card-text">
{{ table_example_01 }}
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->          
</div><!-- row -->

# For more information
* [Bootstrap v4.2 Tables Documentation](https://getbootstrap.com/docs/4.2/content/tables/)
