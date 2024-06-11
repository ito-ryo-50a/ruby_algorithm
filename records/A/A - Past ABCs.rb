# https://atcoder.jp/contests/abc350/tasks/abc350_a

#　リファクタリングしたコード
# Comparable#between
a = gets.chomp
num = a[3..5].to_i
res = "No"
if num != 316 && num.between?(1, 349)
  res = "Yes"
end
puts res


# ACしたコード
a = gets.chomp
num = a[3..5].to_i
tes = 001
res = "No"
(1..349).each do |i|
  if num == tes && num == 316
    res = "No"
    break
  elsif num == tes
    res = "Yes"
    break
  else
    tes += 1
  end
end
puts res
