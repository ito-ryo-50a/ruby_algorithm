# https://atcoder.jp/contests/abc157/tasks/abc157_a

#　リファクタリングしたコード
n = gets.to_i
res = (n + 1) / 2
puts res


# ACしたコード
n = gets.to_i
res = 0
if n % 2 == 0
  res = (n / 2)
  puts res
else
  res = (n / 2 + 1)
  puts res
end
