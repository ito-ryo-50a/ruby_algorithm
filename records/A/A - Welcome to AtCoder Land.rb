#　https://atcoder.jp/contests/abc358/tasks/abc358_a


#　リファクタリングしたコード
S, T = gets.split
if S == "AtCoder" && T == "Land"
  puts "Yes"
else
  puts "No"
end

# ACしたコード
S, T = gets.split.map(&:to_i)
if S == "AtCoder" && T == "Land"
  puts "Yes"
else
  puts "No"
end
