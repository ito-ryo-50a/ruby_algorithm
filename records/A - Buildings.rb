# https://atcoder.jp/contests/abc353/tasks/abc353_a


#　リファクタリングしたコード
n = gets.to_i
a = gets.split.map(&:to_i)
res = a.find_index { |i| i > a[0] }
puts res ? res + 1 : -1


# ACしたコード
n = gets.to_i
a = gets.split.map(&:to_i)
res = -1
if a.index {|i| i > a[0]}
  res = (a.index {|i| i > a[0]}) + 1
end
puts res
