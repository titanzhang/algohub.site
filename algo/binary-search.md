---
layout: algo
index: true
comments: true
title: Binary Search
tags:
  - Search
modifier: 'false'
modtime: '2017-12-07T06:13:49.647Z'

---
{% capture section_desc %}Given a sorted array array[] of n elements, write a function to search a given element x in array[].
A simple approach is to do linear search. The time complexity of above algorithm is O(n). Another
approach to perform the same task is using Binary Search.
Binary Search: Search a sorted array by repeatedly dividing the search interval in half. Begin with an
interval covering the whole array. If the value of the search key is less than the item in the middle of the
interval, narrow the interval to the lower half. Otherwise narrow it to the upper half. Repeatedly check
until the value is found or the interval is empty.{% endcapture %}
{% capture section_complexity %}Binary search runs in at worst logarithmic time, making O(log n) comparisons, where n is the number of elements in the array, the O is Big O notation, and log is the logarithm. Binary search takes constant (O(1)) space, meaning that the space taken by the algorithm is the same for any number of elements in the array. {% endcapture %}
{% capture section_pseudocode %}Given an array A of n elements with values or records A0, A1, ..., An−1, sorted such that A0 ≤ A1 ≤ ... ≤ An−1, and target value T, the following subroutine uses binary search to find the index of T in A.Set L to 0 and R to n − 1.
If L > R, the search terminates as unsuccessful.
Set m (the position of the middle element) to the floor (the largest previous integer) of (L + R) / 2.
If Am < T, set L to m + 1 and go to step 2.
If Am > T, set R to m − 1 and go to step 2.
Now Am = T, the search is done; return m.
This iterative procedure keeps track of the search boundaries with the two variables. Some implementations may check whether the middle element is equal to the target at the end of the procedure. This results in a faster comparison loop, but requires one more iteration on average.{% endcapture %}
{% capture section_edu %}For better understanding you can check out this video: https://www.youtube.com/watch?v=P3YID7liBug{% endcapture %}
{% capture section_app %}Software development examples:
• Debugging a somewhat linear piece of code. if the code has many steps mostly executed in a sequence
and there's a bug, you can isolate the bug by finding the earliest step where the code produces results
which are different from the expected ones.
• Cherry picking a bad code change from a release candidate. When pushing a large code release in
production one would sometimes find that there's a problem with that binary. If reverting the whole
release wasn't an option the release engineer would binary search through the code change ids. He
would figure out the earliest code change which creates the bug.
• Figuring out resource requirements for a large system. one could try running load tests on the system
and binary search for the minimum amount of CPUs required to handle a predicted load. (this approach
is better than random guessing but much worse than doing some analysis of your system and doing some
good educated guesses)
Algorithmic puzzle examples:
• Given A a sorted array find out how many times does x occur in A.
• Given a real number x, find out its cubic root.
• Given A a sorted array with distinct numbers, find out an i such that A[i] == i.
• Given the +,-,*,/,sqrt operations and a real number x find an algorithm to get log_2_x.
• Given an array of distinct numbers A such that A[0] > A[1] and A[n-1] > A[n-2] find out a local
minimum (find out an i such that A[i-1] > A[i] < A[i + 1]).
• Let A be a sorted array with distinct elements. A is rotated k positions to the right (k is unknown).
Find out k.
• Let A be a sorted array with distinct elements. A is rotated k positions to the right (k is unknown).
Find out if A contains a number x.
• Given two sorted arrays of length n and m, find out the kth element of their sorted union.
• Given A, an array comprised of an increasing sequence of numbers followed immediately by a
decreasing one. Determine if a given number x is in the array.
• Given an array of N distinct int values in ascending order, determine whether a given integer is in
the array. You may use only additions and subtractions and a constant amount of extra memory.
• Player A chooses a secret number n. Player B can guess a number x and A replies how does x
compare to n (equal, larger, smaller). What's an efficient strategy for B to guess n.{% endcapture %}
{% include algo.html %}