divide = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)

S = gets.chomp.reverse

can = true
i = 0

while i < S.size
  can2 = false
  divide.each do |d|
    if S[i, d.size] == d
      can2 = true
      i += d.size
      break
    end
  end
  unless can2
    can = false
    break
  end
end

puts can ? "YES" : "NO"
