---
layout: algo
index: true
comments: true
title: Minimax
tags:
  - Search
modifier: 'false'
modtime: '2017-12-06T03:45:07.166Z'

---
{% capture section_desc %}The Minimax algorithm is a recursive depth-first-search algorithm that traverses an entire tree of depth d and branches b.
It is used in adversarial search to consider all possible outcomes of a next move looking at all possible future moves by all players. It considers each successive depth as the next players move, that player choosing the most optimal outcome from their perspective, and returning that move as chosen move.{% endcapture %}
{% capture section_complexity %}The time complexity for a  nodes is O(b^m){% endcapture %}
{% capture section_pseudocode %}function MINIMAX(state){
	return argmax MIN(RESULT(state, a))
}

function MAX(state){
	if TERMINALTEST(state)
		return UTILITY(state)
	v = −∞
	for each a in ACTIONS(state) do
		v =MAX(v, MIN(RESULT(s, a)))
	return v
}

function MIN(state){
	if TERMINALTEST(state)
		return UTILITY(state)
	v=∞
	for each a in ACTIONS(state) do
		v = MIN(v, MAX-VALUE(RESULT(s, a)))
	return v
}{% endcapture %}
{% capture section_edu %}This algorithm is a fundamental algorithm used in AI adversarial search. It is inefficient because is considers all possible moves even if they are irrelevant and can be ruled out. A more advanced search, alpha-beta, employs a technique to determine irrelevant searching and can prune the search.{% endcapture %}
{% capture section_app %}This search is used in games such as tic-tac-toe and connect 4.{% endcapture %}
{% include algo.html %}