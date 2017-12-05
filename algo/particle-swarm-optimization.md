---
layout: algo
index: true
comments: true
title: Particle Swarm Optimization
tags:
  - Optimization
  - NPHard
modifier: 'false'
modtime: '2017-12-05T10:25:47.410Z'

---
{% capture section_desc %}Particle swarm optimization is a population based stochastic optimization technique.
Inspired by social behaviour of bees, flocks of birds or schools of fish.
Potential solutions, called particles, are initialized at random positions and move within the parameter search space
Each evaluates objective function at its current location
Determines movement by combining history of its own best-fitness locations with those of other members of the swarm, with some random perturbations
Eventually, swarm is likely to move close to optimum of the fitness function.


{% endcapture %}
{% capture section_complexity %}It is NP-hard to find an optimal solution for multidimensional functions. So we need an algorithm to find optimal solution in polynomial time within a reasonable precision. Particle swarm optimization is a fast and simple algorithm that with slight modification is able to find at least locally optimal solutions. PSO is in a class of algorithms called Polynomial-time approximation schemes.
{% endcapture %}
{% capture section_pseudocode %}For each particle 
    Initialize particle
END

Do
    For each particle 
        Calculate fitness value
        If the fitness value is better than the best fitness value (pBest) in history
            set current value as the new pBest
    End

    Choose the particle with the best fitness value of all the particles as the gBest
    For each particle 
        Calculate particle velocity according equation (a)
        Update particle position according equation (b)
    End 
While maximum iterations or minimum error criteria is not attained{% endcapture %}
{% capture section_edu %}To understand the education of the system better it is easier to get to the "real" example.
Suppose the following scenario: a group of birds are randomly searching food in an area. There is only one piece of food in the area being searched. All the birds do not know where the food is. But they know how far the food is in each iteration. So what's the best strategy to find the food? The effective one is to follow the bird which is nearest to the food. 

PSO learned from the scenario and used it to solve the optimization problems. In PSO, each single solution is a "bird" in the search space. We call it "particle". All of particles have fitness values which are evaluated by the fitness function to be optimized, and have velocities which direct the flying of the particles. The particles fly through the problem space by following the current optimum particles. {% endcapture %}
{% capture section_app %}PSO used in a wide range of applications
Areas where PSO is used include:
1) Multimodal problems
2) Problems for which there is no specialized method available
3) Problems where all specialized methods give unsatisfactory results.
4) Seeing as the algorithm was based on natural phenomena, it is not surprising it appears in many natural settings
5) Humans ‘swarm’ in similar ways to birds and fish in some domains
6) Traffic
7) Shipping
8) Railway design
9) Essentially all transportation methods
10) Etc...
{% endcapture %}
{% include algo.html %}