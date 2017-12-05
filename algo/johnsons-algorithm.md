---
layout: algo
index: true
comments: true
title: Johnson's Algorithm
tags:
  - Shortest Path
  - Search
modifier: 'false'
modtime: '2017-12-05T04:58:54.465Z'

---
{% capture section_desc %}Johnson’s algorithm was designed by Donald B. Johnson in 1997 as a solution to the shortest path problem. The algorithm finds the shortest path between all pairs of vertices in a dispersed directed graph with weighted edges. Johnson’s algorithm takes advantage of reweighting techniques to handle graphs with negative edge weight. Johnson’s algorithm uses Bellman-Ford to reweight the input graph to be able to eliminate negative edges and to detect negative cycles. The new graph then uses Dijkstra’s shortest path algorithm to find the shortest path between all pairs of vertices.
{% endcapture %}
{% capture section_complexity %}Time complexity of O(|V^2|*log|V| + |V|*|E|){% endcapture %}
{% capture section_pseudocode %}Johnson(G)
	1.//Adding a new vertex
	create G` where G`.V = G.V + {s},
  G`.E = G.E + ((s, u) for u in G.V), and
	  weight(s, u) = 0 for u in G.V

	2.//reweighing process
	if Bellman-Ford(G) == False
		return "The input graph has a negative weight cycle"
	else:
		for vertex v in G`.V:
			h(v) = distance(s, v) computed by Bellman-Ford
		for edge (u, v) in G`.E:
			weight`(u, v) = weight(u, v) + h(u) - h(v)
			
	3.//Running Dijkstra’s to get the shortest path
	D = new matrix of distances initialized to infinity
	for vertex u in G`.V:
		run Dijkstra(G, weight`, u) to compute distance`(u, v) for all v in G.V
		for each vertex v in G.V:
			D_(u, v) = distance`(u, v) + h(v) - h(u)
	return D{% endcapture %}
{% capture section_edu %}[https://en.wikipedia.org/wiki/Johnson%27s_algorithm]{% endcapture %}
{% capture section_app %}Used when the graph is sparse.{% endcapture %}
{% include algo.html %}