---
layout: algo
index: true
comments: true
title: Merge sort Algorithm
tags:
  - Sort
modifier: diyao@cpp.edu
modtime: '2017-12-06T22:22:00.820Z'

---
{% capture section_desc %}In computer science, merge sort (also commonly spelled mergesort) is an efficient, general-purpose, comparison-based sorting algorithm. Most implementations produce a stable sort, which means that the implementation preserves the input order of equal elements in the sorted output. Mergesort is a divide and conquer algorithm that was invented by John von Neumann in 1945.[1] A detailed description and analysis of bottom-up mergesort appeared in a report by Goldstine and Neumann as early as 1948.{% endcapture %}
{% capture section_complexity %}Worst-case Performance: O(nlogn) 
Best-case Performance: O(n log n) typical, O(n) natural variant
Average Performance : O(nlogn)	
Worst-case space complexity: O(n){% endcapture %}
{% capture section_pseudocode %}// Sort elements lo through hi (exclusive) of array A.
algorithm mergesort(A, lo, hi) is
    if lo+1 < hi then  // Two or more elements.
        mid = ⌊(lo + hi) / 2⌋
        fork mergesort(A, lo, mid)
        mergesort(A, mid, hi)
        join
        merge(A, lo, mid, hi){% endcapture %}
{% capture section_edu %}{% youtube <http://www.youtube.com/embed/TzeBrDU-JaY?ecver=2> %}{% endcapture %}
{% capture section_app %}This algorithm is a trivial modification from the serial version, and its speedup is not impressive: when executed on an infinite number of processors, it runs in Θ(n) time, which is only a Θ(log n) improvement on the serial version. A better result can be obtained by using a parallelized merge algorithm, which gives parallelism Θ(n / (log n)2), meaning that this type of parallel merge sort runs in

{\displaystyle \Theta \left((n\log n)\cdot {\frac {(\log n)^{2}}{n}}\right)=\Theta ((\log n)^{3})} {\displaystyle \Theta \left((n\log n)\cdot {\frac {(\log n)^{2}}{n}}\right)=\Theta ((\log n)^{3})}
time if enough processors are available.[11] Such a sort can perform well in practice when combined with a fast stable sequential sort, such as insertion sort, and a fast sequential merge as a base case for merging small arrays.[12]

Merge sort was one of the first sorting algorithms where optimal speed up was achieved, with Richard Cole using a clever subsampling algorithm to ensure O(1) merge.[13] Other sophisticated parallel sorting algorithms can achieve the same or better time bounds with a lower constant. For example, in 1991 David Powers described a parallelized quicksort (and a related radix sort) that can operate in O(log n) time on a CRCW parallel random-access machine (PRAM) with n processors by performing partitioning implicitly.[14] Powers[15] further shows that a pipelined version of Batcher's Bitonic Mergesort at O((log n)2) time on a butterfly sorting network is in practice actually faster than his O(log n) sorts on a PRAM, and he provides detailed discussion of the hidden overheads in comparison, radix and parallel sorting.{% endcapture %}
{% include algo.html %}