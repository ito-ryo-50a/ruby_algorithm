# https://atcoder.jp/contests/abc348/tasks/abc348_a

#　リファクタリングしたコード
N = gets.to_i
result = "o" * N
len = result.length
i = 0
while i < len do
  result[i] = "o"
  result[i + 1] = "o" if i + 1 < len
  result[i + 2] = "x" if i + 2 < len
  i += 3
end
puts result


# ACしたコード
N = gets.to_i
result = "o" * N
len = result.length
i = 0
while i < len do
  result[i] = "o"
  result[i+1] = "o" if i+1 < len
  result[i+2] = "x" if i+2 < len
  i += 3
end
puts result
