# https://atcoder.jp/contests/abc349/tasks/abc349_a

#　リファクタリングしたコード
N = gets.to_i
array = gets.split.map(&:to_i)
puts (0 - array.sum)


# ACしたコード
N = gets.to_i
a = gets.split.map(&:to_i)
puts (0 - a.sum)
