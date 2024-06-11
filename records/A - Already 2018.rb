# https://atcoder.jp/contests/abc085/tasks/abc085_a


#　リファクタリングしたコード
puts gets.chomp.tap { |s| s[3] = "8" }

# ACしたコード
s = gets.chomp
s[3] = "8"
puts s
