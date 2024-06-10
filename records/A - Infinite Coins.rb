# https://atcoder.jp/contests/abc088/tasks/abc088_a

#　リファクタリングしたコード
#　冗長なため修正したい
n, a = gets.to_i, gets.to_i
puts n % 500 <= a ? "Yes" : "No"

# ACしたコード
n = gets.to_i
a = gets.to_i
num = n % 500
num <= a ? (puts "Yes") : (puts "No")
