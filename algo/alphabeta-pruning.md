---
layout: algo
index: true
comments: true
title: Alpha–beta pruning
tags:
  - Search
modifier: htlay@cpp.edu
modtime: '2017-12-04T23:35:17.087Z'

---
{% capture section_desc %}Alpha-Beta pruning is not actually a new algorithm, rather an optimization technique for minimax algorithm. It reduces the computation time by a huge factor. This allows us to search much faster and even go into deeper levels in the game tree. It cuts off branches in the game tree which need not be searched because there already exists a better move available. It is called Alpha-Beta pruning because it passes 2 extra parameters in the minimax function, namely alpha and beta.Let's define the parameters alpha and beta.
Alpha is the best value that the maximizer currently can guarantee at that level or above.
Beta is the best value that the minimizer currently can guarantee at that level or above.
![](http://cdncontribute.geeksforgeeks.org/wp-content/uploads/GeeksForGeeks-Alpha-Beta-Pruning.png){% endcapture %}
{% capture section_complexity %}In the worst case, where there is no node to be pruned, the full tree will be examined (or the complete tree up to the cutoff at a depth d). Alpha beta pruning saves, but how much? Notice that in the best case, each node will examine 2b-1 grandchildren to decide on its value. In the worst case, the node would examine b^2 grandchildren. This essentially means that the overall algorithm examined O( b^(d/2) ) nodes, the same as a worst-case algorithm whose cutoff is half of d. In practice this is significant.{% endcapture %}
{% capture section_pseudocode %}```
* the minimax value of n, searched to depth d.
* If the value is less than min, returns min.
* If greater than max, returns max. 
 fun minimax(n: node, d: int, min: int, max: int): int =
   if leaf(n) or depth=0 return evaluate(n)
   if n is a max node
      v := min
      for each child of n
         v' := minimax (child,d-1,v,max)
         if v' > v, v:= v'
         if v > max return max
      return v
   if n is a min node
      v := max
      for each child of n
         v' := minimax (child,d-1,min,v)
         if v' < v, v:= v'
         if v < min return min
      return v
```{% endcapture %}
{% capture section_edu %}Here is a video tutorial which is step by step example of Alpha-beta pruning
{% https://www.youtube.com/watch?v=xBXHtz4Gbdo %}{% endcapture %}
{% capture section_app %}Applications such as game playing has been one of the most interesting applications of AI. Games such as chess, tic-tac-toe, and Go are interesting because they offer a pure abstraction of the competition between two armies. It is this abstraction which makes game playing an attractive area for AI research.{% endcapture %}
{% include algo.html %}