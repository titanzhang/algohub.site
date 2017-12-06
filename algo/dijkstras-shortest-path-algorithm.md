---
layout: algo
index: true
comments: true
title: Dijkstra’s shortest path algorithm
tags:
  - Search
modifier: msnazare@cpp.edu
modtime: '2017-12-06T02:44:57.294Z'

---
{% capture section_desc %}Dijikstras algorithm is similar to Prims algorithm for minimum spanning tree. 
The aim of Dijkstra's algorithm is to find the **shortest paths** between nodes in a graph, which may represent  road networks .
This algorithm was developed by Edsger W. Dijkstra in 1956.
This algorithm can be applied to weighted graph. 
One stipulation to using the algorithm is that the graph needs to have a non-negative weight on every edge.{% endcapture %}
{% capture section_complexity %}Time Complexity of the implementation is O(V^2) If the input graph is represented using adjacency list, it can be reduced to O(E log V) with the help of binary heap.{% endcapture %}
{% capture section_pseudocode %}Func Dijk(Graph,Source)		
	For all vertex V in G		//Initialization
	Dist V= Infinity		//Initial distance source to vertex
	Prev V = Not defined		//Previous node in optimal Path
Dist [Source]=0			//distance from Source to source
J = set of all nodes in graph		//All un-optimized nodes so they are in J
While j is != Null			//Loop
U  =node in J with closest Dist
Delete J from U
	For each neighbor V of U
	alt =dist[U]+dist_btwn(U,V)
if alt<Dist[V]				//Release(U,V)
	dist[V]=alt
Prev [V]=U
Ret prev[]{% endcapture %}
{% capture section_edu %}https://www.youtube.com/watch?v=gdmfOwyQlcI{% endcapture %}
{% capture section_app %}Applications:1) It is used in Google Maps
2) It is used in finding Shortest Path.
3) It is used in geographical Maps
4) To find locations of Map which refers to vertices of graph.
5) Distance between the locations refers to edges.
6) It is used in IP routing to find Open shortest Path First.
7) It is used in the telephone network.{% endcapture %}
{% include algo.html %}