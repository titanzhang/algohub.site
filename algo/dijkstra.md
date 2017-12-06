---
layout: algo
index: true
comments: true
title: Dijkstra
tags:
  - Search
modifier: hengliu@cpp.edu
modtime: '2017-12-06T22:27:50.465Z'

---
{% capture section_desc %}An algorithm to to find the shortest path in a graph between two nodes.{% endcapture %}
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
{% capture section_edu %}{% youtube <https://www.youtube.com/watch?v=GazC3A4OQTE> %}Here's a youtube tutorial link{% endcapture %}
{% capture section_app %}It can be used in many area like Google map or some games, such as clash of clan.{% endcapture %}
{% include algo.html %}