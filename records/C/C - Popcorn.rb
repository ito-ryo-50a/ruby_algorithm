# https://atcoder.jp/contests/abc358/tasks/abc358_c


#　リファクタリングしたコード



# ACしたコード

N, M = gets.split.map(&:to_i)
S = []
N.times { S << gets.chomp }
binary_strings = S.map { |s| s.tr('ox', '10').to_i(2) }
(1..N).each do |i|
  (0...N).to_a.combination(i).each do |comb|
    combined = 0
    comb.each { |index| combined |= binary_strings[index] }
    if combined.to_s(2).count('1') == M
      puts i
      exit
    end
  end
end
puts -1
