---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
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
