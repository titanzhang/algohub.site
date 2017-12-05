---
layout: algo
index: true
comments: true
title: Alpha–beta pruning
tags:
  - Search
  - Tree
modifier: hunglay0420@gmail.com
modtime: '2017-12-05T20:55:06.161Z'

---
{% capture section_desc %}Alpha-Beta pruning is not actually a new algorithm, rather an optimization technique for minimax algorithm. It reduces the computation time by a huge factor. This allows us to search much faster and even go into deeper levels in the game tree. It cuts off branches in the game tree which need not be searched because there already exists a better move available. It is called Alpha-Beta pruning because it passes 2 extra parameters in the minimax function, namely alpha and beta.Let's define the parameters alpha and beta.
Alpha is the best value that the maximizer currently can guarantee at that level or above.
Beta is the best value that the minimizer currently can guarantee at that level or above.
![](http://cdncontribute.geeksforgeeks.org/wp-content/uploads/GeeksForGeeks-Alpha-Beta-Pruning.png){% endcapture %}
{% capture section_complexity %}In the worst case, where there is no node to be pruned, the full tree will be examined (or the complete tree up to the cutoff at a depth d). Alpha beta pruning saves, but how much? Notice that in the best case, each node will examine 2b-1 grandchildren to decide on its value. In the worst case, the node would examine b^2 grandchildren. This essentially means that the overall algorithm examined O( b^(d/2) ) nodes, the same as a worst-case algorithm whose cutoff is half of d. In practice this is significant.{% endcapture %}
{% capture section_pseudocode %}```
01 function alphabeta(node, depth, α, β, maximizingPlayer)
02      if depth = 0 or node is a terminal node
03          return the heuristic value of node
04      if maximizingPlayer
05          v := -∞
06          for each child of node
07              v := max(v, alphabeta(child, depth – 1, α, β, FALSE))
08              α := max(α, v)
09              if β ≤ α
10                  break (* β cut-off *)
11          return v
12      else
13          v := +∞
14          for each child of node
15              v := min(v, alphabeta(child, depth – 1, α, β, TRUE))
16              β := min(β, v)
17              if β ≤ α
18                  break (* α cut-off *)
19          return v
```{% endcapture %}
{% capture section_edu %}Here is a video tutorial which is step by step example of Alpha-beta pruning.
{% youtube https://www.youtube.com/watch?v=xBXHtz4Gbdo %}{% endcapture %}
{% capture section_app %}Applications such as game playing has been one of the most interesting applications of AI. Games such as chess, tic-tac-toe, and Go are interesting because they offer a pure abstraction of the competition between two armies. It is this abstraction which makes game playing an attractive area for AI research.{% endcapture %}
{% include algo.html %}