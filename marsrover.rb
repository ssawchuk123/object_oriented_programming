class Rover

	def initialize(x, y, dir)
 		@x = x
 		@y = y
 		@dir = @dir
 		@dir = ["N", "E", "S", "W"]
 	end

 	def read_instructions(instruc)

 		if instruc == "L"
 			turn (-1)
 		elsif instrc == "R"
 			turn (1)
 		elsif instruc == "M"
 			move
 		end

 end

 def move

 	if @dir == "N"
 		@y += 1
 	elsif @dir == "E"
 		@x += 1
 	elsif @dir == "S"
 		@x += 1
 	elsif @dir == "W"
 		@x += 1
 	end

end

def turn 
	pos = @dir.index(@dir)
	@dir = @dir.rotate!
end

def to_s
	"Rover move: #{x} #{y} #{direction}"

end

# User inputs the move info for the rover

puts "Please select where the rover will begin on the grid:"
input = gets.chomp.split(" ")

rover = Rover.new(input[0].to_i, input[1].to_i, input[2].to_s.upcase)

puts "Enter your move instructions for the rover:"
rover_instruc = gets.chomp

# Read instructions

rover_instruc.each_char do |c|
	rover.read_instructions(c)
end

end