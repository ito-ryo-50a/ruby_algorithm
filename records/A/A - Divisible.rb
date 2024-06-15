# https://atcoder.jp/contests/abc347/tasks/abc347_a

#　リファクタリングしたコード
#　array#selectでdivisorで割り切れる要素を取得
length, divisor = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
result = arr.select { |num| num % divisor == 0 }.map { |num| num / divisor }
puts result.join(' ')

# ACしたコード
len, num = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
new = []
(0...len).each do |i|
  if arr[i] % num == 0
    new.push(arr[i] / num)
  end
end
puts new.join(' ')
