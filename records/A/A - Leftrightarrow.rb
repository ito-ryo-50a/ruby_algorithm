# https://atcoder.jp/contests/abc345/tasks/abc345_a


#　リファクタリングしたコード
s = gets.chomp
if s[0] == "<" && s[-1] == ">" && s[1..-2].chars.all? { |c| c == "=" }
  puts "Yes"
else
  puts "No"
end


# ACしたコード
s = gets.chomp.chars
res = "Yes"
if s.first != "<" || s.last != ">"
  res = "No"
else
  (1...s.length - 1).each do |i|
    if s[i] != "="
      res = "No"
      break
    end
  end
end
puts res
