---
layout: algo
index: true
comments: true
title: Lloyd's Algorithm
tags:
  - Approximation
  - Heuristic
  - KMeans Clustering
modifier: 'false'
modtime: '2017-12-06T02:08:56.758Z'

---
{% capture section_desc %}Aims to partition n observations into k clusters in which each observation belongs to the cluster with the nearest mean, serving as a prototype of the cluster.

Does not guarantee optimal solution.{% endcapture %}
{% capture section_complexity %}O(nkdi)
n - number of d-dimensional vectors
k - number of clusters
d - number of dimensions
i - number of iterations needed until convergence{% endcapture %}
{% capture section_pseudocode %}Initialize graph with k random partitions
while algorithm has not converged:
	calculate centroids for each partition
	recluster partitions with lowest means{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=9rp1pzYn3hY %}
{% endcapture %}
{% capture section_app %}Anything that requires grouping vectors to show relations in large data

Examples:
Recoloring an image with k colors
Tax bracketing
Characterization
etc.{% endcapture %}
{% include algo.html %}