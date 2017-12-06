---
layout: algo
index: true
comments: true
title: Bubble Sort
tags:
  - Sort
  - Search
  - Algorithm
  - Simple Sort Alg
  - Bubble Sort
modifier: 'true'
modtime: '2017-12-06T00:55:28.090Z'

---
{% capture section_desc %}Bubble sort is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller or larger elements "bubble" to the top of the list.

Bubble sort example: 

![](http://www.algolist.net/img/sorts/bubble-sort-3.png){% endcapture %}
{% capture section_complexity %}Bubble sort has worst-case and average complexity both О(n<sup>2</sup>), where n is the number of items being sorted. When the list is already sorted (best-case), the complexity of bubble sort is only O(n).{% endcapture %}
{% capture section_pseudocode %}<p style="margin-left: 0px">list A</p>
<p style="margin-left: 0px">n = length(A)</p>
<p style="margin-left: 10px">Do</p>
<p style="margin-left: 20px">swapped = false</p>
<p style="margin-left: 20px">for i = 1 to n-1</p>
<p style="margin-left: 30px">if A[i-1] > A[i] then</p>
<p style="margin-left: 40px">swap(A[i-1], A[i])</p>
<p style="margin-left: 40px">swapped = true</p>
<p style="margin-left: 30px">end if</p>
<p style="margin-left: 20px">end for</p>
<p style="margin-left: 10px">While (swapped = true)</p>{% endcapture %}
{% capture section_edu %}Here is the tutorial video for Bubble Sort:
{% youtube https://www.youtube.com/watch?v=6Gv8vg0kcHc %}{% endcapture %}
{% capture section_app %}* Due to its simplicity, bubble sort is often used to introduce the concept of a sorting algorithm.
* In computer graphics it is popular for its capability to detect a very small error (like swap of just two elements) in almost-sorted arrays and fix it with just linear complexity (2n).
* For example, it is used in a polygon filling algorithm, where bounding lines are sorted by their x coordinate at a specific scan line (a line parallel to x axis) and with incrementing y their order changes (two elements are swapped) only at intersections of two lines{% endcapture %}
{% include algo.html %}