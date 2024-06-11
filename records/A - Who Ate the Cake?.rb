# https://atcoder.jp/contests/abc355/tasks/abc355_a

#　リファクタリングしたコード
#　case文でもきれいに実装可能ですが、実行時間が倍くらいかかるため不採用
a = gets.split.map(&:to_i)
if a.include?(1) && a.include?(2)
  puts 3
elsif a.include?(1) && a.include?(3)
  puts 2
elsif a.include?(2) && a.include?(3)
  puts 1
else
  puts -1
end


# ACしたコード
a = gets.split.map(&:to_i)
if [1,2].all? {|i|a.include?(i)}
  puts 3
elsif [1,3].all? {|i|a.include?(i)}
  puts 2
elsif [2,3].all? {|i|a.include?(i)}
  puts 1
else
  puts -1
end
