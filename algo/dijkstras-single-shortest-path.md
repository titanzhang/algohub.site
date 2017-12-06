---
layout: algo
index: true
comments: true
title: Dijkstra's Single Shortest Path
tags:
  - Greedy
modifier: 'false'
modtime: '2017-12-06T03:55:01.869Z'

---
{% capture section_desc %}Given a graph, such as a road networks, one can use Dijkstras's algorithm to find the shortest paths between vertices in a graph. For example, if one needs to find the shortest path between locations a and b in the graph, the alorithm finds it using a greedy approach. Given the source node, the alogirhtm can eventually find shortest paths to all other vertices in the graph. The process of finding shortest paths includes a technique which updates the distance to unvisited vertices that is connected to the current vertice being explored.{% endcapture %}
{% capture section_complexity %}Given a graph G with n vertices, the queue in in BFS may contain 0(v).
Using BFS, one can find all the shortest paths in 0(V + E){% endcapture %}
{% capture section_pseudocode %}dist[s] <- 0
for all v ∈ V-{S}{% endcapture %}
{% capture section_edu %}https://www.youtube.com/watch?v=WN3Rb9wVYDY{% endcapture %}
{% capture section_app %}It can be used in many applications, such as Google Maps, telephone network, and geographical maps.{% endcapture %}
{% include algo.html %}