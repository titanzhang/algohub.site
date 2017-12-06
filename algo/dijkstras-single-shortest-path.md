---
layout: algo
index: true
comments: true
title: Dijkstra's Single Shortest Path
tags:
  - Greedy
modifier: 'false'
modtime: '2017-12-06T23:00:08.546Z'

---
{% capture section_desc %}Given a weighted and directed graph G = (V, E), such as a road networks, one can use Dijkstras's algorithm to find the shortest paths between vertices in a graph.  For example, if one needs to find the shortest path between locations a and b in the graph, the alorithm finds it using a greedy approach. Given the source node, the alogirhtm can eventually find shortest paths to all other vertices in the graph. The process of finding shortest paths includes a technique which updates the distance to unvisited vertices that is connected to the current vertice being explored. The algorithm is similar to BFS and Prim's algorithm. It's greddy algorithm because the algorithm always chooses the closest node in V - S.{% endcapture %}
{% capture section_complexity %}If a given graph is sparse, it is important to use a min-priority heap and a binary min-heap. The min-priory queue has 3 operations: EXTRACT-MIN, DECREASE-KEY, and INSERT. Each INSERT takes O(1). DECREASE-KEY takes O(lg V) and EXTRACT-MIN takes O(lg V). Therefore, the total running time is O(( V + E) lg V). However, using Fibonacci Heap, one can reduce the time it takes to O ( E + V log V). Then EXTRACT-MIN would still take O(lg V), but DECREASE-KEY would take O(1) time. We can see that the algorithm is similar to Prim's algorithm because both algorithms use a min-priority queue to find the closest vertex.{% endcapture %}
{% capture section_pseudocode %}```
INITIALIZE-SINGLE-SOURCE (G, s)
S <- Ø
Q <- V[G]
while Q ≠ Ø
  do u <- EXTRACT-MIN (Q)
	  S <- S ∪ {u}
		for each vertex v ∈ Adj[u]
		  do RELAX(u, v, w)
```{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=WN3Rb9wVYDY %}{% endcapture %}
{% capture section_app %}It can be used in many applications, such as Google Maps, telephone network, and geographical maps. For example, using the algorithm in VLSI routing problem would find shortest paths in graphs with many nodes.{% endcapture %}
{% include algo.html %}