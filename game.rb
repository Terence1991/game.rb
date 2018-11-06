#require "./game.rb"
#require "./turn.rb"
require "./question.rb"

class Game 
  attr_reader :name, :turn
  attr_accessor :round


  def initialize
    @p1 = Player.new("Matt damon")
    @p2 = Player.new("Jimmy Kimel")

    @checkTrun = true; 

  end

  def start 
    while @p1.live > 0 && @p2.live > 0 do
      puts  "#{@p1.live} #{@p2.live}"  
      if @checkTurn == true 
        ## check turn is true
        question1 = Question.new(@p1, @p2)
        @checkTurn = false
      else 
        ## check turn is false 
        question1 = Question.new(@p2, @p1)
        @checkTurn = true
      end     
      question1.generateQuestion
    #  puts "#{@p1.live} #{@p2.live}"
    end
    
  end 


end



d = Game.new()
d.start