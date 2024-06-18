# https://atcoder.jp/contests/abc344/tasks/abc344_a


# リファクタリングしたコード
# chompメソッドを使うと空文字が消えてしまい実装要件を満たせないため注意

# ACしたコード
s = gets.split("|")
puts "#{s[0]}#{s[-1]}"
