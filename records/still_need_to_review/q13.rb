N = gets.to_i
a = readlines
i = 0
while i < N
  a[i] = a[i].to_i
  i += 1
end
puts a.uniq.count



N = gets.to_i
a = readlines.map(&:to_i)
puts a.uniq.size
