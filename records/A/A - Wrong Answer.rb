# https://atcoder.jp/contests/abc343/tasks/abc343_a


# リファクタリングしたコード
A, B = gets.split.map(&:to_i)
C = (A + B)
puts (C < 9) ? (C + 1) : (C - 1)


# ACしたコード
A, B = gets.split.map(&:to_i)
C = A + B
if C < 9
  puts C + 1
else
  puts C - 1
end
