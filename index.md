---
layout: default
---
<!-- Articles -->
{% for page in site.pages %}
{% if page.index == true %}
<h3>{{ page.title}}</h3>
<!--p><span class="glyphicon glyphicon-time"></span>{{ page.date | date: "%b %Y" }}</p-->
<p>
{% if page.description %}
{{ page.description | markdownify }}
{% else %}
{{ page.content | strip_html | truncatewords: 50 }}
{% endif %}
</p>
<a class="btn btn-primary" href="{{ page.url }}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
<hr>
{% endif %}
{% endfor %}
