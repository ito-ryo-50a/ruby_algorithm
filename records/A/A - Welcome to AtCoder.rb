# https://atcoder.jp/contests/practice/tasks/practice_1

#　リファクタリングしたコード
a = gets.chomp.to_i
b, c = gets.split.map(&:to_i)
s = gets.chomp
puts "#{a + b + c} #{s}"


# ACしたコード
# map{ |value| value.to_i } と　　map(&:to_i)　は同じ内容
number_a = gets.chomp.to_i
number_b, number_c = gets.split.map(&:to_i)
string_a = gets.chomp
puts "#{number_a + number_b + number_c} #{string_a}"
