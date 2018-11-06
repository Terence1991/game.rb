class Player
attr_reader :name 
attr_accessor :live

def initialize(name)
  @live = 3
  @name = name
end 

end



p1 = Player.new("Matt damon")
p2 = Player.new("Jimmy Kimel")
puts p1.name
puts p2.name