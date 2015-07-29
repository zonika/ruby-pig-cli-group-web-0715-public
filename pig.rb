#pig class
class Pig

def initialize
  @dice_val = 0
  @score = 0
  roll
end

#roll method
def roll
  @dice_val = rand(1..6)
  puts @dice_val
  evaluator 
end


#roll evaluator, with counter
def evaluator
  if @dice_val == 1
    game_over
  else
    @score += @dice_val 
    puts "Your score is #{@score}. \n Would you like to roll or hold?"
    answer = gets.chomp.downcase
      if answer == 'roll'
        roll
      else 
        game_over
      end
  end
end


#game over
def game_over
  if @dice_val == 1
    puts "You lose and have no points"
  else 
    puts "You have #{@score}"
  end
end
end #ends class

game = Pig.new

