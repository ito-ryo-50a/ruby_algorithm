# https://atcoder.jp/contests/abc354/tasks/abc354_a


#　リファクタリングしたコード
n = gets.to_i
h = 0
d = 0
while h <= n do
  h = (2 * h) + 1
  d += 1
end
puts d

# ACしたコード
n = gets.to_i
h = 0
d = 0
while h <= n do
  h = (2*h) + 1
  d += 1
end
puts d
