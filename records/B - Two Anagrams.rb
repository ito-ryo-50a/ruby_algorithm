# https://atcoder.jp/contests/abc082/tasks/abc082_b


#　リファクタリングしたコード、こちらの方がメモリは使用してしまうが実行時間が短い
s1 = gets.chomp.chars.sort.join
t1 = gets.chomp.chars.sort.reverse.join
s1 < t1 ? (puts "Yes") : (puts "No")


# ACしたコード
s1 = gets.chomp.chars.sort.join
t1 = gets.chomp.chars.sort.reverse.join
s1 < t1 ? puts('Yes') : puts('No')
