# https://atcoder.jp/contests/abc064/tasks/abc064_a

#　リファクタリングしたコード
r, g, b = gets.split.map(&:to_i)
res = "#{r}#{g}#{b}".to_i
res % 4 == 0 ? (puts "YES") : (puts "NO")


# ACしたコード
r, g, b = gets.split.map(&:to_i)
res = "#{r}#{g}#{b}".to_i
if res % 4 == 0
  puts "YES"
else
  puts "NO"
end
