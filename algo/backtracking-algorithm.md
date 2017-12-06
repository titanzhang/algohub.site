---
layout: algo
index: true
comments: true
title: Backtracking Algorithm
tags:
  - Search
modifier: xguo@cpp.edu
modtime: '2017-12-06T00:24:48.882Z'

---
{% capture section_desc %}Backtracking is a general algorithm for finding all (or some) solutions to some computational problems, notably constraint satisfaction problems, that incrementally builds candidates to the solutions, and abandons each partial candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution.{% endcapture %}
{% capture section_complexity %}If we just find a solution for the N x N puzzle, the complexity is O(N)
If we add all this up and define the run time as T(N).  By the definition of Big O, this can be reduced to O(n!) running time. The complexity is O(N!).{% endcapture %}
{% capture section_pseudocode %}Input : N
Output : A placement of N "queens" on an N x N chessboard such that no two queens lie on the same row, column or diagonal.
The problem is to place n queens on an n x n chessboard, so that no two queens can attack each other
RecursiveNQueens(Q[1 .. n],r): 
	if r = n + 1 
		print Q 
	else 
		for j ← 1 to n 
					legal ← True 
		for i ← 1 to r − 1 
				if (Q[i] = j) or (Q[i] = j + r − i) or (Q[i] = j − r + i) 
					legal ← False
				if legal 
	Q[r] ← j 
RecursiveNQueens(Q[1 .. n],r + 1){% endcapture %}
{% capture section_edu %}N queens backtracking algorithm:
{% youtube https://youtu.be/0DeznFqrgAI %}
{% endcapture %}
{% capture section_app %}N-Queens itself is only a toy problem; it’s the methods for solving it that you’re supposed to be learning. Because it’s an easily-understood but nontrivial problem, it can demonstrate not just the “standard” solution with backtracking but also techniques such as search space reduction using symmetry, constraint programming, or evolutionary algorithms. All of these methods are broadly applicable.{% endcapture %}
{% include algo.html %}
