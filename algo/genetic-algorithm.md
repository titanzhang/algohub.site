---
layout: algo
index: true
comments: true
title: Genetic Algorithm
tags:
  - Search
modifier: ytsou@cpp.edu
modtime: '2017-12-06T19:02:19.885Z'

---
{% capture section_desc %}Genetic algorithm is inspired by the process of natural selection. It is commonly used to generate high-quality solutions to optimization and search problems. It can be separated into five steps as follow:![](https://www.neuraldesigner.com/images/blog/genetic_algorithm.png)
1. Initialization: Initially define N is the size of the population, and generate N random solution for the problem. 
2.  Fitness Function Calculation: The fitness function defines how good the solution is. It takes a problem candidate solution as input and calculates its fitness value as output.
3. Parent Selection: Every individual can become a parent with a probability which is proportional to its fitness. Therefore, the individuals which have a higher fitness score will have a higher chance of mating and propagating their features to the next generation.
4. Crossover: Crossover is a process of taking more than one parent solution and producing a child solution from them. 
5. Mutation: In simple terms, mutation may be defined as a small random tweak in the chromosome to get a new solution. It is usually applied with a low probability Pm.

Set termination conditions of a Genetic Algorithm determine when the algorithm will end. We want a termination condition such that our solution is close to the optimal in the end. Usually, we keep one of the following conditions: 

1. When there has been no improvements in the population. 
2. When we reach an absolute number of generations. 
3. When the objective function value has reached a certain predefined value.{% endcapture %}
{% capture section_complexity %}* Time complexity for Genetic Algorithm is: O(P * G * O(Fitness) * ((Pc* O(crossover)) + (Pm * O(mutation))))
P(Population size ), G(number of Generations), Pc(Crossover probability ), and Pm(Mutation probability )

* The complexity is relative to the number of items, the number of generations and the computation time per generation. 
If P, G, Pc, and Pm are constant the complexity can simplifies to O( O(Fitness) * (O(mutation) + O(crossover)))

* Space complexity for Genetic Algorithm is: Current population size + New population size.{% endcapture %}
{% capture section_pseudocode %}```
GA()
   initialize population
   
   while (termination criteria is reached)
   do
      find fitness of population
      parent selection
      crossover with probability pc
      mutation with probability pm
      decode and fitness calculation
      survivor selection
      find best
   return best
```{% endcapture %}
{% capture section_edu %}Something about how to teach this algorithm.
Here is a video tutorial for introduce Genetic Algorithm ( 30 videos in playlist ):
{% youtube https://www.youtube.com/watch?v=I2heTejQP58&list=PLea0WJq13cnARQILcbHUPINYLy1lOSmjH %}{% endcapture %}
{% capture section_app %}| Domains | Application types |
| -------- | -------- |
|Control| Gas pipeline, pole balancing, missile evasion pursuit|
|Robotics|Trajectory planning |
|Signal Processing|Filter design|
|Game Playing|Poker, checker, prisoner’s dilemma|
|Scheduling|Manufacturing facility, scheduling, resource allocation|
|Design|Semiconductor layout, aircraft design, communication network|
|Combinatorial Optimization|travelling salesmen, routing, bin packing|{% endcapture %}
{% include algo.html %}