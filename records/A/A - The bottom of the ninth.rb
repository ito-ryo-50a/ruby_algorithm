# https://atcoder.jp/contests/abc351/tasks/abc351_a

#　リファクタリングしたコード
#　下記のコードが検証した中で最速でした

# ACしたコード
A = gets.split.map(&:to_i).sum
B = gets.split.map(&:to_i).sum
puts (A - B) + 1
