---
layout: algo
index: true
comments: true
title: QuickSort
tags:
  - Sort
  - Divide and Conquer
modifier: 'false'
modtime: '2017-12-06T03:33:31.540Z'

---
{% capture section_desc %}> Quick-Sort is an efficient sorting algorithm. It is a divide-and-conquer type of algorithm that can sort a list as fast or faster than other sorting algorithms in most cases. The reason it is a divide-and-conquer algorithm is because it divides the list into two smaller lists and recursively calls quicksort on these two smaller lists. The algorithm can be broken up into three parts.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Quicksort-diagram.svg/400px-Quicksort-diagram.svg.png)

## **STEP 1. Choosing the pivot**
Choosing the pivot is an essential step. Depending on the pivot the algorithm may run very fast, or in quadric time.:		
1. Some fixed element: e.g. the first, the last, the one in the middle.
This is a bad choice - the pivot may turn to be the smallest or the largest element, then one of the partitions will be empty.
2. Randomly chosen (by random generator ) - still a bad choice.
3. The median of the array (if the array has N numbers, the median is the [N/2] largest number. This is difficult to compute - increases the complexity.
4. The median-of-three choice: take the first, the last and the middle element. 
Choose the median of these three elements.
Example:
8, 3, 25, 6, 10, 17, 1, 2, 18, 5. 
The first element is 8, the middle - 10, the last - 5.
The median of [8, 10, 5] is 8.

## **STEP 2. Partitioning**
Partitioning is illustrated on the above example.
1. The first action is to get the pivot out of the way - swap it with the last element
								5, 3, 25, 6, 10, 17, 1, 2, 18, 82. 
2. We want larger elements to go to the right and smaller elements to go to the left.Two "fingers" are used to scan the elements from left to right and from right to left:
						[5, 3, 25, 6, 10, 17, 1, 2, 18, 8]
						 ^                              ^
						 i                              j			
				-While i is to the left of j, we move i right, skipping all the elements less than the pivot. If an element is found greater then the pivot, i stops.
			-While j is to the right of i, we move j left, skipping all the elements greater than the pivot. If an element is found less then the pivot, j stops.
			-When both i and j have stopped, the elements are swapped.
			-When i and j have crossed, no swap is performed, scanning stops, and the element pointed to by i is swapped with the pivot .
	In the example the first swapping will be between 25 and 2, the second between 10 and 1.
3. Restore the pivot.After restoring the pivot we obtain the following partitioning into three groups:
									[5, 3, 2, 6, 1] [ 8 ] [10, 25, 18, 17]
									
## **STEP 3. Recursively quicksort the left and the right parts**{% endcapture %}
{% capture section_complexity %}* **Worst-case**: O(N^2)
This happens when the pivot is the smallest (or the largest) element. Then one of the partitions is empty, and we repeat recursively the procedure for N-1 elements.
* **Best-case**:O(NlogN) The best case is when the pivot is the median of the array, and then the left and the right part will have same size.
There are logN partitions, and to obtain each partitions we do N comparisons (and not more than N/2 swaps). Hence the complexity is O(NlogN)
* **Average-case** - O(NlogN){% endcapture %}
{% capture section_pseudocode %}left points to the first element in the array currently processed, right points to the last element.
```
if( left + 10 <= right)
    {
	int i = left, j = right - 1;
	for ( ; ; )
	  {
	    while (a[++i] < pivot  ) {}   // move the left finger
	    while (pivot  < a[--j] ) {}	  // move the right finger
			if (i < j) swap (a[i],a[j]);  // swap	
            else  break;		  // break if fingers have crossed
          }
       swap (a[I], a[right-1);		  // restore the pivot
       quicksort ( a, left, i-1);	  // call quicksort for the left part
       quicksort (a, i+1, right);	  // call quicksort for the left part
     }
		 else  insertionsort (a, left, right);
```{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=3DV8GO9g7B4&t=2285s%}{% endcapture %}
{% capture section_app %}A sorting algorithm has many applications and is used as the building blocks of other applications.
With sorting we can
1. Quickly find the median element in a list
2. Quickly find the maximum or minimum element in a list.
3. For a given element find its closest element
4. Quickly search the list to find a certain element using binary search
5. Find the k-th largest element in the list
6. Quickly check if a list has any duplicates
7. Commercial applications use Quicksort - generally it runs fast, no additional memory, 
this compensates for the rare occasions when it runs with O(N2)Never use in applications which require guaranteed response time:
		* Life-critical (medical monitoring, life support in aircraft and space craft)
		* Mission-critical (monitoring and control in industrial and research plants handling dangerous materials, control for aircraft, defense, etc)
> unless you assume the worst-case response time.{% endcapture %}
{% include algo.html %}