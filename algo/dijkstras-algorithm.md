---
layout: algo
index: true
comments: true
title: Dijkstra’s algorithm
tags:
  - Dijkstras
  - shortest path
modifier: 'false'
modtime: '2017-12-06T03:29:20.402Z'

---
{% capture section_desc %}Dijkstra's algorithm is a step-by-step process we can use to find the shortest path between two vertices in a weighted graph. This algorithm enables us to find shortest distances and minimum costs, making it an invaluable tool.{% endcapture %}
{% capture section_complexity %}It depends on your implementation of Dijkstra’s Algorithm.{% endcapture %}
{% capture section_pseudocode %}
1. Initialization of all nodes with distance "infinite"; initialization of the starting node with 0
2. Marking of the distance of the starting node as permanent, all other distances as temporarily.
3. Setting of starting node as active.
4.Calculation of the temporary distances of all neighbour nodes of the active node by summing up its distance with the weights of the edges.
5. If such a calculated distance of a node is smaller as the current one, update the distance and set the current node as antecessor. This step is also called update and is Dijkstra's central idea.
6. Setting of the node with the minimal temporary distance as active. Mark its distance as permanent.
7. Repeating of steps 4 to 7 until there aren't any nodes left with a permanent distance, which neighbours still have temporary distances.
=================================================
1:	function Dijkstra(Graph, source):
2:	for each vertex v in Graph:	// Initialization
3:	dist[v] := infinity	// initial distance from source to vertex v is set to infinite
4:	previous[v] := undefined	// Previous node in optimal path from source
5:	dist[source] := 0	// Distance from source to source
6:	Q := the set of all nodes in Graph	// all nodes in the graph are unoptimized - thus are in Q
7:	while Q is not empty:	// main loop
8:	u := node in Q with smallest dist[ ]
9:	remove u from Q
10:	for each neighbor v of u:	// where v has not yet been removed from Q.
11:	alt := dist[u] + dist_between(u, v)
12:	if alt < dist[v]	// Relax (u,v)
13:	dist[v] := alt
14:	previous[v] := u
15:	return previous[ ]

=================================================

{% endcapture %}
{% capture section_edu %}https://courses.cs.washington.edu/courses/cse373/01sp/Lect24_2up.pdf 
https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
https://medium.com/basecs/finding-the-shortest-path-with-a-little-help-from-dijkstra-613149fbdc8e{% endcapture %}
{% capture section_app %}This graph search algorithm is used in different applications where the problem can be modeled as a graph and you have to find the shortest path between two nodes.{% endcapture %}
{% include algo.html %}