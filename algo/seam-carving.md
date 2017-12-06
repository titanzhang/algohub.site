---
layout: algo
index: true
comments: true
title: Seam Carving
tags:
  - Greedy
  - Image Processing
modifier: 'false'
modtime: '2017-12-06T03:04:34.388Z'

---
{% capture section_desc %}Seam Carving is an amazing algorithm that allows for Content Aware resizing, including shrinking or expanding of an image. It produces much more visually sensical results than traditional algorithms that simply scale, stretch or crop the original image.{% endcapture %}
{% capture section_complexity %}The complexity of Seam Carving is dependent on the number of seams you want to add or remove to the image. For each seam, you must go through each pixel in the image atleast once. Therefore, the complexity is O(n*s*e) where m is the number of seams and e is the energy calculation per pass through.{% endcapture %}
{% capture section_pseudocode %}{% endcapture %}
{% capture section_edu %}{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}