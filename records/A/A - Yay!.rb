# https://atcoder.jp/contests/abc342/tasks/abc342_a


# リファクタリングしたコード


# ACしたコード
s = gets.chomp
(0...s.length - 1).each do |i|
  if s[i] != s[i + 1] && s[i] == s[i + 2]
    puts (i + 2)
    break
  elsif s[i] != s[i + 1] && s[i] != s[i + 2]
    puts (i + 1)
    break
  elsif s[i] == s[i + 1] && s[i] != s[i + 2]
    puts (i + 3)
    break
  end
end
