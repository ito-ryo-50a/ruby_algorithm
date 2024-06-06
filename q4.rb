n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
while a.all? { |num| num.even? } do
  a = a.map { |num| num / 2 }
    count += 1
end
puts count
# allメソッドは配列内全ての要素がtrueの時にtrueを返すメソッド




n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
count += 1 while a.all? { |num| num.even? } && (a.map! { |num| num / 2 })
puts count
