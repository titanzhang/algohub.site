---
layout: algo
index: true
comments: true
title: Quick-Sort
tags:
  - Sort
modifier: joshuatellez@cpp.edu
modtime: '2017-12-06T01:51:02.477Z'

---
{% capture section_desc %}Quick-Sort is an algorithm that can sort the elements in a list. It is a divide-and-conquer type of algorithm that can sort a list as fast or faster than other sorting algorithms in most cases. The reason it is a divide-and-conquer algorithm is because it divides the list into two smaller lists and recursively calls quicksort on these two smaller lists. The algorithm can be broken up into three parts. 
![](https://i2.wp.com/www.techiedelight.com/wp-content/uploads/Quicksort.png?w=1100http://)
1. Select a pivot element
2. Sort the list so that each element lower than the pivot is to the left of it and each element higher than the pivot is to the right of it
3. Recursively repeat steps 1 and 2 on the sublist formed on the left of the pivot and the sublist formed on the right of the pivot

The base case, or when the recursive call knows when to stop, is when the size of a list is 1 or 0. If a list contains 1 element or no elements then it is trivially sorted. The element selected as the pivot and the way the lists are sorted in step 2 have varying implementations which can affect the performance of the algorithm. For simplicity let us choose the rightmost element as the pivot and do in-place sorting of the list. {% endcapture %}
{% capture section_complexity %}The complexity of the algorithm mostly depends on the selection of the pivot element. An ideal selection will be a pivot that will be placed exactly in the middle of the list. The worst pivot selection will be one that is higher or lower than all of the other elements. 

The worst-case time complexity is:
O(n^2) 

Best-time complexity is:
O( n log n)

Average-time complexity (done through extensive experiments):
O (n log n){% endcapture %}
{% capture section_pseudocode %}```
quicksort(List s)
	if S has one or no elements:
		return S
	else
		select the rightmost element of S as pivot
		Let 'low' be the list of all the elements lower than the pivot
		Let 'high' be the list of all the element higher than the pivot
		return quicksort(low) + pivot + quicksort(high)
```{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=XE4VP_8Y0BU%}{% endcapture %}
{% capture section_app %}A sorting algorithm has many applications and is used as the building blocks of other applications.
With sorting we can
1. Quickly find the maximum or minimum element in a list.
2. Quickly find the median element in a list
3. Quickly search the list to find a certain element using binary search
4. For a given element find its closest element
5. Quickly check if a list has any duplicates
6. Find the k-th largest element in the list{% endcapture %}
{% include algo.html %}