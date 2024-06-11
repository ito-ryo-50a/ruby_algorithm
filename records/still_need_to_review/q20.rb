N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
count = 0
sum = 0
while sum <= M && count < N do
  sum += a[count]
  tmp = sum
  if tmp <= M
    count += 1
  end
end
puts count
