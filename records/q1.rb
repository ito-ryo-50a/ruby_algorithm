number_a = gets.chomp.to_i
numbers = gets.split.map(&:to_i)
number_b = numbers[0]
number_c = numbers[1]
string_a = gets.chomp
culculate_number = number_a + number_b + number_c
p culculate_number
puts string_a




number_a = gets.chomp.to_i
number_b, number_c = gets.split.map(&:to_i)
string_a = gets.chomp
puts "#{number_a + number_b + number_c} #{string_a}"

# map{ |value| value.to_i } と　　map(&:to_i)　は同じ内容




a = gets.chomp.to_i
b, c = gets.split.map(&:to_i)
s = gets.chomp
puts "#{a + b + c} #{s}"