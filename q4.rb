# 1回目
n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
while a.all? { |num| num.even? } do
  a = a.map { |num| num / 2 }
    count += 1
end
puts count
# allメソッドは配列内全ての要素がtrueの時にtrueを返すメソッド

# 2回目
n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
count += 1 while a.all? { |num| num.even? } && (a.map! { |num| num / 2 })
puts count
# リファクタリングしたが、メモリ使用率が微増と実行時間が微減したのみだったため、あまり効果的ではないようだ。

