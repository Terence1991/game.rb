require "./player.rb"
class Question 
  
  attr_accessor :value1, :value2 , :player, :player2

  def initialize(player, player2)
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @player = player
    @player2 = player2

  end

 


  def generateQuestion
    puts  "Hey #{@player.name} What is  #{@value1} + #{@value2}" 
    answer = @value1 + @value2
    userAnswer = gets.chomp
    if userAnswer == answer 
      puts " #{@player.name} seriously? No that is wrong"
      else
      puts "#{@player.name} you are wrong you suck"
      @player.live = @player.live - 1
      puts "#{@player.name} your lives are at #{@player.live} and #{player2.name} lives is #{player2.live}"
      puts "---------newturn-----------"
  end 
end  


end


# ##puts
# p1 = Player.new("Matt damon")
# p2 = Player.new("Jimmy Kimel")
# puts p1.name
# puts p2.name
# question1 = Question.new(p1, p2)

# question1.generateQuestion
# question2.generateQuestion