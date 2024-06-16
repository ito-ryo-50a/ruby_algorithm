#　https://atcoder.jp/contests/abc358/tasks/abc358_b


#　リファクタリングしたコード
N, A = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
new_arr = []
tmp = 0
arr.each_with_index do |val, i|
  if i == 0 || val >= tmp
    tmp = val + A
  else
    tmp = new_arr.last + A
  end
  new_arr << tmp
end
puts new_arr.join(' ')


# ACしたコード
N, A = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
new_arr = []
tmp = 0
(0...N).each do |i|
  if i == 0 || arr[i] == tmp
    new_arr.push(arr[i] + A)
    tmp = (arr[i] + A)
  elsif arr[i] > tmp
    new_arr.push(arr[i] + A)
    tmp = (arr[i] + A)
  elsif arr[i] < tmp
    new_arr.push(new[i - 1] + A)
    tmp = (arr[i] + A)
  end
end
puts new_arr.join(' ')
