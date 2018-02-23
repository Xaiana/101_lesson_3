#10.times { |number| puts (" " * number + "The Flintstones Rock!")}

#puts "the value of 40 + 2 is " + (40 + 2).to_s
#puts "the value of 40 + 2 is #{40 + 2}"

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

#puts factors(6)
#puts factors(87)

#Bonus 1 number % dividend == 0 is to make sure we only add integers to divisors
#Bonus 2 divisors on line 13 returns the array

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

=begin
array = [1, 2, 3, 4]
puts rolling_buffer1(array, 5, 8)
puts array
puts rolling_buffer2(array, 6, 8)
puts array
=end

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 23)
puts "result is #{result}"

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += " rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_arrayr = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

def mess_with_demographics(demo_hash)
  new_hash = demo_hash
  new_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
  new_hash
end
