N = gets.to_i
a = gets.split.map(&:to_i)
s_a = a.sort! {|a,b| a.to_i <=> b.to_i }.reverse
alice = 0
bob = 0
s_a.each_with_index do |num, index|
  if index == 0 || index % 2 == 0
    alice += num
    else
      bob += num
  end
end
puts alice - bob




N = gets.to_i
a = gets.split.map(&:to_i)

s_a = a.sort.reverse

alice = 0
bob = 0

s_a.each_with_index do |num, index|
  if index.even?
    alice += num
  else
    bob += num
  end
end

puts alice - bob
