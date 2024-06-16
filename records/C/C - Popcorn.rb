# https://atcoder.jp/contests/abc358/tasks/abc358_c


#　リファクタリングしたコード


# ACしたコード

# 入力を読み取る
N, M = gets.split.map(&:to_i)
S = []
N.times { S << gets.chomp }

# 各文字列を'1'と'0'に変換し、整数に変換する
binary_strings = S.map { |s| s.tr('ox', '10').to_i(2) }

# 各変数の初期状態を出力
puts "N: #{N}, M: #{M}"
puts "S: #{S.inspect}"
puts "binary_strings: #{binary_strings.inspect}"

# 最小の組み合わせを探す
(1..N).each do |i|
  puts "i: #{i}"
  # i個の行を選ぶ組み合わせを全て試す
  (0...N).to_a.combination(i).each do |comb|
    combined = 0
    puts "  comb: #{comb.inspect}"
    # 選んだ行のORを計算する
    comb.each do |index|
      combined |= binary_strings[index]
      puts "    index: #{index}, combined: #{combined.to_s(2)}"
    end
    # 全ての列がカバーされているかチェック
    covered_bits = combined.to_s(2).count('1')
    puts "  combined (binary): #{combined.to_s(2)}, covered_bits: #{covered_bits}"
    if covered_bits == M
      puts "最小の組み合わせ: #{i}"
      exit
    end
  end
end

# カバーできない場合
puts -1
