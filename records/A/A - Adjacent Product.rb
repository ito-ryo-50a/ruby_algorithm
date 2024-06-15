# https://atcoder.jp/contests/abc346/tasks/abc346_a


#　リファクタリングしたコード
N = gets.to_i
arr = gets.split.map(&:to_i)
res = arr.each_cons(2).map { |a, b| a * b }
puts res.join(' ')


# ACしたコード
N = gets.to_i
arr = gets.split.map(&:to_i)
res = []
puts res
(0...N).each do |i|
  if i > 0
    res.push(arr[i] * arr[i-1])
  end
end
puts res.join(' ')
