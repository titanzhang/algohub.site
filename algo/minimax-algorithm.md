---
layout: algo
index: true
comments: true
title: MiniMax Algorithm
tags:
  - Tree
  - Game
modifier: sudarshang07@gmail.com
modtime: '2017-12-06T03:33:04.467Z'

---
{% capture section_desc %}# Minimax: Basic Concept
Minimax is a recursive algorithm which is used to choose an optimal move for a player assuming that the other player is also playing optimally. It is used in games such as tic-tac-toe, go, chess, isola, checkers, and many other two-player games. Such games are called games of perfect information because it is possible to see all the possible moves of a particular game. There can be two-player games which are not of perfect information such as Scrabble because the opponent's move cannot be predicted.

It is similar to how we think when we play a game: "if I make this move, then my opponent can only make only these moves,” and so on.

Minimax is called so because it helps in minimizing the loss when the other player chooses the strategy having the maximum loss.

## Terminology
Game Tree: It is a structure in the form of a tree consisting of all the possible moves which allow you to move from a state of the game to the next state.
A game can be defined a search problem with the following components:

* Initial state: It comprises the position of the board and showing whose move it is.
* Successor function: It defines what the legal moves a player can make are.
* Terminal state: It is the position of the board when the game gets over.
* Utility function: It is a function which assigns a numeric value for the outcome of a game. For instance, in chess or tic-tac-toe, the outcome is either a win, a loss, or a draw, and these can be represented by the values +1, -1, or 0, respectively. There are games that have a much larger range of possible outcomes; for instance, the utilities in backgammon varies from +192 to -192. A utility function can also be called a payoff function.

## Example:
Consider a game which has 4 final states and paths to reach final state are from root to 4 leaves of a perfect binary tree as shown below. Assume you are the maximizing player and you get the first chance to move, i.e., you are at root, and your opponent at next level. Which move you would make as a maximizing player considering that your opponent also plays optimally?


![](http://www.geeksforgeeks.org/wp-content/uploads/Game-Theory-Minimax-Algorithm.png)

Since this is a backtracking based algorithm, it tries all possible moves, then backtracks and makes a decision.

* Maximizer goes LEFT : It is now the minimizers turn. The minimizer now has a choice between 3 and 5. Being the minimizer it will definitely choose the least among both, that is 3
* Maximizer goes RIGHT : It is now the minimizers turn. The minimizer now has a choice between 2 and 9. He will choose 2 as it is the least among the two values.

Being the maximizer you would choose the larger value that is 3. Hence the optimal move for the maximizer is to go LEFT and the optimal value is 3.

Now the game tree looks like below :
![](http://www.geeksforgeeks.org/wp-content/uploads/Game-Theory-Minimax-Algorithm1.png)

The above tree shows two possible scores when maximizer makes left and right moves.

Note : Even though there is a value of 9 on the right sub tree, the minimizer will never pick that. We must always assume that our opponent plays optimally.{% endcapture %}
{% capture section_complexity %}## Time complexity? 

   **O(bm)**

## Space complexity? 

   **O(bm) (depth-first exploration)**
{% endcapture %}
{% capture section_pseudocode %}# Pseudocode:

    function minimax(node, depth, maximizingPlayer)
        if depth = 0 or node is a terminal node
         return the heuristic value of node

     if maximizingPlayer
         bestValue := −∞
         for each child of node
             v := minimax(child, depth − 1, FALSE)
             bestValue := max(bestValue, v)
         return bestValue

     else    (* minimizing player *)
       bestValue := +∞
         for each child of node
             v := minimax(child, depth − 1, TRUE)
             bestValue := min(bestValue, v)
         return bestValue
				 
(* Initial call for maximizing player *)
minimax(origin, depth, TRUE){% endcapture %}
{% capture section_edu %}# Video Tutorial of Minimax Algorithm
{% youtube <https://www.youtube.com/watch?v=zDskcx8FStA> %}{% endcapture %}
{% capture section_app %}MiniMax Algorithm is used in decision theory, game theory, statistics and philosophy for minimizing the possible loss for a worst case (maximum loss) scenario.

{% endcapture %}
{% include algo.html %}