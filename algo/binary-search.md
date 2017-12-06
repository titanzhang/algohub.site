---
layout: algo
index: true
comments: true
title: Binary Search
tags:
  - Search
modifier: 'false'
modtime: '2017-12-06T02:03:32.251Z'

---
{% capture section_desc %}Given a sorted array array[] of n elements, write a function to search a given element x in array[].

A simple approach is to do linear search.The time complexity of above algorithm is O(n). Another approach to perform the same task is using Binary Search.

Binary Search: Search a sorted array by repeatedly dividing the search interval in half. Begin with an interval covering the whole array. If the value of the search key is less than the item in the middle of the interval, narrow the interval to the lower half. Otherwise narrow it to the upper half. Repeatedly check until the value is found or the interval is empty.

Example:
![](http://www.geeksforgeeks.org/wp-content/uploads/gq/2014/01/binary-search1.pngttp://){% endcapture %}
{% capture section_complexity %}Binary search runs in at worst logarithmic time, making O(log n) comparisons, where n is the number of elements in the array, the O is Big O notation, and log is the logarithm. Binary search takes constant (O(1)) space, meaning that the space taken by the algorithm is the same for any number of elements in the array. {% endcapture %}
{% capture section_pseudocode %}Given an array A of n elements with values or records A0, A1, ..., An−1, sorted such that A0 ≤ A1 ≤ ... ≤ An−1, and target value T, the following subroutine uses binary search to find the index of T in A.

Set L to 0 and R to n − 1.
If L > R, the search terminates as unsuccessful.
Set m (the position of the middle element) to the floor (the largest previous integer) of (L + R) / 2.
If Am < T, set L to m + 1 and go to step 2.
If Am > T, set R to m − 1 and go to step 2.
Now Am = T, the search is done; return m.
This iterative procedure keeps track of the search boundaries with the two variables. Some implementations may check whether the middle element is equal to the target at the end of the procedure. This results in a faster comparison loop, but requires one more iteration on average.{% endcapture %}
{% capture section_edu %}For better understanding you can check out this video: https://www.youtube.com/watch?v=P3YID7liBug{% endcapture %}
{% capture section_app %}Binary search can be used to access ordered data quickly when memory space is tight. Suppose you want to store a set of 100.000 32-bit integers in a searchable, ordered data structure but you are not going to change the set often. You can trivially store the integers in a sorted array of 400.000 bytes, and you can use binary search to access it fast. But if you put them e.g. into a B-tree, RB-tree or whatever "more dynamic" data structure, you start to incur memory overhead. To illustrate, storing the integers in any kind of tree where you have left child and right child pointers would make you consume at least 1.200.000 bytes of memory (assuming 32-bit memory architecture). Sure, there are optimizations you can do, but that's how it works in general.

Because it is very slow to update an ordered array (doing insertions or deletions), binary search is not useful when the array changes often.

Here some practical examples where I have used binary search:

Implementing a "switch() ... case:" construct in a virtual machine where the case labels are individual integers. If you have 100 cases, you can find the correct entry in 6 to 7 steps using binary search, where as sequence of conditional branches takes on average 50 comparisons.
Doing fast substring lookup using suffix arrays, which contain all the suffixes of the set of searchable strings in lexiographic ordering (I wanted to conserve memory and keep the implementation simple)
Finding numerical solutions to an equation (when you are lazy and do not mind to implement Newton's method){% endcapture %}
{% include algo.html %}