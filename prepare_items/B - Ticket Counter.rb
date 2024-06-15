#　https://atcoder.jp/contests/abc358/tasks/abc358_b


#　リファクタリングしたコード


# ACしたコード
N, A = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
new = []
tmp = 0
(0...N).each do |i|
  if i == 0 || arr[i] == tmp
    new.push(arr[i] + A)
    tmp = (arr[i] + A)
  elsif arr[i] > tmp
    new.push(arr[i] + A)
    tmp = (arr[i] + A)
  elsif arr[i] < tmp
    new.push(new[i - 1] + A)
    tmp = (arr[i] + A)
  end
end
puts new.join(' ')
