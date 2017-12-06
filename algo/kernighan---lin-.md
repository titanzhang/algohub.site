---
layout: algo
index: true
comments: true
title: 'Kernighan - Lin '
tags:
  - Heuristic Algorithm
  - Graph Partitioning
modifier: kpbhavana94@gmail.com
modtime: '2017-12-06T01:25:46.653Z'

---
{% capture section_desc %}The Kernighan - Lin algorithm is a heuristic algorithm for finding partitions of graphs. It's aim is to partition a graph into two parts of equal size with a minimal number of cutting edges. It is an iterative improvement algorithm, meaning that it starts from an arbitrary partition, and swaps pairs of nodes in order to improve the cost of the partition. The reason for the success of the KL heuristic is that it is fast as a greedy algorithm, but it can escape from some local optima.{% endcapture %}
{% capture section_complexity %}For each pass:
* O(n2) time to find the best pair to exchange.
* n pairs exchanged.
* Total time is O(n3) per pass.
Better implementation can get O(n2lg n) time per pass.


{% endcapture %}
{% capture section_pseudocode %}```
1  function Kernighan-Lin(G(V,E)):
2      determine a balanced initial partition of the nodes into sets A and B
3      
4      do
5         compute D values for all a in A and b in B
6         let gv, av, and bv be empty lists
7         for (n := 1 to |V|/2)
8            find a from A and b from B, such that g = D[a] + D[b] - 2*c(a, b) is maximal
9            remove a and b from further consideration in this pass
10           add g to gv, a to av, and b to bv
11           update D values for the elements of A = A \ a and B = B \ b
12        end for
13        find k which maximizes g_max, the sum of gv[1],...,gv[k]
14        if (g_max > 0) then
15           Exchange av[1],av[2],...,av[k] with bv[1],bv[2],...,bv[k]
16     until (g_max <= 0)
17  return G(V,E)
```{% endcapture %}
{% capture section_edu %}
Here is a video tutorial which explains and demonstrates a step by step example of Kernighan - Lin algorithm.
[https://www.youtube.com/watch?v=GsMZYDBFJv4&t=765s
{% endcapture %}
{% capture section_app %}The KL algorithm can be applied to many problems we face in areas, such as electronic circuits, parallelization of scientific computation with a large graph, social networks, road networks, etc. 

1. In VLSI physical design, many partitioning needs to be done on a different level. Circuits are often partitioned into sub-circuits. Also chips are partitioned into smaller sub circuits as well. Here, the KL algorithm can also be applied to solve the problem by partitioning a circuit into two channels to obtain the minimum number of interconnections between the channels, making the circuit simpler and more efficient. 
2. Hardware/software partitioning is a central task in hardware/software co-design . Its main focus is deciding which components of the system should be realized in hardware and which ones in software. The KL algorithm in utilized in such hardware/software co-design.
3. The KL algorithm can also be applied to improve the efficiency of productions that use a large graph such as social networks.
 
{% endcapture %}
{% include algo.html %}