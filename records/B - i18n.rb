# https://atcoder.jp/contests/abc069/tasks/abc069_b

#　リファクタリングしたコード
s = gets.chomp
puts "#{s[0]}#{s.length - 2}#{s[-1]}"

# ACしたコード
s = gets.chomp
i, n = s[0], s[-1]
s = s.length - 2
puts "#{i}#{s}#{n}"
