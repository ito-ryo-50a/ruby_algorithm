
n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
a.each do |num|
  if num == 0
    count += 1
  end
end
puts count
