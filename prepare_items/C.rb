#
#　リファクタリングしたコード
# ACしたコード

#!/usr/bin/env ruby
N, M = gets.split.map &:to_i
S = $<.map { _1.chomp.chars }
T = S.map { |s| s.map.with_index { |c, i| i if c == ?o }.compact }

ans = (1..N).bsearch do |i|
  flg = false
  [*0...N].combination(i).each do |rows|
    size = rows.inject([]) { |acc, row| acc | T[row] }.size
    break flg = true if size == M
  end
  flg
end

p ans



S = $<.read.split
N,M = S.shift(2).map &:to_i
H = {0=>0}
S.each {|s|
  b = s.tr('ox','10').to_i(2)
  H.keys.each {|k| v = H[k]+1; H[k|b] &.<= v or H[k|b]=v}
}
p H[2**M-1]



n, m = gets.chomp.split.map(&:to_i)
s = []
n.times { s << gets.chomp }
s.each { _1.tr!('o', '1') }
s.each { _1.tr!('x', '0') }
s.map! { _1.to_i 2 }
1.upto(n) do |i|
  s.combination(i).each do |x|
    b = 0
    x.each do |y|
      b |= y
      if b.to_s(2) == '1' * m
        puts i
        exit
      end
    end
  end
end


n, m = gets.split.map &:to_i
s = Array.new(n) {gets.chomp.chars.map {|i| i == 'o' ? '1' : '0'}.join('').to_i(2)}
puts (1..n).map {|i| (0...n).to_a.combination(i).any? {|c| (1 << m) - 1 == c.map {s[_1]}.inject(:|)} ? i : n + 1}.min



