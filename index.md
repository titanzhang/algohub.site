---
layout: default
---
<!-- Articles -->
{% for page in site.pages %}
{% if page.index == true %}
<div class="row">
<h3><a href="{{ page.url }}">{{ page.title}}</a></h3>
<h4>
{% for tag in page.tags %}
  <span class="label label-info">{{ tag }}</span>
{% endfor %}
</h4>
<div>Updated: <span class="glyphicon glyphicon-time"></span>{{ page.modtime | date: "%m/%d/%Y" }}</div>
<div>{{ page.content | strip_html | truncatewords:75 }}</div>
<hr/>
</div>
{% endif %}
{% endfor %}
