---
layout: algo
index: true
comments: true
title: Bogosort
tags:
  - Sort
modifier: shmatsumura@cpp.edu
modtime: '2017-12-06T05:10:10.760Z'

---
{% capture section_desc %}Bogosort, a portmanteau of bogus and sort, is a purposefully inefficient sorting algorithm.  Though humorous in intent, this algorithm can be used as a pedagogical tool to compare algorithms and highlight the nature of a random process.{% endcapture %}
{% capture section_complexity %}The best-case time complexity will be when Bogosort randomly shuffles to the correct order on the first attempt.  It will take linear time to confirm the proper ordering, therefore the O(n) best-case.  Though it is possible for Bogosort to run forever, the higher number of total attempts decreases this likelihood.
*
* Best case time complexity: O(n)
* 
* Average and worst case time complexity: O( (n-1)! ){% endcapture %}
{% capture section_pseudocode %}1. While array not sorted
2. Random shuffle array
3. If sorted, exit end while loop{% endcapture %}
{% capture section_edu %}15 Sorting Algorithms in 6 Minutesby Timo BingmannThe last 30 seconds is bogosort
{% youtube https://www.youtube.com/watch?v=kPRA0W1kECg %}{% endcapture %}
{% capture section_app %}As a comparison to more common sorts like Quicksort, Merge Sort, and Insertion Sort, Bogosort can be used to demonstrate the impracticalness of exponential algorithms.  There are many problems that cannot be solved in a timely manner and require special work arounds.{% endcapture %}
{% include algo.html %}
