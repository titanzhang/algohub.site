---
layout: algo
index: true
comments: true
title: Dijkstra
tags:
  - Search
modifier: 'false'
modtime: '2017-12-05T15:55:23.160Z'

---
{% capture section_desc %}An algorithm to to find the shortest path in a graph between two nodes.{% endcapture %}
{% capture section_complexity %}O(n^2) in some appropriate data structure{% endcapture %}
{% capture section_pseudocode %}A*Function(start, target)
	CloseSet.add(start)
	Start.distancefromsouce<-0
	While(OpenSet is not empty)
	Current<-First element in OpenSet //OpenSet: Priority Queue
	If(current is target)
		Display the path
		Return and end
	Openset.remove(current)
	CloseSet.add(current)
	For(each neighbor of current)
		If(it is in closeset) ignore and continue
		If(it is not in OpenSet) OpenSet.add(this neighbor)
			tempdistancefromsouce<-current.distancefromsouce+distance between this 
					neighbor and current
		If(tempdistancefromsouce is less than this neighbor’s G value)
			thisneighbor.camefrom<-current
			thisneighbor.distancefromsouce<-tempdistancefromsouce
{% endcapture %}
{% capture section_edu %}Here's a youtube tutorial link
https://www.youtube.com/watch?v=GazC3A4OQTE{% endcapture %}
{% capture section_app %}Google map{% endcapture %}
{% include algo.html %}