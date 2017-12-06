---
layout: algo
index: true
comments: true
title: A* Pathfinding
tags:
  - BestFirst Search
  - Dijkstra
  - Priority Queue
modifier: 'true'
modtime: '2017-12-05T20:57:25.402Z'

---
{% capture section_desc %}A* pathfinding, an extension of Dijkstra's shortest path algorithm, is a best-first search algorithm, where instead of exhaustively checking each and every path available through a breadth-first search approach, it uses a heuristic function that is predetermined based on a cost estimate function. The computer has some special knowledge of the problem domain, that helps it decide, instead of evaluating all neighbor nodes, the most promising node to explore first. This neighbor selected will have the smallest aggregate distance from any of the explored nodes, meaning that it's f value, the sum of the goal value g and the heuristic function h is the minimum. The goal value depends on the distance from a current node to the neighbor node, and the heuristic will be the estimated distance from the neighbor node to the final destination. Depending on the problem domain, a proper heuristic must be applied, typical heuristics include the Manhattan or Chebyshev distances for 2D A* analysis. If the applied heuristic is admissible, meaning it will never overestimate the actual cost from a source node to the destination, a guaranteed optimal path exists between the two points. A* is typically used in pathfinding for video game artificial intelligence, to identify the shortest path in a map, with terrain, obstacles, traps, and dead ends. Once reaching the destination if the optimal path exists, the algorithm may return the parents of each node, starting from the destination to backtrack to the starting node.{% endcapture %}
{% capture section_complexity %}The time complexity of A* pathfinding depends on the starting and the destination positions, which is determined by the heuristic function. The heuristic used must be admissible, so we can possibly find a shortest path. With an admissible heuristic, it will be an O(b^d) time complexity, where b is a branching factor, a number that indicates how many neighbors we have to check at any one level in the tree of nodes, and d is the depth factor to indicate how many levels we have to traverse through until reaching the goal node. In the A* pathfinding algorithm, it maintains an open set of all possible neighbors to visit, where a while loop continues execution as long as the open set of unexplored neighbors is not empty. The open list is typically implemented by a priority queue, so that the first element will be the neighbor with the smallest f value is chosen and set as the current node. The open list will then add all new neighbors of the new current node. Then the open list will remove the current node, and add it to a closed set, the list of nodes which are completely explored. Therefore, in this case, the size of the open list is ≤ to the total number of nodes N and the while loop would run less than N times. Depending on which promising node is selected, the space is complexity will also be O(b^d), where b^d ≤ N.{% endcapture %}
{% capture section_pseudocode %}Pseudocode of A* Pathfinding Algorithm
A* Pathfinding in 2D:

1.	Determine the heuristic (h) values of all nodes on 2D grid, the Manhattan distance (Chebyshev if diagonal distances are permitted) from each node to the destination. Set each node’s g-value to infinity, f = g + h, so f is also infinite.

2.	Place the starting node into an open set (priority queue). Determine the fitness (f), and goal (g) value of starting node, and define current node = starting node.

3.	Place the current node into a closed set. The nodes placed into the closed set will be the nodes that will not be explored again. 

4.	Place all neighbor nodes to the current node into the open set, and determine f and g values of each node. If the previous g value of a neighbor node is greater than the current recalculated g value, we will update the node’s g value (neighbor node parent will change to the current node, and not the previous parent)

5.	From the open set priority queue, select the node with the smallest f value as the next new node to visit

6.	Repeat steps 2 - 6, until the open set is empty & whether or not the destination node is present inside the closed set

7.	If the goal node was reached, return true. Backtracking from the destination, determine each visited node’s parent and derive the shortest path, if it exists. Otherwise, return false.
{% endcapture %}
{% capture section_edu %}Here is a link that will go step by step on how the A* algorithm works:

https://www.youtube.com/watch?v=-L-WgKMFuhE&t=454s

For students who are currently learning searching techniques such as breadth, depth first search, and are interested in game pathfinding logic, A* is a relevant algorithm to learn. It is heavily used in modern gaming industries, which apply similar algorithms for agent pathfinding in their games, and may tune A* to suit their needs depending on the application. Sometimes, there are many units on the screen at the same time, and A* will need to be able to support dynamic unit pathfinding so that all agents can reach to the destination in a reasonable manner. To be able to find the shortest path between two points, it is very useful for promoting efficiency and smooth gameplay experiences. {% endcapture %}
{% capture section_app %}Applications for A* pathfinding is not centered only around game pathfinding logic, it can be also used in various areas such as transit planning, maze navigation, telephone routes, layout of printed circuit boards (PCB), and robot path planning. In day-to-day life, we have strong reliance on navigation software in driving to unknown locations, such as the popular application Google Maps, in order to find the quickest way to our destination. Unfamiliar roads can become quite complex or dangerous, so it can be difficult to determine real-time the shortest path between two points without the assistance of such software. Similarly, with telephone routes, telephone companies can use the assistance of A* algorithm to quickly plot nodes that electric signals need to traverse to identify the most efficient path and preserve signal quality between parties who are communicating. Maze navigation is useful for puzzles and games which require a solution(s) for a character trying to reach the end of a maze filled with obstacles, traps, and dead ends. Similarly, robots are also becoming widely adopted, and in order to service clients well, it needs to be able to identify the shortest route so little time is wasted wandering aimlessly before arriving to its service target.{% endcapture %}
{% include algo.html %}