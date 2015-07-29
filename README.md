# Group Programming Exercise

## Requirements

_At least one person must be plugged into the monitors!_

1. Build a Ruby program `pig.rb` that is a simple version of the dice game [Pig](https://en.wikipedia.org/wiki/Pig_(dice_game)). The rules are as follows:
  - Objective is to end game with highest score possible.
  - Player rolls a die.
  - If player rolls a 1, the game is over and the player's total score is 0.
  - If player rolls anything else, the value of the die is added to the player's total score.
  - After every turn, player is given the option to hold, and keep his/her total score.

2. Your program must have/utilize a method `roll_dice` that returns a random value between 1 and 6 (inclusive).

3. You'll want to use variables to keep track of the player's total score, the value of the last roll, and whether or not the player wants to hold.

4. Use `gets.chomp` or `gets.strip` for user input (to figure out whether the player wants to hold or continue).

5. Bonus (only work on these if you finish everything else!):
  - Support multiplayer or a computer player
  - Write tests!
  - Multiple "games" – first player to 100 wins
  - Be creative :) 
