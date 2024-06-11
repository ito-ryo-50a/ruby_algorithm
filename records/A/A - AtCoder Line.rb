# https://atcoder.jp/contests/abc352/tasks/abc352_a

#　リファクタリングしたコード
N, X, Y, Z = gets.split.map(&:to_i)
puts (Z < X && Z > Y) || (Z > X && Z < Y) ? "Yes" : "No"


# ACしたコード
N, X, Y, Z = gets.split.map(&:to_i)
if Z < X && Z > Y || Z > X && Z < Y
  puts "Yes"
else
  puts "No"
end
