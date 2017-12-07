---
layout: algo
index: true
comments: true
title: 'Quick Sort '
tags:
  - Divide and Conquer
modifier: kkohli@cpp.edu
modtime: '2017-12-07T01:01:34.965Z'

---
{% capture section_desc %}Quick sort is a divide and conquer algorithm. It is an sorting algorithm works in a systematic method for placing the element of an array in order. It can sort the elements 2 to 3 times faster then merge sort and heap sort. 
It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quick Sort that pick pivot in different ways.

Always pick first element as pivot.
Always pick last element as pivot (implemented below)
Pick a random element as pivot.
Pick median as pivot.
The key process in quick Sort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.{% endcapture %}
{% capture section_complexity %}Time taken by quick sort in general is T(n) = T(k) + T(n-k-1)+  ϴ(n)

The first two terms are for two recursive calls, the last term is for the partition process. K is the number of elements smaller then pivot.

**Worst case** : it occurs when partition process always picks greatest or smaller element as pivot 
T(n) = T(0) + T(n-1) +  ϴ(n)
which is equivalent to  
 T(n) = T(n-1) +  ϴ(n) Solution will be  ϴ(n2).
 
 **Best case**  : occurs when the partition process always picks the middle element as pivot. 
 T(n) = 2T(n/2) + ϴ(n) Solution will be ϴ(nLogn)
 
 **Average Case** : To do average case analysis, we need to consider all possible permutation of array and calculate time taken by every permutation which doesn’t look easy.
We can get an idea of average case by considering the case when partition puts O(n/9) elements in one set and O(9n/10) elements in other set. Following is recurrence for this case.

 T(n) = T(n/9) + T(9n/10) +  ϴ(n)
 Solution will be ϴ(nLogn){% endcapture %}
{% capture section_pseudocode %}Pseudo code for the partition 

/* This function takes last element as pivot, places
   the pivot element at its correct position in sorted
    array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right
   of pivot */
partition (arr[], low, high)
{
    // pivot (Element to be placed at right position)
    pivot = arr[high];  
 
    i = (low - 1)  // Index of smaller element

    for (j = low; j <= high- 1; j++)
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
{% capture section_app %}In QuickSort A value called a pivot is first selected, usually it is the value of the middle element. A "partition" of the array is then preformed. Any elements that are less than the pivot value will be moved to the beginning of the list, followed by the pivot element, and then all values that are bigger will appear at the end. The elements in each 'sublist' do not need to be sorted in any way with respect to each other, but this order must be maintained. The QuickSort algorithm is then used on each sublist, through recursion. This continues until the structure has been sorted.

Applications: commercial application use quicksort

- genarally it runs fast

-no additional memory is required

life critical:-

1.medical monitoring

2.life support in aircraft & spacecraft)

-mission critical :-

1.monitring & control in industrial & reaserch plants handling dangerous material

2.control for aircraft.

3.defence{% endcapture %}
{% include algo.html %}