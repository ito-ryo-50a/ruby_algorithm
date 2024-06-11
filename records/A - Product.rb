
# https://atcoder.jp/contests/abc086/tasks/abc086_a

#　リファクタリングしたコード
a, b = gets.split.map(&:to_i)
puts (a * b).even? ? "Even" : "Odd"


# ACしたコード
a, b = gets.split.map(&:to_i)
if (a * b) % 2 == 0
  puts "Even"
else
  puts "Odd"
end
