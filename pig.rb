#pig class
class Pig

def initialize
  @dice_val = 0
  @p1score = 0
  @p2score = 0
  @current_player = 'Human'
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
  if @dice_val == 1 && @current_player == 'Human'
    @p1score = 0
    game_over
  elsif 
     @dice_val == 1 && @current_player == 'Computer'
     @p2score = 0
     game_over
  else
    if @current_player == 'Human'
      @p1score += @dice_val 
      puts "Your score is #{@p1score}. \n Would you like to roll or hold?"
      answer = gets.chomp.downcase
        if answer == 'roll'
          roll
        else 
          @current_player = 'Computer'
          roll
        end
    else @p2score += @dice_val
      choice = rand(0..1)
      puts "Computer's score is #{@p2score}."
        if choice == 0
          puts "Computer holds"
          @current_player = 'Human'
          roll
        else 
          puts "Computer rolls"
          roll
        end
    end
  end
end


#game over
def game_over
    puts "Human, your score #{@p1score}. Computer, your score is #{@p2score}."
end
end #ends class

game = Pig.new

