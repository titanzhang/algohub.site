---
layout: algo
index: true
comments: true
title: Bogosort
tags:
  - Sort
modifier: shmatsumura@cpp.edu
modtime: '2017-12-06T04:37:38.090Z'

---
{% capture section_desc %}Bogosort, a portmanteau of bogus and sort, is a purposefully inefficient sorting algorithm.  Though humorous in intent, this algorithm can be used as a pedagogical tool to highlight poor code.Algorithm steps:
1.	Randomize shuffle of array
2.	Check if array is in order
3.	If not in order, return to step 1{% endcapture %}
{% capture section_complexity %}The best-case time complexity will be when Bogosort randomly shuffles to the correct order on the first attempt.  It will take linear time to confirm the proper ordering, therefore the O(n) best-case.  Though it is possible for Bogosort to run forever, the higher number of total attempts decreases this likelihood.

* Best case time complexity: O(n)
* 
* Average and worst case time complexity: O( (n-1)! ){% endcapture %}
{% capture section_pseudocode %}1. While array not sorted
2. Random shuffle array
3. If sorted, exit end while loop{% endcapture %}
{% capture section_edu %}15 Sorting Algorithms in 6 Minutes
by Timo Bingmann{% youtube https://www.youtube.com/watch?v=kPRA0W1kECg %}{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}