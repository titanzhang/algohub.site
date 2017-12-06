---
layout: algo
index: true
comments: true
title: gradient descent
tags:
  - Optimization
modifier: 'false'
modtime: '2017-12-06T00:15:22.977Z'

---
{% capture section_desc %}Gradient descent is an optimization algorithm that is commonly used in machine learning. It takes in the training data, then fine-tune the parameter set of the training model by minimizing the error from lost function.{% endcapture %}
{% capture section_complexity %}Complexity depends on the number of iterations, which we can choose, or tolerance value of our choice. So it is linear of term of these 2 input. {% endcapture %}
{% capture section_pseudocode %}Input: f, starting value x1, termination tolerances
For t=1,2,…,maxIters:
Compute the search direction dt = -f(xt)
If ||dt||< εg then:	return “Converged to critical point”, output xt
Find t so that f(xt+t dt) < f(xt) using line search
If ||t dt||< εx then:	return “Converged in x”, output xt
Let xt+1 = xt+t dt
Return “Max number of iterations reached”, output xmaxIters
{% endcapture %}
{% capture section_edu %}Here is a detail description about gradient descent: https://en.wikipedia.org/wiki/Gradient_descent{% endcapture %}
{% capture section_app %}Gradient descent is widely used in machine learning, neural network architecture to optimize the weight set.{% endcapture %}
{% include algo.html %}