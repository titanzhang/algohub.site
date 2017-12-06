---
layout: algo
index: true
comments: true
title: gradient descent
tags:
  - Approximation
modifier: 'True'
modtime: '2017-12-06T01:01:18.321Z'

---
{% capture section_desc %}Gradient descent is an optimization algorithm that is commonly used in machine learning. It takes in the training data, then fine-tune the parameter set of the training model by minimizing the error from lost function.{% endcapture %}
{% capture section_complexity %}Complexity depends on the number of iterations, which we can choose, or tolerance value of our choice. So it is linear of term of these 2 input. {% endcapture %}
{% capture section_pseudocode %}![](http://www.naduongonvision.net/img/gradient_descent_2.jpg){% endcapture %}
{% capture section_edu %}Here is a detail description about gradient descent: https://en.wikipedia.org/wiki/Gradient_descent{% endcapture %}
{% capture section_app %}Gradient descent is widely used in machine learning, neural network architecture to optimize the weight set.{% endcapture %}
{% include algo.html %}