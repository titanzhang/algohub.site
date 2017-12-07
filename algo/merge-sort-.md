---
layout: algo
index: true
comments: true
title: 'Merge Sort '
tags:
  - Divide and Conquer
modifier: 'false'
modtime: '2017-12-07T00:34:24.675Z'

---
{% capture section_desc %}Merge sort is a Divde and Conquer algorithm. It Divides the input array in to two sorted halves and conquers by recursively sorting the subarrays in each of the two subproblems created by the divide step and merges the two sorted halves. 

For example array {38, 27, 43, 3, 9, 82, 10}. If we take a closer look at the diagram, we can see that the array is recursively divided in two halves till the size becomes 1. Once the size becomes 1, the merge processes comes into action and starts merging arrays back till the complete array is merged.
![](http://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png){% endcapture %}
{% capture section_complexity %}As merge sort is an recursive algorithm and time complexity can be expressed as following recurrence relation. 
T(n) = 2T(n/2) + ϴ(n)

The time compplexity of merge sort is ϴ(nLogn) in all the three cases (worst, Average and best) as it always divides the array in to tow halves and takes linear time to merge two halves. {% endcapture %}
{% capture section_pseudocode %}Pseudocode

mergeSort(array, first, last):
   //sort array[first] to array[last-1]
   if last - first <= 1:
      return //length 0 or 1 already sorted

   mid = (first + last)/2
   mergeSort(array, first, mid) //recursive call 1
   mergeSort(array, mid, last) //recursive call 2
   merge(array, first, mid, last)

{% endcapture %}
{% capture section_edu %}{% youtube <https://youtu.be/JSceec-wEyw> %}
{% endcapture %}
{% capture section_app %}Merge Sort is useful for sorting linked lists in O(nLogn) time.In case of linked lists the case is different mainly due to difference in memory allocation of arrays and linked lists. Unlike arrays, linked list nodes may not be adjacent in memory. Unlike array, in linked list, we can insert items in the middle in O(1) extra space and O(1) time. Therefore merge operation of merge sort can be implemented without extra space for linked lists.
In arrays, we can do random access as elements are continuous in memory. Let us say we have an integer (4-byte) array A and let the address of A[0] be x then to access A[i], we can directly access the memory at (x + i*4). Unlike arrays, we can not do random access in linked list. Quick Sort requires a lot of this kind of access. In linked list to access i’th index, we have to travel each and every node from the head to i’th node as we don’t have continuous block of memory. Therefore, the overhead increases for quick sort. Merge sort accesses data sequentially and the need of random access is low.
It can be used in number of applications like 
The e-Commerce 
Inversion Count Problem 
External Sorting {% endcapture %}
{% include algo.html %}