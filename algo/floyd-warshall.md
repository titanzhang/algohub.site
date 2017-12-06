---
layout: algo
index: true
comments: true
title: Floyd-Warshall
tags:
  - Dynamic Programming
  - Shortest Path
modifier: thotnguyen@cpp.edu
modtime: '2017-12-06T02:21:30.624Z'

---
{% capture section_desc %}Floyd-Warshall can be used to solve the shortest path problems between all pairs of vertices in a graph. In other words, after Floyd-Warshall, you will know the shortest path between any source vertex to any other destination vertex. Furthermore, Floyd-Warshall can find the shortest path even if there are negative edges.How Floyd-Warshall works is that the algorithm utilizes a concept similar to dynamic programming. Initially, a 2D array will be created listing the distance between any source vertex and any destination vertex. As we go through the algorithm using each vertex as an intermediate vertex, we will update our table accordingly. At the end of our algorithm, the distances in the table is the shortest distance between any source vertex and any destination vertex.{% endcapture %}
{% capture section_complexity %}The time complexity is O(V³) where V is the number of vertices. This is because Floyd-Warshall employs three nested for loops. The first for loop goes through every vertex and mark it as an intermediate vertex. The second for loop marks every vertex that is not the current intermediate vertex as a possible source vertex. The third for loop marks every other vertex that is not the current source vertex as destination vertices. Because of these three nested for loops, our time complexity for Floyd-Warshall is O(V³). Checking for a negative loop cycle is O(V) since all you have to do is check the diagonals of the 2D array. In other words, you only have to check elements in array[i][j] where i = j and see if any of those elements are negative. Thus, our total time complexity for Floyd-Warshall is O(V³) + O(V) = O(V³).{% endcapture %}
{% capture section_pseudocode %}```
def floydWarshall(graph):
    # Initialize dist as the oiginal graph
    dist = []
    for elem in graph:
        dist.append(elem)
    
    for interm in range(V):
        # Pick all vertices as source one by one
        for source in range(V):
        
            # Pick all vertices as destination for source i
            for dest in range(V):
                # If vertex interm is on the shortest path from i to j,
                # then update the value of dist[i][j]
                dist[source][dest] = min(dist[source][dest], dist[source][interm] + dist[interm][dest])
```{% endcapture %}
{% capture section_edu %}If you want to learn more about Floyd-Warshall, you can find our YouTube explanation [here](https://youtu.be/JXBCASFon0M?t=41m55s.).{% endcapture %}
{% capture section_app %}Floyd-Warshall can be used in applications such as networking, where the servers can be represented by vertices, and the edges are their connections. The lower the number of their connections, the better the connection. A negative number will represent that a server will actually have a faster connection time by connecting to the other server. By using Floyd-Warshall, you can find out what is the quickest way to travel from one server to another server.{% endcapture %}
{% include algo.html %}