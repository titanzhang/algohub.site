---
layout: algo
index: true
comments: true
title: Backtracking Algorithm
tags:
  - Search
modifier: 'false'
modtime: '2017-12-05T23:54:08.009Z'

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
RecursiveNQueens(Q[1 .. n],r + 1)
{% endcapture %}
{% capture section_edu %}N queens backtracking algorithm:

{% https://youtu.be/0DeznFqrgAI %}{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}