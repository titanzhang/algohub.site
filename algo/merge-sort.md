---
layout: algo
index: true
comments: true
title: Merge Sort
tags:
  - Divide and Conquer
  - Sort
modifier: yingyingz@cpp.edu
modtime: '2017-12-06T06:04:23.719Z'

---
{% capture section_desc %}Merge Sort is a divide and conquer algorithm that was invented by [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann) in 1945. It is an efficient, general-purpose, comparison-based sorting algorithm.A merge sort works as follows:		
  	1. Divide the unsorted list into n sublists, each containing 1 element (a list of 1 element is considered sorted).
		2. Repeatedly merge sublists to produce new sorted sublists until there is only 1 sublist remaining. This will be the sorted list.
		
The following diagram from Wikipedia shows the complete merge sort process for an example array {38, 27, 43, 3, 9, 82, 10}. ![](http://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png){% endcapture %}
{% capture section_complexity %}Worst-case Performance:        O(nlogn) Best-case Performance:          O(n log n) typical,
																						     O(n) natural variant
																								 
Average Performance :            O(nlogn)			Worst-case space complexity: O(n){% endcapture %}
{% capture section_pseudocode %}				MergeSort(arr[], l,  r)If r > l     
		
		1. Find the middle point to divide the array into two halves:  
             middle m = (l+r)/2
						 
     2. Call mergeSort for first half:   
             Call mergeSort(arr, l, m)
						 
     3. Call mergeSort for second half:
             Call mergeSort(arr, m+1, r)
						 
     4. Merge the two halves sorted in step 2 and 3:
             Call merge(arr, l, m, r){% endcapture %}
{% capture section_edu %}Here is a video tutorial:
{% youtube https://www.youtube.com/watch?v=TzeBrDU-JaY %}{% endcapture %}
{% capture section_app %}1.  Merge Sort is useful for sorting linked lists in O(nLogn) time.In case of linked lists the case is different mainly due to difference in memory allocation of arrays and linked lists. Unlike arrays, linked list nodes may not be adjacent in memory. Unlike array, in linked list, we can insert items in the middle in O(1) extra space and O(1) time. Therefore merge operation of merge sort can be implemented without extra space for linked lists.		In arrays, we can do random access as elements are continuous in memory. Let us say we have an integer (4-byte) array A and let the address of A[0]  be x then to access A[i], we can directly access the memory at (x + i4). Unlike arrays, we can not do random access in linked list. Quick Sort requires a lot of this kind of access. In linked list to access i’th index, we have to travel each and every node from the head to i’th node as we don’t have continuous block of memory. Therefore, the overhead increases for quick sort. Merge sort accesses data sequentially and the need of random access is low.
		
2. Inversion Count Problem3.  Used in External Sorting{% endcapture %}
{% include algo.html %}