---
layout: algo
index: true
comments: true
title: Dijkstra
tags:
  - Search
modifier: hengliu@cpp.edu
modtime: '2017-12-06T22:37:16.543Z'

---
{% capture section_desc %}It is an algorithm, was developed in 1959, to find the shortest path in a graph between two nodes.It is a form of breadth-first search (BFS, first-in first-out queue), where from the root (source node) we explore unvisited adjacent neighbors one by one and simply verify whether or not the visited node is currently the destination (Barnouti, N.H, et. al, 2016). {% endcapture %}
{% capture section_complexity %}O(n^2) in some appropriate data structure{% endcapture %}
{% capture section_pseudocode %}Function(start, target)
CloseSet.add(start)
Start.distancefromsource<-0
While(OpenSet is not empty)
Current<-First element in OpenSet //OpenSet: Priority Queue
If(current is target)
	Display the path
	Return and endOpenset.remove(current)
CloseSet.add(current)
For(each neighbor of current)
	If(it is in closeset) ignore and continue
	If(it is not in OpenSet) OpenSet.add(this neighbor)
		Temp.distancefromsource <-current.distancefromsource +distance between this neighbor and current
	If(temp.distancefromsource is less than this neighbor’s distancefromsource)
		thisneighbor.camefrom<-current
		thisneighbor.distancefromsource<-tempdistancefromsource{% endcapture %}
{% capture section_edu %}Here's a youtube tutorial link{% youtube <www.youtube.com/watch?v=GazC3A4OQTE> %}{% endcapture %}
{% capture section_app %}It is still a basis in modern computer software used to route our phone network, can be used in many area like Google map or some games, such as clash of clan, League of Legends, or Dota2.{% endcapture %}
{% include algo.html %}