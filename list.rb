#list.rb   

# 1. Need to create a representation of a Node (or Vertex).
# 2. Write a method 'add_to_tail' that appends a new value to the end.
# 3. Write a method 'length' that returns the length of a list. 
# 4. Override the 'to_s' method to nicely print the list. 
# 5. Write a function 'remove' to remove a node from the list. 


class Node
	attr_reader :val, :next

	def initialize(val)
		@val = val
		@next = nil      
	end

	def add_to_tail(val)
		if @next == nil
			@next = Node.new(val)
		else
			@next.add_to_tail(val)
		end
	end

	def to_s
		if @next == nil	
		@val
		else
		"#{@val} #{@next}"
		end
	end

	def length
		if @next == nil
			1
		else
			@next.length + 1
		end
	end

	def remove(val)
		
		if @val == val
			@val
			# @next = @next.next
			# @val.next
		else
			@next.remove(val)
		end
	end
end



head = Node.new("f")
head.add_to_tail("o")
head.add_to_tail("g")
head.add_to_tail("g")
head.add_to_tail("y")

puts head.length
puts head.remove("o")
puts head.to_s
# def fun
# 	if blah
# 		puts "having fun"
# 		fun()
# 	else	
# 		"hi"
# 	end
# end
# fun()

# def factorial n 
# 	if n == 1
# 		1
# 	else
# 		n*factorial(n-1)
# 	end
# end

# puts factorial 5

# letter_o = {
# 	val: "o",
# 	next: letter_g
# }

# letter_d = {
# 	val: "d",
# 	next: letter_o
# }

# letter_g = {
# 	val: "g",
# 	next: nil
# }