---
layout: algo
index: true
comments: true
title: Greedy Algorithm
tags:
  - Greedy
modifier: 'true'
modtime: '2017-12-05T03:13:44.366Z'

---
{% capture section_desc %}Greedy algorithms can be characterized as being short sighted, and also as non-recoverable. They are ideal only for problems which have optimal substructure. Despite this, for many simple problems (e.g. giving change), the best suited algorithms are greedy algorithms. It is important, however, to note that the greedy algorithm can be used as a selection algorithm to prioritize options within a search, or branch-and-bound algorithm. There are a few variations to the greedy algorithm:

Pure greedy algorithms

Orthogonal greedy algorithms

Relaxed greedy algorithms{% endcapture %}
{% capture section_complexity %}GREEDY ALGORITHM USED IN DIFFERENT PROBLEMS:

• Coin/Money Change Problem: Time complexity of the above solution is O(n2 ) 
• Job Scheduling Problem: Time complexity of the above solution is O(n2 )
• Activity Scheduling Problem: Time complexity of the above solution is O(n2 )
• Fractional-knapsack Problem: Time complexity of the above solution is O(n log n).

 {% endcapture %}
{% capture section_pseudocode %}
(a) Greedy Algorithm for Activity Scheduling: 

1) Sort the tasks in increasing order of their finish times. Rename the tasks if necessary so that the sorted order of tasks is ha1, a2, . . . , ani.
2) Let A = {a1}. (A will contain the solution at the end of the algorithm.) 
3) Let j = 1. (Variable j represents the index of the last task chosen in A so that fj will be the maximum finish time among all the tasks in A.) 
4) for i = 2 to n do if (si ≥ fj) then Add ai to A. (Task ai is compatible with all the tasks in A.) Let j = i. (Now fi is the maximum finish time among the tasks in A.) 
5) Output A

.......................................
.......................................

(b) Greedy Algorithm for Fractional Knapsack: 

1)	For each item Ij , compute the ratio vj/wj (i.e., value per unit weight), 1 ≤ j ≤ n.
 
2)	Sort the items in decreasing order of their ratios. Rename the items if necessary so that the sorted order of items is hI1, I2, . . . Ini.
 
3)	Set Total Weight = 0 and j = 1.
 
4)	While (TotalWeight < W) do Let r = W− TotalWeight. (Variable r represents the remaining capacity of the knapsack.) if (wj > r) then Add r lbs of item Ij to knapsack. Set TotalWeight = W. else Add Ij to knapsack. Set TotalWeight = TotalWeight + wj. j = j + 1.

5)	Output the contents of Knapsack.

........................................
........................................

c) Huffman’s Algorithm: 
Given: 
A set C of n ≥ 2 symbols to be encoded; for each symbol c ∈ C, a frequency value f(c). Required: 
A codeword for each symbol in C such that the cost of encoding is minimized. 
Steps: 
1) Create a node (of the tree) corresponding to each symbol in C. 
2) while (n ≥ 2) do (a) Let x be a node with smallest frequency value; remove x. 
(a) Let y be a node with smallest frequency value; remove y. 
(b) Create a new node z with x and y as its children. 
(c) Set f(z) = f(x) + f(y). (e) Set n = n − 1. 3. For each internal node of the tree, label the edge to the left child as 0 and the edge to the right child as 1. 4. 

For each leaf c (i.e., symbol in C), construct its codeword by concatenating the bits in the path from the root to c.

{% endcapture %}
{% capture section_edu %}FOLLOWING ARE GREEDY ALGORITHM TUTORIALS:

https://www.youtube.com/watch?v=3XaqEng_K5s
https://www.youtube.com/watch?v=HzeK7g8cD0Y
https://www.youtube.com/watch?v=HzeK7g8cD0Y&list=PLqM7alHXFySESatj68JKWHRVhoJ1BxtLW
{% endcapture %}
{% capture section_app %}APPLICATION:
• Coin/Money Change Problem.
• Job Scheduling Problem.
• Activity Scheduling Problem.
• Fractional-knapsack Problem.

Conclusion:

Generally greedy algorithms do not provide always globally optimized solutions.
{% endcapture %}
{% include algo.html %}