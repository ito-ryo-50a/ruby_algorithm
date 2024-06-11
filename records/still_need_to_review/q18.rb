# 入力の受け取り
H, W = gets.split.map(&:to_i)
N, M = gets.split.map(&:to_i)

# 反転パターンの読み込み
pattern = []
N.times do
  pattern << gets.chomp.chars
end

# スイッチを押す位置の読み込み
Q = gets.to_i
switches = []
Q.times do
  x, y = gets.split.map(&:to_i)
  switches << [x - 1, y - 1]  # 0-indexed に変換
end

# 画面の初期化
screen = Array.new(H) { Array.new(W, '_') }

# 画面の反転処理
switches.each do |x, y|
  N.times do |i|
    M.times do |j|
      if pattern[i][j] == '#'
        screen[y + i][x + j] = screen[y + i][x + j] == '_' ? '#' : '_'
      end
    end
  end
end

# 結果の出力
screen.each do |row|
  puts row.join
end
