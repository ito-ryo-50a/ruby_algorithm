N, Y = gets.split.map(&:to_i)
result_x = -1
result_y = -1
result_z = -1
(0..N).each do |x|
  (0..(N - x)).each do |y|
    z = (N - x - y)
    total = 10000 * x + 5000 * y + 1000 * z
    if total == Y
      result_x = x
      result_y = y
      result_z = z
      break
    end
  end
end
puts "#{result_x} #{result_y} #{result_z}"




N, Y = gets.split.map(&:to_i)

result = [-1, -1, -1]

(0..N).each do |x|
  found = false
  (0..(N - x)).each do |y|
    z = N - x - y
    if 10000 * x + 5000 * y + 1000 * z == Y
      result = [x, y, z]
      found = true
      break
    end
  end
  break if found
end

puts result.join(' ')





N, Y = gets.split.map(&:to_i)

result = [-1, -1, -1]

catch(:done) do
  (0..N).each do |x|
    (0..(N - x)).each do |y|
      z = N - x - y
      if 10000 * x + 5000 * y + 1000 * z == Y
        result = [x, y, z]
        throw :done
      end
    end
  end
end

puts result.join(' ')
