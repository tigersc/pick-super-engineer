#function pick_engineer will random name of engineer from "engineers.txt"
def pick_engineer()
	#initial array engineer to store each text line => engineer's name 
	engineer = Array.new()
	engineer = File.readlines("engineers.txt") 
	
	#random engineer's name 
	engineer[rand(engineer.length)] 
end

puts pick_engineer()
