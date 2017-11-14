---
layout: algo
title: Depth first search
tags:
  - Search
  - Tree
index: true
comments: true
modifier: titanzhang@gmail.com
modtime: '2017-11-14T01:20:10.566Z'

---
{% capture section_desc %}**Depth-first search (DFS)** is an algorithm for traversing or searching tree or graph data structures. One starts at the root (selecting some arbitrary node as the root in the case of a graph) and explores as far as possible along each branch before [backtracking](https://en.wikipedia.org/wiki/Backtracking).  For the following graph:    
![example](https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Graph.traversal.example.svg/200px-Graph.traversal.example.svg.png "example")   
A depth-first search starting at A, assuming that the left edges in the shown graph are chosen before right edges, and assuming the search remembers previously visited nodes and will not repeat them (since this is a small graph), will visit the nodes in the following order: A, B, D, F, E, C, G. The edges traversed in this search form a Trémaux tree, a structure with important applications in graph theory.Performing the same search without remembering previously visited nodes results in visiting nodes in the order A, B, D, F, E, A, B, D, F, E, etc. forever, caught in the A, B, D, F, E cycle and never reaching C or G.Iterative deepening is one technique to avoid this infinite loop and would reach all nodes.
test12{% endcapture %}
{% capture section_complexity %}The computational complexity of DFS was investigated by John Reif, who showed that a decision version of it (establish whether some vertex u occurs before some vertex v in a DFS order of a rooted graph) is P-complete, meaning that it is "a nightmare for parallel processing".{% endcapture %}
{% capture section_pseudocode %}**Input**: A graph G and a vertex v of G   
**Output**: All vertices reachable from v labeled as discovered  
A recursive implementation of DFS:
```
procedure DFS(G,v):
  label v as discovered
  for all edges from v to w in G.adjacentEdges(v) do
    if vertex w is not labeled as discovered then
      recursively call DFS(G,w)
```
A non-recursive implementation of DFS:
```
procedure DFS-iterative(G,v):
  let S be a stack
  S.push(v)
  while S is not empty
    v = S.pop()
    if v is not labeled as discovered:
      label v as discovered
      for all edges from v to w in G.adjacentEdges(v) do 
        S.push(w)
```
These two variations of DFS visit the neighbors of each vertex in the opposite order from each other: the first neighbor of v visited by the recursive variation is the first one in the list of adjacent edges, while in the iterative variation the first visited neighbor is the last one in the list of adjacent edges. The recursive implementation will visit the nodes from the example graph in the following order: A, B, D, F, E, C, G. The non-recursive implementation will visit the nodes as: A, E, F, B, D, C, G.  The non-recursive implementation is similar to breadth-first search but differs from it in two ways:
1. it uses a stack instead of a queue, and
2. it delays checking whether a vertex has been discovered until the vertex is popped from the stack rather than making this check before pushing the vertex.Note that this non-recursive implementation of DFS may use O(E) space in the worst case, for example on a complete graph.{% endcapture %}
{% capture section_edu %}Something about how to teach this algorithm.  
Here is a video tutorial:
{% youtube https://youtu.be/eF3MElILmzA %}{% endcapture %}
{% capture section_app %}Applications based on this algorithm.{% endcapture %}
{% include algo.html %}