#function pick_engineer will random name of engineer from "engineers.txt"
def pick_engineer()
	#initial array engineer to store each text line => engineer's name 
	engineer = Array.new()
	engineer = File.readlines("engineers.txt") 
	
	#random engineer's name 
	engineer[rand(engineer.length)] 
end

def featureA(engineer)
	#initial array subname to store each sub name => firstname midname surname  
	sub = Array.new()
	sub = engineer.split(' ')

	#initial string a to store dot style 
	a = ""
	sub.each do |n|
		if n == sub.last
			a = a + n				 
			break
		end
		a = a + n + '.'
	end
	
	return a
end

name = pick_engineer()
puts "1. %s" % [name]

name = featureA(name)
puts "2. %s" % [name]
