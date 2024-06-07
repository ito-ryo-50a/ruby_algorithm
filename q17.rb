N, l = gets.split.map(&:to_i)
e = readlines.map(&:chomp).map(&:to_i)
n = 0
while n < N do
    if l > e[n]
        l += (e[n]/2)
    elsif l < e[n]
        l = (l/2)
    end
    n += 1
end
puts l




N, l = gets.split.map(&:to_i)
e = readlines.map(&:chomp).map(&:to_i)
N.times do |n|
  l = if l > e[n]
        l + e[n] / 2
      elsif l < e[n]
        l / 2
      else
        l
      end
end
puts l
