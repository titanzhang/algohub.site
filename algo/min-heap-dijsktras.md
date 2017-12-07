---
layout: algo
index: true
comments: true
title: Min Heap Dijsktras
tags:
  - Greedy
  - Search
  - Shortest Path
  - Optimized
  - Heap
modifier: sbthapaliya@cpp.edu
modtime: '2017-12-07T01:04:45.412Z'

---
{% capture section_desc %}Dijkstras algorithm is one of the most effective Single Source Shortest Path Finding Algorithm. Given a Graph and a source Node this algorithm finds the shortest path from that node to all the other nodes in the Graph. The most commonly taught implementation of Dijkstras uses LinkedList or Array data structure. Whereas in this approach we use a Min Heap or Priority Queue instead. This results in a significant improvement in the complexity of the algorithm. This really goes to show that how easily we can improve an algorithm by just using different data structures. In addition the benefit is also its simplicity. Using Min Heap this algorithm is much more simpler to understand as well given that the reader has good understanding of Heaps. Also, there is an implementation using Fibonnaci Heap that is more effiecient that this approach. However, all these optimized versions uses some form of Heap Data Structure. Minimum Heap implementation serves as a good example and introduction to optimizing algorithms by using special data structures.{% endcapture %}
{% capture section_complexity %}O((|E|+|V|)log|V|){% endcapture %}
{% capture section_pseudocode %}1) Initialize distances of all vertices as infinite.2) Create an empty priority_queue pq.  Every item
   of pq is a pair (weight, vertex). Weight (or 
   distance) is used used as first item  of pair
   as first item is by default used to compare
   two pairs3) Insert source vertex into pq and make its
   distance as 0.4) While either pq doesn't become empty
    a) Extract minimum distance vertex from pq. 
       Let the extracted vertex be u.
    b) Loop through all adjacent of u and do 
       following for every vertex v.           // If there is a shorter path to v
           // through u. 
           If dist[v] > dist[u] + weight(u, v)               (i) Update distance of v, i.e., do
                     dist[v] = dist[u] + weight(u, v)
               (ii) Insert v into the pq (Even if v is
                    already there)
										
										
Implementation in Java:
```
public static void dijkstra(GNode[] g, int s)
{
        SpComparator comp;
        PriorityQueue<Pair<GNode,Integer>> pQueue;
        HashSet<Pair<GNode,Integer>> found;
        Hashtable<GNode, Pair<GNode,Integer>> map;
         
        comp = new SpComparator();
        pQueue = new PriorityQueue(comp);
        found = new HashSet();
        map = new Hashtable();
        for(int i=0; i<g.length; i++)
        {
            if(i==s)
                pQueue.add(new Pair(g[i],0));
            else 
            {
                Pair p = new Pair(g[i], Integer.MAX_VALUE);
                pQueue.add(p);
                map.put(g[i], p);
            }
        }
         
         
        while(!pQueue.isEmpty())
        {
            Pair<GNode,Integer> curPair;
            curPair = pQueue.poll();
            found.add(curPair);
            LinkedList<GNode> nb;
            nb = curPair.left.neighbor;
            for(int i=0; i<nb.size(); i++)
            {
                GNode curNb = nb.get(i);
                Pair<GNode,Integer> curNbPair = map.get(curNb);
                if(!found.contains(curNb))
                {
                    if(curNbPair!=null)
                    {
                        //System.out.println(source.val+" - "+curNode.val);
                        if(curNbPair.right > 
                                (curPair.right+ curPair.left.weight.get(curNbPair.left)))
                        {
                            pQueue.remove(curNbPair);
                            curNbPair.right = curPair.right+ curPair.left.weight.get(curNbPair.left);
                            pQueue.add(curNbPair);
                            map.put(curNbPair.left, curNbPair);
                        }
                    
                    }
                    
                }
            }
        }
 }
 ```{% endcapture %}
{% capture section_edu %}It is a greedy algorithm that can be used to teach SSSP, optimization, greedy approach by comparing it to the linked list implementation.{% endcapture %}
{% capture section_app %}It has applications in routing, navigation systems,  find shortest path between 2 nodes in a network.{% endcapture %}
{% include algo.html %}