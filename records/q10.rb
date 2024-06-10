A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
result = 0
(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      total = 500 * a + 100 * b + 50 * c
      result += 1 if total == X
    end
  end
end
