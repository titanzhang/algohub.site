---
layout: algo
index: true
comments: true
title: 'Quick Sort '
tags:
  - Divide and Conquer
modifier: kkohli@cpp.edu
modtime: '2017-12-07T01:08:41.205Z'

---
{% capture section_desc %}Quick sort is a divide and conquer algorithm. It is an sorting algorithm works in a systematic method for placing the element of an array in order. It can sort the elements 2 to 3 times faster then merge sort and heap sort. 
It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quick Sort that pick pivot in different ways.Always pick first element as pivot.
Always pick last element as pivot (implemented below)
Pick a random element as pivot.
Pick median as pivot.
The key process in quick Sort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.

For Example After recursively sorting the subarrays to the left and right of the pivot, the subarray to the left of the pivot is [2, 3, 5], and the subarray to the right of the pivot is [7, 9, 10, 11, 12, 14]. So the subarray has [2, 3, 5], followed by 6, followed by [7, 9, 10, 11, 12, 14]. The subarray is sorted.
The base cases are subarrays of fewer than two elements, just as in merge sort. In merge sort, you never see a subarray with no elements, but you can in quicksort, if the other elements in the subarray are all less than the pivot or all greater than the pivot.
Let's go back to the conquer step and walk through the recursive sorting of the subarrays. After the first partition, we have have subarrays of [5, 2, 3] and [12, 7, 14, 9, 10, 11], with 6 as the pivot.
To sort the subarray [5, 2, 3], we choose 3 as the pivot. After partitioning, we have [2, 3, 5]. The subarray [2], to the left of the pivot, is a base case when we recurse, as is the subarray [5], to the right of the pivot.
To sort the subarray [12, 7, 14, 9, 10, 11], we choose 11 as the pivot, resulting in [7, 9, 10] to the left of the pivot and [14, 12] to the right. After these subarrays are sorted, we have [7, 9, 10], followed by 11, followed by [12, 14].
Here is how the entire quicksort algorithm unfolds. Array locations in blue have been pivots in previous recursive calls, and so the values in these locations will not be examined or moved again:
![](https://s3.amazonaws.com/ka-cs-algorithms/qsort_recursion.png){% endcapture %}
{% capture section_complexity %}Time taken by quick sort in general is T(n) = T(k) + T(n-k-1)+  ϴ(n)The first two terms are for two recursive calls, the last term is for the partition process. K is the number of elements smaller then pivot.**Worst case** : it occurs when partition process always picks greatest or smaller element as pivot 
T(n) = T(0) + T(n-1) +  ϴ(n)
which is equivalent to  
 T(n) = T(n-1) +  ϴ(n) Solution will be  ϴ(n2).
 
 **Best case**  : occurs when the partition process always picks the middle element as pivot. 
 T(n) = 2T(n/2) + ϴ(n) Solution will be ϴ(nLogn)
 
 **Average Case** : To do average case analysis, we need to consider all possible permutation of array and calculate time taken by every permutation which doesn’t look easy.
We can get an idea of average case by considering the case when partition puts O(n/9) elements in one set and O(9n/10) elements in other set. Following is recurrence for this case. T(n) = T(n/9) + T(9n/10) +  ϴ(n)
 Solution will be ϴ(nLogn){% endcapture %}
{% capture section_pseudocode %}Pseudo code for the partition /* This function takes last element as pivot, places
   the pivot element at its correct position in sorted
    array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right
   of pivot */
partition (arr[], low, high)
{
    // pivot (Element to be placed at right position)
    pivot = arr[high];  
 
    i = (low - 1)  // Index of smaller element    for (j = low; j <= high- 1; j++)
    {
        // If current element is smaller than or
        // equal to pivot
        if (arr[j] <= pivot)
        {
            i++;    // increment index of smaller element
            swap arr[i] and arr[j]
        }
    }
    swap arr[i + 1] and arr[high])
    return (i + 1){% endcapture %}
{% capture section_edu %}{% youtube <https://youtu.be/COk73cpQbFQ> %}{% endcapture %}
{% capture section_app %}In QuickSort A value called a pivot is first selected, usually it is the value of the middle element. A "partition" of the array is then preformed. Any elements that are less than the pivot value will be moved to the beginning of the list, followed by the pivot element, and then all values that are bigger will appear at the end. The elements in each 'sublist' do not need to be sorted in any way with respect to each other, but this order must be maintained. The QuickSort algorithm is then used on each sublist, through recursion. This continues until the structure has been sorted.Applications: commercial application use quicksort- genarally it runs fast-no additional memory is requiredlife critical:-1.medical monitoring2.life support in aircraft & spacecraft)-mission critical :-1.monitring & control in industrial & reaserch plants handling dangerous material2.control for aircraft.3.defence{% endcapture %}
{% include algo.html %}