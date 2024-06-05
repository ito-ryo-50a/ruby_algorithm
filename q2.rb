# 1回目
a, b = gets.split.map(&:to_i)
if (a * b) % 2 == 0
  puts "Even"
else
  puts "Odd"
end

# 2回目
a, b = gets.split.map(&:to_i)
puts (a * b).even? ? "Even" : "Odd"

# 三項演算子を使用することで簡潔に記述でき、かつ実行時間が大幅に改善された。
# 代わりにメモリの使用量は増加した。



