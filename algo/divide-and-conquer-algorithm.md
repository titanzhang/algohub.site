---
layout: algo
index: true
comments: true
title: Divide and Conquer Algorithm
tags:
  - Divide and Conquer
  - Algorithms
modifier: 'false'
modtime: '2017-12-07T00:07:16.831Z'

---
{% capture section_desc %}Divide and Conquer is an algorithmic paradigm. A typical Divide and Conquer algorithm solves a problem using following three steps.1. Divide: Break the given problem into subproblems of same type.
2. Conquer: Recursively solve these subproblems
3. Combine: Appropriately combine the answers


 {% youtube <https://www.youtube.com/watch?v=x78uQu730b0> %}{% endcapture %}
{% capture section_complexity %}Basic preliminary considerations
• We are interested by the asymptotic time
complexity T(n) with n being the size of the
input
• order of magnitude : O(f(n))
∃ A, ∃ α ∀n>A g(n)< α f(n) => g is said to be
O(f(n))
Examples :
 n2 is O(n3) (why?), 1000n + 1010 is O(n)![](https://drive.google.com/open?id=1bFkHR6eiug47u69I5pDr6LUiqhji007q)The divide and conquer principle
• General principle :
Take a problem of size n
Divide it into a sub problems of size n/b
 this process adds some linear complexity cn
• What is the resulting complexity?
T (n) =aT(n/b) + cn
• Example . Sorting with fusion ; a=2, b=2![](https://drive.google.com/open?id=1AjVOJ1S5dGsMk3Qtay4ImkkLzM026bHC){% endcapture %}
{% capture section_pseudocode %}{% youtube <https://www.youtube.com/watch?v=x78uQu730b0> %}Recursive Binary Search
A Divide and Conquer Algorithm to find a key in an array: 
    -- Precondition: S is a sorted list
    index binsearch(number n, index low, index high, 
            const keytype S[], keytype x)
        if low ≤ high then
            mid = (low + high) / 2
            if x = S[mid] then
                return mid
            elsif x < s[mid] then
                return binsearch(n, low, mid-1, S, x)
            else
                return binsearch(n, mid+1, high, S, x)
        else
            return 0
    end binsearch
    
Divide: search lower or upper half 
Divide: select lower or upper half 
Conquer: search selected half 
Combine: None 
Performance: 
T(n)=T(n/2)+Θ(1)
T(n)=T(n/2)+Θ(1)
T(n)=Θ(lg n)
T(n)=Θ(lg n)
(proved earlier) for aother code examples :
[](http://www.radford.edu/~nokie/classes/360/divcon.html){% endcapture %}
{% capture section_edu %}Solving difficult problems[edit]
Divide and conquer is a powerful tool for solving conceptually difficult problems: all it requires is a way of breaking the problem into sub-problems, of solving the trivial cases and of combining sub-problems to the original problem. Similarly, divide and conquer only requires reducing the problem to a single smaller problem, such as the classic Tower of Hanoi puzzle, which reduces moving a tower of height n to moving a tower of height n − 1.
Algorithm efficiency[edit]
The divide-and-conquer paradigm often helps in the discovery of efficient algorithms. It was the key, for example, to Karatsuba's fast multiplication method, the quicksort and mergesort algorithms, the Strassen algorithm for matrix multiplication, and fast Fourier transforms.
In all these examples, the D&C approach led to an improvement in the asymptotic cost of the solution. For example, if (a) the base cases have constant-bounded size, the work of splitting the problem and combining the partial solutions is proportional to the problem's size n, and (b) there is a bounded number p of subproblems of size ~ n/p at each stage, then the cost of the divide-and-conquer algorithm will be O(n logpn).
Parallelism[edit]
Divide and conquer algorithms are naturally adapted for execution in multi-processor machines, especially shared-memory systems where the communication of data between processors does not need to be planned in advance, because distinct sub-problems can be executed on different processors.
Memory access[edit]
Divide-and-conquer algorithms naturally tend to make efficient use of memory caches. The reason is that once a sub-problem is small enough, it and all its sub-problems can, in principle, be solved within the cache, without accessing the slower main memory. An algorithm designed to exploit the cache in this way is called cache-oblivious, because it does not contain the cache size as an explicit parameter.[8] Moreover, D&C algorithms can be designed for important algorithms (e.g., sorting, FFTs, and matrix multiplication) to be optimal cache-oblivious algorithms–they use the cache in a probably optimal way, in an asymptotic sense, regardless of the cache size. In contrast, the traditional approach to exploiting the cache is blocking, as in loop nest optimization, where the problem is explicitly divided into chunks of the appropriate size—this can also use the cache optimally, but only when the algorithm is tuned for the specific cache size(s) of a particular machine.
The same advantage exists with regards to other hierarchical storage systems, such as NUMA or virtual memory, as well as for multiple levels of cache: once a sub-problem is small enough, it can be solved within a given level of the hierarchy, without accessing the higher (slower) levels.
Roundoff control[edit]
In computations with rounded arithmetic, e.g. with floating point numbers, a divide-and-conquer algorithm may yield more accurate results than a superficially equivalent iterative method. For example, one can add N numbers either by a simple loop that adds each datum to a single variable, or by a D&C algorithm called pairwise summation that breaks the data set into two halves, recursively computes the sum of each half, and then adds the two sums. While the second method performs the same number of additions as the first, and pays the overhead of the recursive calls, it is usually more accurate.[9][](https://en.wikipedia.org/wiki/Divide_and_conquer_algorithm){% endcapture %}
{% capture section_app %}Other than the Divide and Conquer we have seen in Politics, wars and Mandate Countries in the Middle East. which worked to divide the Ottoman Empire from one empire to 42 countries and then being mandated by England, France and others. here are some useful and harmless ways to use Divide and Conquer in our daily lives :) **3 Ways Using A “Divide And Conquer” Strategy Can Solve Your Problems****1. Getting back on a fitness plan to lose X amount of pounds.**If you have been inactive for a very long time and want to get back into shape, the thought even stepping foot in the gym to hit the treadmill can be scary.
“I’m going to go to the gym everyday this week.”
“I want to lose 20 pounds by September.”
Those are two fierce goals. The goals become less fierce when you divide and conquer them. Since you may be coming from a long period of physical inactivity, why not stay away from the Zoolander fitness plan right away? Instead of putting yourself into an unmanageable situation, divide and conquer your fitness goal to set yourself up for success.
Set your battle plan to go to the gym TWICE in your first week of new physical activity. The next week re-evaluate the plan and if it went well, add another gym day to make it three times the following week. If you struggled during your first week, keep the battle plan at two times for another week until you feel ready to move on.
**2. Getting out of Credit Card debt.**
So you owe $3,000 to American Express and every month it’s getting worse. You’ve been overwhelmed for a while and you’ve been spending a lot of time thinking about how you can make an extra $3,000 this month. Stop wasting your time.
Just divide and conquer. Instead of trying to take on the $3,000 all at once, take a step back and break it down into a manageable situation. Find a way to make an extra $250 a month. Cut your monthly expenses by a few hundred dollars a month. Whichever you choose, use that extra money to start chipping away at your debt. Before you know it, your $3,000 debt will no longer be an issue. Not to mention, you will not be stressed out on a month to month basis when you have your strategy firmly in place.
**3. Surviving an event or function you do not want to attend.**
So you have a long work function or family outing that you have to go to, but really don’t want to attend. You’re probably dreading it. Not attending the event isn’t really an option for you, so now it’s time to divide and conquer. Figure out when it ends or the amount of time you need to spend there to fulfill your duty without leaving early, and feeling like a jerk. Break the event down into 30 minute increments and set an alarm on your phone as a reminder. For every 30 minutes you survive (by staying positive and “happy to be there”) reward yourself with something: maybe a new drink or a scheduled “run to the bathroom” to check your phone. While you’re conquering each half-hour battle, you are one step closer to the surviving the entire event — congratulations!
For things you know you HAVE to do, but don’t necessarily want to do, dividing and conquering will always make it a little bit easier for you. Look at these difficult goals like an under-matched, but smarter strategic competitor, and soon enough you’ll be surprised at what you end up accomplishing[https://thoughtcatalog.com/dan-gheesling/2013/07/3-ways-using-a-divide-and-conquer-strategy-can-solve-your-problems/](https://thoughtcatalog.com/dan-gheesling/2013/07/3-ways-using-a-divide-and-conquer-strategy-can-solve-your-problems/){% endcapture %}
{% include algo.html %}