---
layout: algo
index: true
comments: true
title: Dijkstra's Single Shortest Path
tags:
  - Greedy
modifier: 'false'
modtime: '2017-12-06T22:22:38.679Z'

---
{% capture section_desc %}Given a graph, such as a road networks, one can use Dijkstras's algorithm to find the shortest paths between vertices in a graph. For example, if one needs to find the shortest path between locations a and b in the graph, the alorithm finds it using a greedy approach. Given the source node, the alogirhtm can eventually find shortest paths to all other vertices in the graph. The process of finding shortest paths includes a technique which updates the distance to unvisited vertices that is connected to the current vertice being explored. The algorithm is similar to BFS and Prim's algorithm.{% endcapture %}
{% capture section_complexity %}The time it takes is O(( E + V) log v) using modified binary heap. Oftentimes, binary heap is used because of its simplicity. The inner loop inside the algorithm takes O(V + E) and the heap operations can take O(log v). However, using Fibonacci Heap, one can reduce the time it takes to O ( E + V log V).{% endcapture %}
{% capture section_pseudocode %}```
dist[s] <- 0
for all v ∈ V-{S}
    do dist[v] <- ∞ 
S←∅
Q←V'
while'Q'≠∅
do'''u'← mindistance(Q,dist) 
 'S←S∪{u}'
	  for'all'v'∈'neighbors[u]
			'do''if'''dist[v]'>'dist[u]'+'w(u,'v)'
				'then''''''d[v]'←d[u]'+'w(u,'v)
	return dist
```{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=WN3Rb9wVYDY %}{% endcapture %}
{% capture section_app %}It can be used in many applications, such as Google Maps, telephone network, and geographical maps.{% endcapture %}
{% include algo.html %}