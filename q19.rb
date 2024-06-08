module SequenceExtensions
  def reverse_in_range!(*args)
    self[*args] = self[*args].reverse
    self
  end
end

Array.include(SequenceExtensions)

N, L, R = gets.split.map(&:to_i)

a = (1..N).to_a  # より簡潔に配列を初期化

l = L - 1
r = R - 1

if l != r
  a.reverse_in_range!(l..r)
end

puts a.join(' ')  # 空白区切りで1行に出力


module SequenceExtensions
  def reverse_in_range!(*args)
    self[*args] = self[*args].reverse!
    self
  end
end

Array.include(SequenceExtensions)

N, L, R = gets.split.map(&:to_i)

i = 1
num = 0
a = []

for num in 1..N do
  a << i
  i += 1
  num += 1
end

l = L - 1
r = R - 1

if l == r
  a.each do |a|
  end
else
  a = a.reverse_in_range!(l..r)
  a.each do |a|
  end
end
puts a.join(' ')
