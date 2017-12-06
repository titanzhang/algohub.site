---
layout: algo
index: true
comments: true
title: Breadth-first search
tags:
  - Search
modifier: 'false'
modtime: '2017-12-05T21:35:49.200Z'

---
{% capture section_desc %}Breadth-first search (BFS) is an algorithm for traversing or searching tree or graph data structures. It starts at the tree root (or some arbitrary node of a graph, sometimes referred to as a 'search key') and explores the neighbor nodes first, before moving to the next level neighbours.
BFS and its application in finding connected components of graphs were invented in 1945 by Konrad Zuse, in his (rejected) Ph.D. thesis on the Plankalkül programming language, but this was not published until 1972. It was reinvented in 1959 by E. F. Moore, who used it to find the shortest path out of a maze, and discovered independently by C. Y. Lee as a wire routing algorithm (published 1961).{% endcapture %}
{% capture section_complexity %}The time complexity can be expressed as {\displaystyle O(|V|+|E|)} O(|V|+|E|), since every vertex and every edge will be explored in the worst case. {\displaystyle |V|} |V| is the number of vertices and {\displaystyle |E|} |E| is the number of edges in the graph. Note that {\displaystyle O(|E|)} O(|E|) may vary between {\displaystyle O(1)} O(1) and {\displaystyle O(|V|^{2})} O(|V|^{2}), depending on how sparse the input graph is.

When the number of vertices in the graph is known ahead of time, and additional data structures are used to determine which vertices have already been added to the queue, the space complexity can be expressed as {\displaystyle O(|V|)} O(|V|), where {\displaystyle |V|} |V| is the cardinality of the set of vertices. This is in addition to the space required for the graph itself, which may vary depending on the graph representation used by an implementation of the algorithm.

When working with graphs that are too large to store explicitly (or infinite), it is more practical to describe the complexity of breadth-first search in different terms: to find the nodes that are at distance d from the start node (measured in number of edge traversals), BFS takes O(bd + 1) time and memory, where b is the "branching factor" of the graph (the average out-degree).
{% endcapture %}
{% capture section_pseudocode %}```
def breadth_first_search(problem):

  # a FIFO open_set
  open_set = Queue()
  # an empty set to maintain visited nodes
  closed_set = set()
  # a dictionary to maintain meta information (used for path formation)
  meta = dict()  # key -> (parent state, action to reach child)

  # initialize
  start = problem.get_start_state()
  meta[start] = (None, None)
  open_set.enqueue(start)

  while not open_set.is_empty():

    parent_state = open_set.dequeue()

    if problem.is_goal(parent_state):
          return construct_path(parent_state, meta)

    for (child_state, action) in problem.get_successors(parent_state):

      if child_state in closed_set:
        continue

      if child_state not in open_set:
        meta[child_state] = (parent_state, action)
        open_set.enqueue(child_state)

    closed_set.add(parent_state)


def construct_path(state, meta):
  action_list = list()
  
  while True:
    row = meta[state]
    if len(row) == 2:
      state = row[0]
      action = row[1]
      action_list.append(action)
    else:
      break
  
  return action_list.reverse()
```{% endcapture %}
{% capture section_edu %}{% youtube https://www.youtube.com/watch?v=ytcPxRsZfcU %}{% endcapture %}
{% capture section_app %}Breadth-first search can be used to solve many problems in graph theory, for example:

Copying garbage collection, Cheney's algorithm
Finding the shortest path between two nodes u and v, with path length measured by number of edges (an advantage over depth-first search)
(Reverse) Cuthill–McKee mesh numbering
Ford–Fulkerson method for computing the maximum flow in a flow network
Serialization/Deserialization of a binary tree vs serialization in sorted order, allows the tree to be re-constructed in an efficient manner.
{% endcapture %}
{% include algo.html %}
