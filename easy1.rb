=begin
what is != and where should you use it?
  not equal, use in either or
put ! before something, like !user_name
  turn any object into opposite of their boolean equivalent
put ! after something, like words.uniq!
  mutate caller usually bu5 not syntax, it is part of the name
put ? before something
 if else ternary operator
put ? after something
  not syntax, part of method name
put !! before something, like !!user_name
  gives boolean equivalent
=end

advice = ("Few things in life are as important as house training your pet dinosaur.")
#new_advice = advice.map {|x| x == 'important' ? 'urgent' : x}
#puts new_advice
puts advice.gsub!('important', 'urgent')

# .delete_at() deletes an elelment of an array at an index
# .delete() deletes the element specified

range = Range.new(10,100)
puts range.include?(42)
puts (10..100).cover?(42)

famous_words = "seven years ago..."
puts "Four score and #{famous_words}"
puts "Four score and " + famous_words
puts famous_words.prepend("Four score and ")

puts "Four score and " << famous_words


# eval(how_deep) = '"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# actually equal 42 eval is calling the method 5.times how_deep was set to 
