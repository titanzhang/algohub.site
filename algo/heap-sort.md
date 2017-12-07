---
layout: algo
index: true
comments: true
title: Heap Sort
tags:
  - Sort
modifier: 'false'
modtime: '2017-12-07T02:27:41.386Z'

---
{% capture section_desc %}Heap Sort is a comparison based sorting algorithm that makes use of a complete binary tree data structure, called a heap.  In a minimum binary heap, the parent of any given node is at least as small as both of its child nodes with the root node being the smallest.  Similarly, a maximum binary heap has the property that each parent node is at least as great as both of its child nodes with the root node being the largest.

https://www.webopedia.com/TERM/H/heap_sort.html
http://www.geeksforgeeks.org/heap-sort/{% endcapture %}
{% capture section_complexity %}The complexity of Heap Sort is O(nlog(n)) for n nodes.  In particular, each call to the heapify function has time complexity O(log(n)) and since this occurs n times, we have a total time complexity of O(nlog(n)).

http://www.geeksforgeeks.org/heap-sort/{% endcapture %}
{% capture section_pseudocode %}1. Remove the root element
2. Replace the root element with the leaf node furthest to the right
{% endcapture %}
{% capture section_edu %}{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}