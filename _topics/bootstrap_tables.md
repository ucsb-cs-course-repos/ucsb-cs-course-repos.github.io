---
topic: "Bootstrap: Tables"
desc: "Bootstrap support for formatting HTML tables"
category_prefix: "Bootstrap: "
indent: true
---

The theme includes the CSS classes that are part of [Bootstrap]({{site.bootstrap_main_url}}).

So if you want to format tables using HTML, you can get lots of nice formatting options by simply including the
Bootstrap CSS clases that pertain to tables.  For example:

<div class="row">
<div class="col-sm-6">
<div class="card">
<div class="card-body">
<h5 class="card-title">HTML</h5>
<div class="card-text" markdown="1">
```html
<table class="table">
  <thead>
    <tr>
      <th scope="col">HTML</th>
      <th scope="col">Result</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
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
<table class="table">
  <thead>
    <tr>
      <th scope="col">HTML</th>
      <th scope="col">Result</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
</div><!-- card-text -->
</div><!-- card-body -->
</div><!-- card -->
</div><!-- col-sm-6 -->          
</div><!-- row -->

# For more information
* [Bootstrap v4.2 Tables Documentation](https://getbootstrap.com/docs/4.2/content/tables/)
